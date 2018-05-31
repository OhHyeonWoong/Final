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
	public Member findIdMethod(Member member) {
		//아이디 찾기용 메소드
		return sqlSession.selectOne("findId", member);
	}
	public boolean idDuplicate(String member_id) {
		//아이디 중복검사용 메소드(전동기)
		if(sqlSession.selectOne("idDuplicateCheck", member_id)==null) {
		return true;
		}else{
		return false;
		}
	}
	public boolean emailDuplicate(String member_email) {
		//이메일 중복 검사용 메소드(전동기)
		if(sqlSession.selectOne("emailDuplicateCheck", member_email)==null) {
			return true;
		}else {
			return false;
		}
	}
	public int memberInsert(Member member) {
		return sqlSession.insert("memberInsert", member);
	}
	public int updateMemberInfo(Member m) {
		return sqlSession.update("updateMember", m);
	}
	
}
