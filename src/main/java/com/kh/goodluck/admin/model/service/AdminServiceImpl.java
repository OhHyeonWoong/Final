package com.kh.goodluck.admin.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.admin.model.dao.AdminDao;
import com.kh.goodluck.admin.model.vo.LoginStatistics;
import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.qna.model.vo.QnaAnswer;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDao adminDao;
	
	@Override
	public List<LoginStatistics> selectAdminStatistics() {
		return adminDao.selectAdminStatistics();
	}
	
	@Override
	public List<QNA> selectAdminQnaIng(HashMap<Object, Object> map1) {
		return adminDao.selectAdminQnaIng(map1);
	}
	
	@Override
	public List<QNA> selectAdminQnaEnd(HashMap<Object, Object> map2) {
		return adminDao.selectAdminQnaEnd(map2);
	}
	
	@Override
	public int selectAdminQnaIngCount() {
		return adminDao.selectAdminQnaIngCount();
	}
	
	@Override
	public int selectAdminQnaEndCount() {
		return adminDao.selectAdminQnaEndCount();
	}
	
	@Override
	public QNA selectAdminQnaDetail(int question_no) {
		return adminDao.selectAdminQnaDetail(question_no);
	}
	
	@Override
	public int insertAdminQnaWrite(QnaAnswer qa) {
		return adminDao.insertAdminQnaWrite(qa);
	}
	
	@Override
	public int updateQuestion(int question_no) {
		return adminDao.updateQuestion(question_no);
	}
}