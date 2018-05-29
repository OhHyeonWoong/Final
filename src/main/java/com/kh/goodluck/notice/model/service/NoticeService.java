package com.kh.goodluck.notice.model.service;

import java.util.List;
   
import com.kh.goodluck.notice.model.vo.Notice;


public interface NoticeService {

	abstract public List<Notice> noticeTop5();

	public abstract Notice noticeDetail(int notice_no);
	
}
