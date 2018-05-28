package com.kh.goodluck.qna.model.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.qna.model.dao.QNADao;
import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.qna.model.vo.QnaAnswer;
import com.kh.goodluck.qna.model.vo.QnaWrite;

@Service("qnaService")
public class QNAServiceImpl implements QNAService{
	
	@Autowired
	private QNADao qnaDao; 

	@Override
	public List<QNA> selectMyQna(String member_id) {
		return qnaDao.selectMyQna(member_id);
	}
	
	@Override
	public QNA selectMyDetailQna(QNA q) {
		return qnaDao.selectMyDetailQna(q);
	}
	
	@Override
	public QnaAnswer selectMyDetailQnaAnswer(int question_no) {
		return qnaDao.selectMyDetailQnaAnswer(question_no);
	}
	
	@Override
	public int insertMyQna(QnaWrite qnaWrite) {
		return qnaDao.insertMyQna(qnaWrite);
	}
}
