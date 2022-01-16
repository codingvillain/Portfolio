package com.lhw.portfolio.service;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;

import com.lhw.portfolio.domain.Login;
import com.lhw.portfolio.repository.LoginRepository;
import com.lhw.portfolio.util.SecurityUtils;

public class LoginServiceImp implements LoginService {

	private SqlSessionTemplate sqlSession;

	
	@Override
	public void submitLogin(HttpServletRequest request) {
		
		Login login = new Login();
		login.setId(request.getParameter("id"));
		login.setPw(SecurityUtils.sha256(request.getParameter("pw")));
		LoginRepository repository = sqlSession.getMapper(LoginRepository.class);
		Login loginUser = repository.submitLogin(login);
		System.out.println(login);
		if(loginUser != null) {
			request.getSession().setAttribute("loginUser", loginUser);
		}
		
	}
	
	
	
	
}
