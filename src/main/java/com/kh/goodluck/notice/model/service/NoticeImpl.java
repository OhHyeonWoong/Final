package com.kh.goodluck.notice.model.service;

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
	public List<Notice> noticeTop5() {

		return noticeDao.noticeTop5();
	}


}
