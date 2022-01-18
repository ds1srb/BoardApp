package com.board.app.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.board.app.dto.BoardDto;
import com.board.app.mapper.Mapper;

@Repository
public class BoardDao {
	
	/*
	 * @Autowired SqlSession sqlSession;
	 */
	@Autowired
	Mapper mapper;
	
	
	
	public BoardDto listboard(int id) {
		BoardDto applicantIn = mapper.listboard(id);
		return applicantIn;
		
	}

	public List<BoardDto> findAll() {
		List<BoardDto> list = mapper.findAll();
		return list;
	}
	
	
	public void insertboard(BoardDto board) {
		mapper.insertboard(board);
	}

	public BoardDto getReceipt(int id) {
		BoardDto dto = mapper.getReceipt(id);
		return dto;
	} 
	public int updateReceipt(BoardDto updateReceipt) {
	
		int result = mapper.updateReceipt(updateReceipt);
		return result;
		
	}

	
}
