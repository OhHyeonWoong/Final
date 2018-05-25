package com.kh.goodluck.qna.model.service;

import java.util.*;

import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.qna.model.vo.QnaAnswer;

public interface QNAService {
	//myPage 로드시 구동하는 메소드
	public abstract List<QNA> selectMyQna(String member_id);
	//qna 상세정보 로드 시 사용
	public abstract QNA selectMyDetailQna(QNA q);
	//qna answer 정보 로드 시 사용
	public abstract QnaAnswer selectMyDetailQnaAnswer(int question_no);

}
