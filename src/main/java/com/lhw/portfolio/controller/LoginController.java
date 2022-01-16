package com.lhw.portfolio.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lhw.portfolio.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	
	@GetMapping(value="loginPage")
	public String loginPage() {
		return "Login/loginPage";
	}
	
	@PostMapping(value="submitLogin")
	public String submitLogin(HttpServletRequest request) {
		loginService.submitLogin(request);
		return "redirect:/";
	}
	
}
