package com.board.app.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.board.app.dto.BoardDto;
import com.board.app.service.BoardService;


@Controller

public class BoardController {
	
	@Autowired
	private BoardService service;
	 
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public String receipt(Model model, BoardDto dto) {
		List<BoardDto> list = service.findAll();		
		model.addAttribute("dto", dto);
		model.addAttribute("test", list);
		model.addAttribute("form", "/board");
		//BoardDto dto = new BoardDto();
		logger.info("목록이다");
		return "NB001L01";
	}
	
	
	@RequestMapping(value = "/board/create", method = RequestMethod.GET)
	public String create(Model model) {
		
		model.addAttribute("form", "/board/create");
		BoardDto dto = new BoardDto();
		logger.info("�ۼ��������Դϴ�.");
		return "NB001E01";
	}
	
	@RequestMapping(value = "/board/create", method = RequestMethod.POST)
	public String signUp(HttpServletRequest request) throws Exception {
		BoardDto dto = new BoardDto();
		
			String board_Title = request.getParameter("board_title");
			dto.setTitle(board_Title);
			
			String board_Contents = request.getParameter("board_contents");
			dto.setContents(board_Contents);
			
			String board_Name = request.getParameter("board_name");
			dto.setName(board_Name);
			
			String board_Passwd = request.getParameter("board_passwd");
			dto.setPasswd(board_Passwd);
			
			
			String board_Deleteflg = request.getParameter("board_deleteflg");
			dto.setDeleteflg(board_Deleteflg);

		
			String board_Createdat = request.getParameter("board_createdat");
			SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		 
			String board_Updatedat = request.getParameter("board_updatedat");
		 
			
			service.insertboard(dto);
			logger.info("작성한다");
			return "redirect:/board/create";
	}
			
			
			
	@RequestMapping(value = "/board/detail", method = RequestMethod.GET)
	public String detail(Model model) {
		
		model.addAttribute("form", "/board/detail");
		BoardDto dto = new BoardDto();
		logger.info("상세페이지");
		return "NB001D01";
	}
	


}