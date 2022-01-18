package com.board.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.board.app.dto.BoardDto;
import com.board.app.dto.Criteria;

public interface Mapper {
	@Select("select sysdate from dual")
	public String getTime2();
	
	public String getTime();
	
	
	
	BoardDto listboard(int id);
	
	
	public void insertboard(BoardDto board); 

	public List<BoardDto> findAll();
	
	public List<BoardDto> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);

	BoardDto getReceipt(int id);
	
	int updateReceipt(BoardDto updateReceipt);
	
	
}
