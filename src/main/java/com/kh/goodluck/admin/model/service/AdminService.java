package com.kh.goodluck.admin.model.service;

import java.util.List;

import com.kh.goodluck.admin.model.vo.LoginStatistics;
import com.kh.goodluck.qna.model.vo.QNA;

public interface AdminService {

	public abstract List<LoginStatistics> selectAdminStatistics();
	//답변 진행 중 메소드
	public abstract List<QNA> selectAdminQnaIng();
	//답변 끝난 애 메소드
	public abstract List<QNA> selectAdminQnaEnd();
	
}
