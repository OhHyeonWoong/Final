package com.kh.goodluck.search.controller;

public class PageMaker {
	private int totalPage;
	private int pageNum;
	private int contentNum;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int currentBlock;
	private int lastBlock;

	public PageMaker() {
		
	}

	public PageMaker(int totalPage, int pageNum, int contentNum, int startPage, int endPage, boolean prev, boolean next,
			int currentBlock, int lastBlock) {
		super();
		this.totalPage = totalPage;
		this.pageNum = pageNum;
		this.contentNum = contentNum;
		this.startPage = startPage;
		this.endPage = endPage;
		this.prev = prev;
		this.next = next;
		this.currentBlock = currentBlock;
		this.lastBlock = lastBlock;
	}
	
	public int calcPage(int totalCount, int contentNum) {
		int totalPage = totalCount / contentNum;
		
		if (totalCount % contentNum > 0) {
			totalPage++;
		}
		return totalPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getContentNum() {
		return contentNum;
	}

	public void setContentNum(int contentNum) {
		this.contentNum = contentNum;
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

	public int getCurrentBlock() {
		return currentBlock;
	}

	public void setCurrentBlock(int currentBlock) {
		this.currentBlock = currentBlock;
	}

	public int getLastBlock() {
		return lastBlock;
	}

	public void setLastBlock(int lastBlock) {
		this.lastBlock = lastBlock;
	}	
}
