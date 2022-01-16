package com.lhw.portfolio.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import com.lhw.portfolio.domain.Board;
import com.lhw.portfolio.repository.BoardRepository;
import com.lhw.portfolio.util.PageUtils;

public class BoardServiceImp implements BoardService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public void selectBoardList(Model model) {
		
		BoardRepository repository = sqlSession.getMapper(BoardRepository.class);
		
		// Model에 저장된 request 꺼내기
		Map<String, Object> m = model.asMap();
		HttpServletRequest request = (HttpServletRequest) m.get("request");
		
		// 전체 레코드 갯수
		int totalRecord = repository.selectTotalRecordCount();
		
		// 전달된 페이지 번호 (전달 안 되면 page = 1 사용)
		Optional<String> opt = Optional.ofNullable(request.getParameter("page"));
		int page = Integer.parseInt(opt.orElse("1"));
		
		// 페이징 처리 PageUtils 객체 생성 및 계산
		PageUtils pageUtils = new PageUtils();
		pageUtils.setPageEntity(totalRecord, page);
		
		// beginRecord + endRecord => HashMap
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("beginRecord", pageUtils.getBeginRecord());
		map.put("endRecord", pageUtils.getEndRecord());
		
		// beginRecord ~ endRecord 목록 가져오기
		List<Board> list = repository.selectBoardList(map);
		
		// View(employee/list.jsp)로 보낼 데이터
		model.addAttribute("list", list);
		model.addAttribute("startNum", totalRecord - (page - 1) * pageUtils.getRecordPerPage());
		model.addAttribute("paging", pageUtils.getPageEntity("selectBoardList"));  // 목록을 출력하는 매핑값 전달
	}
	
	@Override
	public int insertBoard(Board board) {
		BoardRepository repository = sqlSession.getMapper(BoardRepository.class);
		return repository.insertBoard(board);
	}
	
	@Override
	public Board selectBoardByNo(Long no) {
		BoardRepository repository = sqlSession.getMapper(BoardRepository.class);
		return repository.selectBoardByNo(no);
	}
	
	@Override
	public int updateBoard(Board board) {
		BoardRepository repository = sqlSession.getMapper(BoardRepository.class);
		return repository.updateBoard(board);
	}
	
	@Override
	public int deleteBoard(Long no) {
		BoardRepository repository = sqlSession.getMapper(BoardRepository.class);
		return repository.deleteBoard(no);
	}
	

}
