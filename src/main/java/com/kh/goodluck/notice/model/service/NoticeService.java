package com.kh.goodluck.notice.model.service;

import java.util.ArrayList;
import java.util.List;
   
import com.kh.goodluck.notice.model.vo.Notice;


public interface NoticeService {

	abstract List<Notice> pullNoticeAllList();	
	
	abstract public List<Notice> noticeTop5();

	public abstract Notice noticeDetail(int notice_no);


	
}
