package com.zyj.filter;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.TYPE;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @Title: AuthRequired.java
 * @Description: 
 * @date 2013年12月4日 下午2:25:56
 */

@Target({TYPE,METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface ApiLoginRequired {

	/**
	 * 是否允许匿名登陆，默认允许
	 */
	public boolean allowNick() default true;
}
