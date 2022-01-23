package com.board.app.service;

import java.util.List;

import com.board.app.dto.Criteria;
import com.board.app.dto.ReplyDto;

public interface ReplyService {

	public ReplyDto get(int id);
	
	public int modify(ReplyDto dto);
	public List<ReplyDto> getList(Criteria cri, int boardid);
}
