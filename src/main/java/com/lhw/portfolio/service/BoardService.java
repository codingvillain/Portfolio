package com.lhw.portfolio.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.lhw.portfolio.domain.Board;

@Service
public interface BoardService {
	public void selectBoardList(Model model);
	public int insertBoard(Board board);
	public Board selectBoardByNo(Long no);
	public int updateBoard(Board board);
	public int deleteBoard(Long no);
}
