package com.kh.goodluck.qna.model.service;

import java.util.*;

import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.qna.model.vo.QnaAnswer;
import com.kh.goodluck.qna.model.vo.QnaWrite;

public interface QNAService {
	//myPage 로드시 구동하는 메소드
	public abstract List<QNA> selectMyQna(HashMap<Object, Object> map);
	//qna 상세정보 로드 시 사용
	public abstract QNA selectMyDetailQna(QNA q);
	//qna answer 정보 로드 시 사용
	public abstract QnaAnswer selectMyDetailQnaAnswer(int question_no);
	//qnaWrite 시 사용
	public abstract int insertMyQna(QnaWrite qnaWrite);
	//qnaListCount 가져올 때 사용(페이징처리)
	public abstract int selectMyQnaCount(String member_id);
}
