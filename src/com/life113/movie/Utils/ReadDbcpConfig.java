package com.life113.movie.Utils;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

/**
 * 读取数据库的配置信息
 */
public class ReadDbcpConfig {
	private static Properties property = new Properties();
	static {
		property = new Properties();
		try {

			property.load(ReadDbcpConfig.class.getClassLoader().getResourceAsStream("dbcpconfig.properties"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	//
	public static Properties getProperties() {
		return property;
	}

	public static String getValue(String key) {
		return property.getProperty(key);
	}

	// 测试
	public static void main(String[] args) {
		System.out.println(ReadDbcpConfig.getValue("driver"));
	}
}
