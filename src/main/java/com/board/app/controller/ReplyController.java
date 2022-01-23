package com.board.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.board.app.dto.Criteria;
import com.board.app.dto.ReplyDto;
import com.board.app.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/replies/")
@RestController
@Log4j
@AllArgsConstructor
public class ReplyController {
	
	@Autowired
	private ReplyService service;
	
	@GetMapping(value = "/pages/{boardid}/{page}",
			produces = {
					MediaType.APPLICATION_XML_VALUE,
					MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<ReplyDto>> getList(
			@PathVariable("page")int page,
			@PathVariable("boardid") int boardid) {
		Criteria cri = new Criteria(page,10);
			return new ResponseEntity<>(service.getList(cri, boardid), HttpStatus.OK);
		
	}
	
	@SuppressWarnings("deprecation")
	@GetMapping(value = "/{id}",
			produces = {
					MediaType.APPLICATION_XML_VALUE,
					MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<ReplyDto> get(@PathVariable("id") int id) {
		return new ResponseEntity<>(service.get(id), HttpStatus.OK);
		
		
	}
	
	@RequestMapping(method = { RequestMethod.PUT, RequestMethod.PATCH},
			value = "/{id}",
			consumes="application/json",
			produces= {MediaType.TEXT_PLAIN_VALUE}) 
		public ResponseEntity<String> modify(
				@RequestBody ReplyDto dto,
				@PathVariable("id") int id) {
			dto.setId(id);
			return service.modify(dto) == 1
					? new ResponseEntity<>("success", HttpStatus.OK)
					: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);		
							
	}
	
	

	
	
	
}

