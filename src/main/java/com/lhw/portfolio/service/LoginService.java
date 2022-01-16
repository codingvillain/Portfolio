package com.lhw.portfolio.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service
public interface LoginService {
	
	public void submitLogin(HttpServletRequest request);
	

}
