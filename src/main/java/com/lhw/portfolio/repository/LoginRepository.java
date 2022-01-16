package com.lhw.portfolio.repository;

import org.springframework.stereotype.Repository;

import com.lhw.portfolio.domain.Login;

@Repository
public interface LoginRepository {
	
	public Login submitLogin(Login login);
	

}
