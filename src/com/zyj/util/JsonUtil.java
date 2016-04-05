package com.zyj.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


public class JsonUtil {
	
	/**
	 * 格式化object
	 * @param obj
	 * @return
	 */
	public static JSONObject toJSONObject(Object obj){
		JSONObject jsonObject = new JSONObject();
		try{
			if(StringUtil.isNotEmpty(obj)){
				jsonObject = JSONObject.fromObject(obj);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return jsonObject;
	}
	
	/**
	 * 格式化array
	 * @param obj
	 * @return
	 */
	public static JSONArray toJSONArray(Object obj){
		JSONArray jsonArray = new JSONArray();
		try{
			if(StringUtil.isNotEmpty(obj)){
				jsonArray = JSONArray.fromObject(obj);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return jsonArray;
	}
	
	/**
	 * 格式化array
	 * @param obj
	 * @return
	 */
	public static String[] toStringArray(Object obj){
		String[] stringArray = null;
		try{
			JSONArray jsonArray = toJSONArray(obj);
			stringArray = new String[jsonArray.size()];
			if(jsonArray!=null && jsonArray.size()>0){
				for(int i=0;i<jsonArray.size();i++){
					stringArray[i] = jsonArray.getString(i);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return stringArray;
	}
	
	public static List<Map<String,Object>> toList(Object obj){
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			JSONArray jsonArray = toJSONArray(obj);
			list = (List<Map<String, Object>>) JSONArray.toCollection(jsonArray,Map.class);
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<String> toListArray(Object obj){
		List<String> list = new ArrayList<String>();
		try{
			JSONArray jsonArray = toJSONArray(obj);
			list = (List<String>) JSONArray.toCollection(jsonArray);
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Integer> toListArray4Int(Object obj){
		List<Integer> list = new ArrayList<Integer>();
		try{
			JSONArray jsonArray = toJSONArray(obj);
			list = (List<Integer>) JSONArray.toCollection(jsonArray);
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
	public static Map<String,Object> toMap(Object obj){
		Map<String,Object> map = new HashMap<String,Object>();
		try{
			map = toJSONObject(obj);
		}catch(Exception e){
			e.printStackTrace();
		}
		return map;
	}
	
	public static void main(String[] args) {
		Integer[] a = new Integer[2];
		a[0] = 1;
		a[1] = 2;
		List<String> str = toListArray(JSONArray.fromObject(a).toString());
		System.out.println(str);
	}
}