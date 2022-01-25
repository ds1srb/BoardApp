package com.board.app.dto;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.ToString;
@ToString
public class ReplyDto {
	
	private int id;
	private int boardid;
	private String name;
	private String contents;
	private String deleteflg;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdat;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date Updatedat;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBoardid() {
		return boardid;
	}
	public void setBoardid(int boardid) {
		this.boardid = boardid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getDeleteflg() {
		return deleteflg;
	}
	public void setDeleteflg(String deleteflg) {
		this.deleteflg = deleteflg;
	}
	public Date getCreatedat() {
		return createdat;
	}
	public void setCreatedat(Date createdat) {
		this.createdat = createdat;
	}
	public Date getUpdatedat() {
		return Updatedat;
	}
	public void setUpdatedat(Date updatedat) {
		Updatedat = updatedat;
	}

	

}
