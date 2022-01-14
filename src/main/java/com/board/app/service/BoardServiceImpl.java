package com.board.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.app.dao.BoardDao;
import com.board.app.dto.BoardDto;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao dao;
	

	@Override
	public BoardDto listboard(int id) {
		BoardDto applicantIn= dao.listboard(id);
		return applicantIn;
	}


	@Override
	public List<BoardDto> findAll() {
		List<BoardDto> list = dao.findAll();
		return list;
	}

	@Override
	public void insertboard(BoardDto board) {
		
		dao.insertboard(board);
	}

}
