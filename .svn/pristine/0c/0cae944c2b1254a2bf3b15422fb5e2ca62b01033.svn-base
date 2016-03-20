package com.zyj.framework.exception;

public class BaseException extends Exception {
	private static final long serialVersionUID = 4297270535373450832L;

	private int code;
	
	public int getCode(){
		return code;
	}
	
	public BaseException(String message, Throwable cause) {
		super(message, cause);
	}

	public BaseException(String message,int code) {
		super(message);
		this.code = code;
	}

	public BaseException(Throwable cause) {
		super(cause);
	}
}