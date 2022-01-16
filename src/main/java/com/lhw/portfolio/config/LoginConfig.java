package com.lhw.portfolio.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.lhw.portfolio.service.LoginService;
import com.lhw.portfolio.service.LoginServiceImp;

@Configuration
public class LoginConfig {

	@Bean
	public LoginService loginService() {
		return new LoginServiceImp();
	}
}
