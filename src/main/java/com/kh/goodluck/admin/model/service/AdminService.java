package com.kh.goodluck.admin.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.goodluck.admin.model.vo.LoginStatistics;
import com.kh.goodluck.qna.model.vo.QNA;

public interface AdminService {

	public abstract List<LoginStatistics> selectAdminStatistics();
	//답변 진행 중 메소드
	public abstract List<QNA> selectAdminQnaIng(HashMap<Object, Object> map1);
	//답변 끝난 애 메소드
	public abstract List<QNA> selectAdminQnaEnd(HashMap<Object, Object> map2);
	public abstract int selectAdminQnaIngCount();
	public abstract int selectAdminQnaEndCount();
	public abstract QNA selectAdminQnaDetail(int question_no);
	
}
