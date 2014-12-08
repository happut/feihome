package com.feihome.support.utils;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;

/**
 * 
 * @author wfei
 * 
 */
public class CustomizedPropertyPlaceholderConfigurer extends
		PropertyPlaceholderConfigurer {

	public Log log = LogFactory.getLog(getClass());

	private static Map<String, Object> ctxPropertiesMap;

	@Override
	protected void processProperties(
			ConfigurableListableBeanFactory beanFactoryToProcess,
			Properties props) throws BeansException {
		super.processProperties(beanFactoryToProcess, props);
		ctxPropertiesMap = new HashMap<String, Object>();
		for (Object key : props.keySet()) {
			String keyStr = key.toString();
			String value = "";
			try {
				value = new String(props.getProperty(keyStr).getBytes(
						"ISO8859-1"), "UTF-8");
			} catch (UnsupportedEncodingException e) {
				log.error("属性→[" + keyStr + "]编码有误，请检查！");
			}
			ctxPropertiesMap.put(keyStr, value);
		}
	}

	public static Object getContextProperty(String name) {
		return ctxPropertiesMap.get(name);
	}

}