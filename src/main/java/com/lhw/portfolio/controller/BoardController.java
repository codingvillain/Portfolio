package com.lhw.portfolio.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lhw.portfolio.domain.Board;
import com.lhw.portfolio.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping(value="selectBoardList")
	public String selectBoardList(HttpServletRequest request, Model model) {
		model.addAttribute("request", request); // 모델에 request를 싣음 그래서 imp로 감
		boardService.selectBoardList(model); //  그래서 모델을 싣어서 보내줌.
		return "board/list"; 
	}
	
	@GetMapping(value="insertPage")
	public String insertPage() {
		return "board/insert";
	}
	
	@PostMapping(value="insertBoard")
	public String insertBoard(Board board) {
		boardService.insertBoard(board);
		return "redirect:selectBoardList";
	}
	
	@GetMapping(value="selectBoardByNo")
	public String selectBoardByNo(@RequestParam("no") Long no, Model model) {
		model.addAttribute("board", boardService.selectBoardByNo(no));
		return "board/detail";
	}
	
	@GetMapping(value="updateBoard")
	public String updateBoard(Board board) {
		boardService.updateBoard(board);
		return "redirect:selectBoardList";
	}
	@GetMapping(value="deleteBoard")
	public String deleteBoard(@RequestParam("no")Long no) {
		boardService.deleteBoard(no);
		return "redirect:selectBoardList";
	}
	
}
