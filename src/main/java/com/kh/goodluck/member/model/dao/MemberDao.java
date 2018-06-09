package com.kh.goodluck.member.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.member.model.vo.MemberList;

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

	public int checkusercash(String memberid) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("checkusercash", memberid);
	}
	public int updateMemberInfo(Member m) {
		return sqlSession.update("updateMember", m);
	}
	public int decreaseCash(HashMap<Object,Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.update("decreaseCash", map);
	}
	public int updateLastLogin(String member_id) {
		return sqlSession.update("updateLastLogin", member_id);
	}
	public int deleteMemberOut(String member_id) {
		return sqlSession.delete("deleteMemberOut", member_id);
	}
	public List<MemberList> adMemberList() {
		return sqlSession.selectList("adminMemberList");
	}
	public int updateMemberCashMethod(Member m) {
		return sqlSession.update("updateMemberCash", m);
	}
	public int insertLoginStatistics(String member_id) {
		return sqlSession.insert("insertLoginStatistics", member_id);
	}

}
