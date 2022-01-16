package com.lhw.portfolio.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.lhw.portfolio.service.BoardService;
import com.lhw.portfolio.service.BoardServiceImp;

@Configuration
public class BoardConfig {

	@Bean
	public BoardService boardService() {
		return new BoardServiceImp();
	}
}
