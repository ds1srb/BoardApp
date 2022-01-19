package com.board.app.service;

import java.util.List;

import com.board.app.dto.BoardDto;
import com.board.app.dto.Criteria;

public interface BoardService {

	public void insertboard(BoardDto salesHome);
	
	
	BoardDto listboard(int id);
	
	
	
	public List<BoardDto> findAll();
	
	public List<BoardDto> getList(Criteria cri);

	public int getTotal(Criteria cri);


	public BoardDto getReceipt(int id);
	
	int updateReceipt(BoardDto updateReceipt);
	
	public List<BoardDto> getPasswd(int id, String passwd);

	
	

	
	
}