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
	public List<QNA> selectMyQna(HashMap<Object, Object> map) {
		return qnaDao.selectMyQna(map);
	}
	
	@Override
	public QNA selectMyDetailQna(QnaWrite q) {
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
	
	@Override
	public int selectMyQnaCount(String member_id) {
		return qnaDao.selectMyQnaCount(member_id);
	}
	
	@Override
	public int deleteQna(HashMap<String,Object> map) {
		return qnaDao.deleteQna(map);
	}
	
	@Override
	public int updateMyQnaSatisfaction(QnaAnswer qa) {
		return qnaDao.updateMyQnaSatisfaction(qa);
	}
}
