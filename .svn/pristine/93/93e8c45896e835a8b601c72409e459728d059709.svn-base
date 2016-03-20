package com.zyj.framework.dao;

import java.util.Properties;
import org.springframework.beans.factory.FactoryBean;

public class PropertiesEncryptFactoryBean implements FactoryBean {
	private Properties properties;

	public Object getObject() throws Exception {
		return getProperties();
	}

	public Class getObjectType() {
		return Properties.class;
	}

	public boolean isSingleton() {
		return true;
	}

	public Properties getProperties() {
		return this.properties;
	}

	public void setProperties(Properties inProperties) {
		this.properties = inProperties;
		String originalUsername = this.properties.getProperty("user");
		String originalPassword = this.properties.getProperty("password");
		if (originalUsername != null) {
			String newUsername = deEncryptUsername(originalUsername);
			this.properties.put("user", newUsername);
		}
		if (originalPassword != null) {
			String newPassword = deEncryptPassword(originalPassword);
			this.properties.put("password", newPassword);
		}
	}

	private String deEncryptUsername(String originalUsername) {
		return deEncryptString(originalUsername);
	}

	private String deEncryptPassword(String originalPassword) {
		return deEncryptString(originalPassword);
	}

	private String deEncryptString(String originalString) {
		StringBuilder newString = new StringBuilder();
		for (int i = 0; i < originalString.length(); i++) {
			char eachChar = originalString.charAt(i);
			char newChar = (char) (eachChar + i);
			newString.append(newChar);
		}
		return newString.toString();
	}
}