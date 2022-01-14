package com.board.app.dto;

public class PageNavi {
	// 占쏙옙占쏙옙占쏙옙 占쌓븝옙占쏙옙抉占쏙옙占� 占쏙옙占쏙옙 占쏙옙호
	int startPage;
	// 占쏙옙占쏙옙占쏙옙 占쌓븝옙占쏙옙抉占쏙옙占� 占쏙옙占쏙옙호
	int endPage;
	// 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
	boolean prev;
	// 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
	boolean next;

	// 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
	PagingDto paging;
	// 占쌉시뱄옙占쏙옙 占쏙옙 占실쇽옙
	int total;
	
	int endPageNo;

	public PageNavi(PagingDto paging, int total) {
		this.paging = paging;
		this.total = total;
		
		endPageNo = (int) Math.ceil(total/10.0);
		// 占쏙옙占쏙옙占쏙옙 占쌓븝옙占쏙옙抉占쏙옙占� 占쏙옙 占쏙옙호
		endPage = (int) (Math.ceil(paging.getPageNo() / 10.0)) * 10;
		// 占쏙옙占쏙옙占쏙옙 占쌓븝옙占쏙옙抉占쏙옙占� 占쏙옙占쏙옙 占쏙옙호
		startPage = endPage - 9;
		// 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙호
		int realEndPage = (int) Math.ceil((total * 1.0) / paging.getAmount());

		// 占쌓븝옙占쏙옙抉占쏙옙占� 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙호 占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙호占쏙옙 클占쏙옙占� 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙호占쏙옙 占쏙옙占쏙옙
		endPage = endPage > realEndPage ? realEndPage : endPage;

		prev = startPage > 1;

		// 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙抉占쏙옙占� 占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙호 占쏙옙占쏙옙 크占쏙옙
		next = realEndPage > endPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public PagingDto getPaging() {
		return paging;
	}

	public void setPaging(PagingDto paging) {
		this.paging = paging;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getEndPageNo() {
		return endPageNo;
	}

	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}
	
}
