package com.board.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.board.app.dto.BoardDto;

public interface Mapper {
	@Select("select sysdate from dual")
	public String getTime2();
	
	public String getTime();
	
	public void insertboard(BoardDto board); 
	
	BoardDto listboard(int id);

	public List<BoardDto> findAll();
}
