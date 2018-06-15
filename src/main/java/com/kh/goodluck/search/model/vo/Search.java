package com.kh.goodluck.search.model.vo;

import java.sql.Date;

public class Search {
	
	private int agency_no;
	private String agency_writer;
	private String agency_title;
	private int link2_no;
	private int agency_type;
	private String agency_loc;
	private Date agency_startdate;
	private Date agency_enddate;
	private Date agency_enrolldate;
	private int agency_paytype;
	private int agency_pay;
	private int agency_status;
	private String agency_content;
	private int agency_views;
	private String agency_keyword;
	private String agency_option;
	private long score_sell_rate;
	
	public static final int pageScale = 10; /* 페이지당 게시물 수 */
	public static final int blockScale = 10; /* 화면당 페이지 수 */
	
	private int totPage; /* 전체 페이지 수 */
	private int prevPage; /* 이전 페이지 */
	private int curPage; /* 현재 페이지 */
	private int nextPage; /* 다음 페이지 */
	private int totBlock; /* 전체 페이지 블록 갯수 */
	private int prevBlock; /* 이전 블록 */
	private int curBlock; /* 현재 블록 */
	private int nextBlock; /* 다음 블록 */
	private int pageBegin; /* #{start} 변수에 전달될 값 */
	private int pageEnd; /* #{end} 변수에 전달될 값 */
	private int blockBegin; /* 블록의 시작페이지 번호 */
	private int blockEnd; /* 블록의 마지막페이지 번호 */
	
	public Search() {
		
	}	

	public Search(int agency_no, String agency_writer, String agency_title, int link2_no, int agency_type,
			String agency_loc, Date agency_startdate, Date agency_enddate, Date agency_enrolldate, int agency_paytype,
			int agency_pay, int agency_status, String agency_content, int agency_views, String agency_keyword,
			String agency_option, long score_sell_rate, int totPage, int prevPage, int curPage, int nextPage, int totBlock,
			int prevBlock, int curBlock, int nextBlock, int pageBegin, int pageEnd, int blockBegin, int blockEnd) {
		super();
		this.agency_no = agency_no;
		this.agency_writer = agency_writer;
		this.agency_title = agency_title;
		this.link2_no = link2_no;
		this.agency_type = agency_type;
		this.agency_loc = agency_loc;
		this.agency_startdate = agency_startdate;
		this.agency_enddate = agency_enddate;
		this.agency_enrolldate = agency_enrolldate;
		this.agency_paytype = agency_paytype;
		this.agency_pay = agency_pay;
		this.agency_status = agency_status;
		this.agency_content = agency_content;
		this.agency_views = agency_views;
		this.agency_keyword = agency_keyword;
		this.agency_option = agency_option;
		this.score_sell_rate = score_sell_rate;
		this.totPage = totPage;
		this.prevPage = prevPage;
		this.curPage = curPage;
		this.nextPage = nextPage;
		this.totBlock = totBlock;
		this.prevBlock = prevBlock;
		this.curBlock = curBlock;
		this.nextBlock = nextBlock;
		this.pageBegin = pageBegin;
		this.pageEnd = pageEnd;
		this.blockBegin = blockBegin;
		this.blockEnd = blockEnd;
	}

	public int getAgency_no() {
		return agency_no;
	}

	public void setAgency_no(int agency_no) {
		this.agency_no = agency_no;
	}

	public String getAgency_writer() {
		return agency_writer;
	}

	public void setAgency_writer(String agency_writer) {
		this.agency_writer = agency_writer;
	}

	public String getAgency_title() {
		return agency_title;
	}

	public void setAgency_title(String agency_title) {
		this.agency_title = agency_title;
	}

	public int getLink2_no() {
		return link2_no;
	}

	public void setLink2_no(int link2_no) {
		this.link2_no = link2_no;
	}

	public int getAgency_type() {
		return agency_type;
	}

	public void setAgency_type(int agency_type) {
		this.agency_type = agency_type;
	}

	public String getAgency_loc() {
		return agency_loc;
	}

	public void setAgency_loc(String agency_loc) {
		this.agency_loc = agency_loc;
	}

	public Date getAgency_startdate() {
		return agency_startdate;
	}

	public void setAgency_startdate(Date agency_startdate) {
		this.agency_startdate = agency_startdate;
	}

	public Date getAgency_enddate() {
		return agency_enddate;
	}

	public void setAgency_enddate(Date agency_enddate) {
		this.agency_enddate = agency_enddate;
	}

	public Date getAgency_enrolldate() {
		return agency_enrolldate;
	}

	public void setAgency_enrolldate(Date agency_enrolldate) {
		this.agency_enrolldate = agency_enrolldate;
	}

	public int getAgency_paytype() {
		return agency_paytype;
	}

	public void setAgency_paytype(int agency_paytype) {
		this.agency_paytype = agency_paytype;
	}

	public int getAgency_pay() {
		return agency_pay;
	}

	public void setAgency_pay(int agency_pay) {
		this.agency_pay = agency_pay;
	}

	public int getAgency_status() {
		return agency_status;
	}

	public void setAgency_status(int agency_status) {
		this.agency_status = agency_status;
	}

	public String getAgency_content() {
		return agency_content;
	}

	public void setAgency_content(String agency_content) {
		this.agency_content = agency_content;
	}

	public int getAgency_views() {
		return agency_views;
	}

