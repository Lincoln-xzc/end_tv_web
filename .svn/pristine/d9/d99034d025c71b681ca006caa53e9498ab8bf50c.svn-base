/**
 * 
 */
package com.zyj.util;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 数据验证公共类
 * 
 * @author beeyon
 * create time 202-07-31
 *
 */
public class ValidateUtils {

	/**
	 * 验证密码是否为字符+数字组合
	 * 如果value==null 则返回false
	 * @param value
	 * @return
	 */
	public static boolean isPassword(String value)
	{
		return isPassword(value,true);
	}
	
	/**
	 * 验证密码是否为字符+数字组合
	 * 如果value==null isRequired=true 这返回false，如果value==null isRequired=false 则返回true
	 * @param value
	 * @param isRequired 
	 * @return
	 */
	public static boolean isPassword(String value,boolean isRequired)
	{
		if(value==null&&isRequired) return false;
		if(value==null&&!isRequired) return true;
		Pattern pattern=Pattern.compile("^((?=.*?\\d)(?=.*?[A-Za-z])|(?=.*?\\d)(?=.*?[!@#$%^&])|(?=.*?[A-Za-z])(?=.*?[!@#$%^&]))[\\dA-Za-z!@#$%^&]{6,16}$");
		Matcher m=pattern.matcher(value);
		return m.matches();
	}
	
	/**
	 * 支持自定义正则表达式模式验证，
	 * 如果value==null 则返回false
	 * @param value 要匹配的字符串
	 * @param pattern 正在表达式字符串
	 * @return
	 */
	public static boolean validate(String value,String pattern)
	{
		return validate(value,pattern,true);
	}
			
	/**
	 * 支持自定义正则表达式模式验证，如果pattern=null 返回false
	 * 如果value==null isRequired=true 这返回false，如果value==null isRequired=false 则返回true
	 * @param value 要匹配的字符串
	 * @param pattern 正在表达式字符串
	 * @param isRequired 设置value 是否必填，
	 * @return
	 */
	public static boolean validate(String value,String pattern,boolean isRequired)
	{
		if(pattern==null) return false;
		if(value==null&&isRequired) return false;
		if(value==null&&!isRequired) return true;
		Pattern p=Pattern.compile(pattern);
		Matcher m=p.matcher(value);
		return m.matches();
	}
	
	public static void main(String[] args) throws IOException
	{
		System.out.println(isPassword(""));
		System.out
				.println(StringUtil.getMD5Str(StringUtil.getMD5Str("123456a")));
		Calendar cad = Calendar.getInstance();
		cad.setTime(DateUtil.getDateByStr("2012-07-31 14:55:36"));

		Date start = cad.getTime();
		System.out.println(DateUtil.DateToString(start, "yyyy-MM-dd HH:mm:ss"));
		Date st1 = new Date(start.getTime() + 30 * 24 * 60 * 60 * 1000);
		System.out.println(DateUtil.DateToString(st1, "yyyy-MM-dd HH:mm:ss"));
		Date now = new Date();
		System.out.println(DateUtil.DateToString(now, "yyyy-MM-dd HH:mm:ss"));
		System.out.println(st1.compareTo(now));
	}

	/**
	 * 判断是否整形,是返回true,否则为false
	 * @param object
	 * @return
	 */
	public static boolean isInteger(Object object) {
		if(object == null ) return false;
		try{
			Integer.valueOf(object.toString());
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	/**
	 * 判断是否为double型,是返回true,否则为false
	 * @param object
	 * @return
	 */
	public static boolean isDouble(Object object) {
		if(object == null ) return false;
		try{
			Double.valueOf(object.toString());
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
