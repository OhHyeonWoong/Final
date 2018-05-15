package com.kh.goodluck.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.member.model.vo.Member;

@Repository("memberDao")
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public MemberDao() {
		
	}
	
	public Member loginCheck(Member member) {
		//로그인용 메소드
		return sqlSession.selectOne("loginCheck", member);
	}

	public int findPwdMethod(Member member) {
		//비밀번호 재설정용 메소드
		return sqlSession.update("fwdChange", member);
	}

	public Member emailCheckMethod(String tomail) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("emailCheck",tomail);
	}
	
	
}
