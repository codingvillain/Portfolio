package com.lhw.portfolio.repository;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.lhw.portfolio.domain.Board;

@Repository
public interface BoardRepository {
	
	public List<Board> selectBoardList(Map<String, Object>map);
	public int insertBoard(Board board);
	public Board selectBoardByNo(Long no);
	public int updateBoard(Board board);
	public int deleteBoard(Long no);
	public int selectTotalRecordCount();
}
