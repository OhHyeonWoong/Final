package com.kh.goodluck.member.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.admin.model.vo.LoginStatistics;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.member.model.vo.MemberList;
import com.kh.goodluck.member.model.vo.Memberandscore;

@Repository("memberDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public MemberDao() {
	}

	public Member loginCheck(Member member) {
		// 로그인용 메소드
		return sqlSession.selectOne("loginCheck", member);
	}

	public int findPwdMethod(Member member) {
		// 비밀번호 재설정용 메소드
		return sqlSession.update("fwdChange", member);
	}

	public Member emailCheckMethod(String tomail) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("emailCheck", tomail);
	}

	public Member findIdMethod(Member member) {
		// 아이디 찾기용 메소드
		return sqlSession.selectOne("findId", member);
	}

	public boolean idDuplicate(String member_id) {
		// 아이디 중복검사용 메소드(전동기)
		if (sqlSession.selectOne("idDuplicateCheck", member_id) == null) {
			return true;
		} else {
			return false;
		}
	}

	public boolean emailDuplicate(String member_email) {
		// 이메일 중복 검사용 메소드(전동기)
		if (sqlSession.selectOne("emailDuplicateCheck", member_email) == null) {
			return true;
		} else {
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

	public int decreaseCash(HashMap<Object, Object> map) {
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

	public LoginStatistics selectIDYNCheck(String member_id) {
		return sqlSession.selectOne("selectIDYNCheck", member_id);
	}

	public Memberandscore searchmemberInfobyBoardNo(int pk) {
		return sqlSession.selectOne("searchmemberInfobyBoardNo", pk);
	}

	public Memberandscore searchmemberInfobyBoardNo1(int pk) {
		return sqlSession.selectOne("searchmemberInfobyBoardNo1", pk);
	}

	public int insertItem(ITEMLIST item) {
		return sqlSession.insert("insertNewItem", item);
	}

	public Memberandscore searchAPPLICANTInfobyBoardNo(int pk) {
		return sqlSession.selectOne("searchAPPLICANTInfobyBoardNo", pk);
	}

	public Memberandscore searchRESERVATIONInfobyBoardNo(int pk) {
		return sqlSession.selectOne("searchRESERVATIONInfobyBoardNo", pk);
	}

	public Member getmemberinfobykakaopk(int parseInt) {
		return sqlSession.selectOne("getmemberinfobykakaopk", parseInt);
	}

	public int updatetoken(HashMap<Object, Object> map) {
		return sqlSession.update("updatetoken", map);
	}

	public int updatekakaoinfo(HashMap<Object, Object> map) {
		return sqlSession.update("updatekakaoinfo", map);
	}

	public void updateaccessToken(HashMap<Object, Object> map) {
		sqlSession.update("updateaccessToken", map);
	}

	public int paycash(HashMap<Object, Object> map2) {
		return sqlSession.update("paycash", map2);
	}

	public int insertpaylog(HashMap<Object, Object> map2) {
		return sqlSession.insert("insertpaylog", map2);
	}

	public int insertScore(Member member) {
		return sqlSession.insert("insertScore", member);
	}


	public int insertLbjMilegePayLog(HashMap<String, Object> map) {
		return sqlSession.insert("insertLbjMilegePayLog", map);
	}

	public int updateAdminCash(HashMap<String, Object> map) {
		return sqlSession.update("updateAdminCash", map);
	}

	public int ukjaeWriteCountOneMinus(String loginUser) {
		//욱재 - 서비스 등록을 한 유저의 WriteCount를 1회 감소시키는 메소드(파라미터-member_id)
		return sqlSession.update("ukjaeWriteCountOneMinus", loginUser);
	}

	public int updateUserKakaoToken(HashMap<Object, Object> map) {
		return sqlSession.update("updateUserKakaoToken", map);
	}

}
