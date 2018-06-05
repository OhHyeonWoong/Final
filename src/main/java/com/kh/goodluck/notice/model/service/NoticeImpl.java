package com.kh.goodluck.notice.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.notice.model.dao.NoticeDao;
import com.kh.goodluck.notice.model.vo.Notice;

@Service("NoticeService")
public class NoticeImpl implements NoticeService{
  
	@Autowired
	private NoticeDao noticeDao;
	
	@Override
	public int checkNoticeCount() {	
		return noticeDao.checkNoticeCount();
	}
	
	@Override
	public List<Notice> noticelistCheck(HashMap<Object, Object> map) {
		
		return noticeDao.noticelistCheck(map);
	}
	
	@Override
	public List<Notice> noticeTop5() {

		return noticeDao.noticeTop5();
	}
	
  @Override
	public Notice noticeDetail(int notice_no) {
		
		return noticeDao.noticeDetail(notice_no);
	}
  
  @Override
	public int noticeContentUpdate(Notice newnotice) {
		
		return noticeDao.noticeContentUpdate(newnotice);
	}


	@Override
	public int noticeAdd(Notice newinsertnotice) {
		
		return noticeDao.noticeAdd(newinsertnotice);
	}
	
	@Override
	public int noticeDel(int parsing_pk) {
		
		return noticeDao.noticeDel(parsing_pk);
	}
	
	@Override
	public List<Notice> pagingOne() {
		return noticeDao.pagingOne();
	}
	
	@Override
	public List<Notice> pagingTwo() {		
		return noticeDao.pagingTwo();
	}
	

}
