package com.board.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.app.dto.Criteria;
import com.board.app.dto.ReplyDto;
import com.board.app.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyMapper mapper;
	

	@Override
	public int register(ReplyDto dto) {
		// TODO Auto-generated method stub
		return mapper.insert(dto);
	}
	
	
	@Override
	public ReplyDto get(int id) {
		
		return mapper.read(id);
	}
	


	@Override
	public int modify(ReplyDto dto) {
		// TODO Auto-generated method stub
		return mapper.update(dto);
	}

	@Override
	public List<ReplyDto> getList(Criteria cri, int boardid) {
		// TODO Auto-generated method stub
		return mapper.getListWithPaging(cri, boardid);
	}



	

}
