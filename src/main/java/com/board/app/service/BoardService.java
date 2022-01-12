package com.board.app.service;

import java.util.List;

import com.board.app.dto.BoardDto;

public interface BoardService {

	public void insertboard(BoardDto salesHome);
	BoardDto listboard(int id);
	public List<BoardDto> findAll();
}