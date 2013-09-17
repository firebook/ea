package com.common.config;

import com.common.exception.BaseException;

/**
 * Error in application.conf
 */
public class ConfigurationException extends BaseException {

	public ConfigurationException(String message) {
		super(message);
	}

	@Override
	public String getErrorDescription() {
		return getMessage();
	}

	@Override
	public String getErrorTitle() {
		return "配置文件错误 error.";
	}

}
