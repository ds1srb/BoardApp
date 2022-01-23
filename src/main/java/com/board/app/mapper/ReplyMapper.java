package com.board.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.board.app.dto.Criteria;
import com.board.app.dto.ReplyDto;

public interface ReplyMapper {
	
	public int insert(ReplyDto Dto);
	
	public ReplyDto read(int id);
	
	public int update(ReplyDto reply);
	
	public List<ReplyDto> getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("boardid") int boardid); 
			
			
	

}
