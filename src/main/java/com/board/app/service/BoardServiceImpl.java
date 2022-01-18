package com.board.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.app.dao.BoardDao;
import com.board.app.dto.BoardDto;
import com.board.app.dto.Criteria;
import com.board.app.mapper.Mapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao dao;
	@Autowired
	Mapper mapper;
	

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


	@Override
	public List<BoardDto> getList(Criteria cri) {
		return mapper.getListWithPaging(cri);
	}


	@Override
	public int getTotal(Criteria cri) {
		return mapper.getTotalCount(cri);
	}


	@Override
	public BoardDto getReceipt(int id) {
		return dao.getReceipt(id);
	}


	@Override
	public int updateReceipt(BoardDto updateReceipt) {
		return dao.updateReceipt(updateReceipt);
	}



}
