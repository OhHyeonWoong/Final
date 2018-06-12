package com.kh.goodluck.notice.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
   
import com.kh.goodluck.notice.model.vo.Notice;


public interface NoticeService {
	
	abstract public List<Notice> noticeTop5();

	public abstract Notice noticeDetail(int notice_no);

	abstract int noticeContentUpdate(Notice newnotice);

	abstract int noticeAdd(Notice newinsertnotice);

	abstract int noticeDel(int parsing_pk);

	abstract int checkNoticeCount();

	abstract List<Notice> noticelistCheck(HashMap<Object, Object> map);
	
	abstract List<Notice> pagingTwo();

	abstract List<Notice> pagingOne();
	
}