	public void setAgency_views(int agency_views) {
		this.agency_views = agency_views;
	}

	public String getAgency_keyword() {
		return agency_keyword;
	}

	public void setAgency_keyword(String agency_keyword) {
		this.agency_keyword = agency_keyword;
	}

	public String getAgency_option() {
		return agency_option;
	}

	public void setAgency_option(String agency_option) {
		this.agency_option = agency_option;
	}	
	
	public long getScore_sell_rate() {
		return score_sell_rate;
	}

	public void setScore_sell_rate(long score_sell_rate) {
		this.score_sell_rate = score_sell_rate;
	}	

	@Override
	public String toString() {
		return "Search [agency_no=" + agency_no + 
				", agency_writer=" + agency_writer + 
				", agency_title=" + agency_title
				+ ", link2_no=" + link2_no + 
				", agency_type=" + agency_type + 
				", agency_loc=" + agency_loc
				+ ", agency_startdate=" + agency_startdate + 
				", agency_enddate=" + agency_enddate
				+ ", agency_enrolldate=" + agency_enrolldate + 
				", agency_paytype=" + agency_paytype + 
				", agency_pay="	+ agency_pay + 
				", agency_status=" + agency_status + 
				", agency_content=" + agency_content
				+ ", agency_views=" + agency_views + 
				", agency_keyword=" + agency_keyword + 
				", agency_option=" + agency_option + 
				", score_sell_rate=" + score_sell_rate + 
				", totPage=" + totPage + 
				", prevPage=" + prevPage
				+ ", curPage=" + curPage + 
				", nextPage=" + nextPage + 
				", totBlock=" + totBlock + 
				", prevBlock=" + prevBlock + 
				", curBlock=" + curBlock + 
				", nextBlock=" + nextBlock + 
				", pageBegin=" + pageBegin
				+ ", pageEnd=" + pageEnd + 
				", blockBegin=" + blockBegin + 
				", blockEnd=" + blockEnd + "]";
	}

	/* Pager(레코드 갯수, 출력할 페이지 번호) */
	public Search(int count, int curPage) {
		curBlock = 1; /* 현재 블록 번호 */
		this.curPage = curPage; /* 현재 페이지 번호 */
		setTotPage(count); /* 전체 페이지 갯수 계산 */
		setPageRange(); /* #{ pageBegin }, #{ pageEnd } 값 계산*/
		setTotBlock(); /* 전체 블록 갯수 계산 */
		setBlockRange(); /* 블록의 시작, 끝 번호 계산 */
	}
	
	/* where rownum between #{ start } and #{ end }에 입력될 값 */
	public void setPageRange() {
		/* 시작 번호 = (현재 페이지 - 1) X 페이지 당 게시물 수 + 1 */
		pageBegin = (curPage - 1) * pageScale + 1;
		
		/* 끝 번호 = 시작 번호 X 페이지 당 게시물 수 - 1 */
		pageEnd = pageBegin + pageScale - 1;
	}
	
	public void setTotBlock() {
		totBlock = (int)Math.ceil(totPage * 1.0 / blockScale);
	}
	
	public void setBlockRange() {
		/* 원하는 페이지가 몇번째 블록에 속하는지 계산 */
		curBlock = (int)Math.ceil((curPage - 1) / blockScale) + 1;
		/* 블록의 히작페이지, 끝페이지 번호 계산 */
		blockBegin = ((curBlock - 1) * blockScale) + 1;
		blockEnd = blockBegin + blockScale - 1;
		/* 마지막 페이지 번호가 블록 범위를 초과하지 않도록 처리 */
		if(blockEnd > totPage) {
			blockEnd = totPage;
		}
		/* [이전][다음]을 눌렀을 때 이동할 페이지 번호 */
		prevPage = (curBlock == 1) ? 1 : (curBlock - 1) * blockScale;
		nextPage = curBlock > totBlock ? (curBlock * blockScale) : (curBlock * blockScale) + 1;
		/* 마지막 페이지가 범위를 초과하지 않도록 처리 */
		if(nextPage >= totPage) {
			nextPage = totPage;
		}
	}	
	
	public int getTotPage() {
		return totPage;
	}
	
	/* 전체 페이지 갯수 계산 */
	public void setTotPage(int count) {
		/* Math.ceil() = 올림 */
		totPage = (int)Math.ceil(count * 1.0 / pageScale);
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getTotBlock() {
		return totBlock;
	}

	public void setTotBlock(int totBlock) {
		this.totBlock = totBlock;
	}

	public int getPrevBlock() {
		return prevBlock;
	}

	public void setPrevBlock(int prevBlock) {
		this.prevBlock = prevBlock;
	}

	public int getCurBlock() {
		return curBlock;
	}

	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}

	public int getNextBlock() {
		return nextBlock;
	}

	public void setNextBlock(int nextBlock) {
		this.nextBlock = nextBlock;
	}

	public int getPageBegin() {
		return pageBegin;
	}

	public void setPageBegin(int pageBegin) {
		this.pageBegin = pageBegin;
	}

	public int getPageEnd() {
		return pageEnd;
	}

	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}

	public int getBlockBegin() {
		return blockBegin;
	}

	public void setBlockBegin(int blockBegin) {
		this.blockBegin = blockBegin;
	}

	public int getBlockEnd() {
		return blockEnd;
	}

	public void setBlockEnd(int blockEnd) {
		this.blockEnd = blockEnd;
	}
}
