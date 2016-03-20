package com.zyj.framework.exception;

public class FilialPietyException extends Exception {

	private static final long serialVersionUID = -5113161784238953248L;

	private String message;

	public FilialPietyException(String message) {
		super(message);
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
