package com.zyj.util;

import java.lang.reflect.Field;
import java.util.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 通过反射构建接口返回的参数
 * @author fenglij
 * @version 1.0
 * */
public class FieldsUtil {
	
	/**
	 * 通过属性名称获取属性值
	 * @param array  
	 *     array格式："{'接口属性:POJO属性','接口属性:POJO属性',...}"  "{'user_id:userId','home_id:homeId',...}"
	 *     如果 接口属性 和 POJO属性 一致，则直接"{'id', 'name'}"
	 * @param list
	 * 
	 * @return returnList
	 * */
	public static <T> List<Map<String, Object>> getData(String[] array, List<T> list){
		List<Map<String, Object>> returnList = new ArrayList();
		
		try{
			// 循环List
			for(T object: list){
				if(object==null)
					continue;
				
				Map<String, Object> map = getObjectFields(array, object);
				
				returnList.add(map);
			}
		}catch(Exception e){
			System.out.println("=================通过字符串获取属性值失败.STEP:1=================");
			e.printStackTrace();
		}
		
		return returnList;
		
	}
	
	/**
	 * 通过属性名称获取属性值
	 * @param array  
	 *     array格式："{'接口属性:POJO属性','接口属性:POJO属性',...}"  "{'user_id:userId','home_id:homeId',...}"
	 *     如果 接口属性 和 POJO属性 一致，则直接"{'id', 'name'}"
	 * @param object
	 * 
	 * @return map 
	 * */
	public static <T> Map<String, Object> getObjectFields(String[] array, T object){
		Map<String, Object> map = new HashMap();
		
		try{
			Class clazz = object.getClass();
			Field[] fields = clazz.getDeclaredFields();  // 获取属性对象集合
			
			for(Field field: fields){
				field.setAccessible(true);           // 设置属性是可以访问
				String fieldName = field.getName();  // 获取属性名称
				String fieldType = field.getGenericType().toString();  // 属性类型
				Object fieldValue = field.get(object);  // 属性值
				
				Object converFiledValue = convertFieldValue(fieldType, fieldValue);  // 获取转换后的属性值
				
				for(String str: array){
					
					String key = str;           // 返回的map的key
					String property = str;      // 对象的属性
					if(str.indexOf(":")!=-1){   // 如果数组元素包含":"，则用":"分割字符串，并使用第一个值作为map的key
						key = str.split(":")[0];
						property = str.split(":")[1];
					}
					
					if(property.equals(fieldName)){
						map.put(key, converFiledValue);  // 将属性值作为value放入map
					}
				}
			}
		}catch(Exception e){
			System.out.println("=================通过字符串获取属性值失败.STEP:2=================");
			e.printStackTrace();
		}
		
		return map;
	}
	
	public static Object convertFieldValue(String fieldType, Object filedValue){
		Object fieldValue = null;
		if("class java.lang.Byte".equals(fieldType)){
			fieldValue = NumberUtil.parseInt(filedValue);
		}else if("class java.lang.Integer".equals(fieldType)){
			fieldValue = NumberUtil.parseInt(filedValue);
		}else if("class java.lang.Long".equals(fieldType)){
			fieldValue = NumberUtil.parseLong(filedValue);
		}else if("class java.lang.Double".equals(fieldType)){
			fieldValue = NumberUtil.parseDouble(filedValue);
		}else if("class java.lang.Float".equals(fieldType)){
			fieldValue = NumberUtil.parseFloat(filedValue);
		}else if("class java.lang.String".equals(fieldType)){
			fieldValue = StringUtil.ToString(filedValue);
		}else if("class java.util.Date".equals(fieldType)){
			if(filedValue == null){
				fieldValue = "";
			}else{
				fieldValue = DateUtil.DateToString((Date)filedValue, "yyyy-MM-dd HH:mm:ss");
				if(fieldValue==null||"".equals(fieldValue)){
					fieldValue = DateUtil.DateToString((Date)filedValue, "yyyy-MM-dd");
				}
			}
			
		}else{
			fieldValue = filedValue;
		}
		if(fieldValue==null)
			fieldValue="";
		
		return fieldValue;
	}

}
