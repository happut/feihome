package com.feihome.support.utils;

public class ConfigUtils {

	public static String getProperty(String name) {
		return (String) CustomizedPropertyPlaceholderConfigurer
				.getContextProperty(name);
	}

	public static boolean isDebug() {
		return "true".equals(getProperty("debug"));
	}
}
