package com.kh.goodluck.member.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.goodluck.admin.model.vo.LoginStatistics;
import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.member.model.vo.MemberList;
import com.kh.goodluck.member.model.vo.Memberandscore;

public interface MemberService {
	public abstract Member loginCheck(Member member);
	public abstract int findPwdMethod(Member member);
	public abstract Member emailCheckMethod(String tomail);
	public abstract Member findIdMethod(Member member);
	public abstract boolean idConfirm(String member_id);
	public abstract boolean emailConfirm(String member_email);
	public abstract int memberEnroll(Member member);

	//지석님 서비스 시작
	public abstract int checkusercash(String memberid);
	public abstract int decreaseCash(HashMap<Object,Object> map);
	public abstract Memberandscore searchmemberInfobyBoardNo(int pk);
	public abstract Memberandscore searchmemberInfobyBoardNo1(int pk);
	public abstract Member getmemberinfobykakaopk(int parseInt);
	public abstract int updatetoken(HashMap<Object, Object> map);
	public abstract int updatekakaoinfo(HashMap<Object, Object> map);
	public abstract Memberandscore searchAPPLICANTInfobyBoardNo(int pk);
	public abstract Memberandscore searchRESERVATIONInfobyBoardNo(int pk);
	//지석님 서비스 끝
	
	public abstract int updateMemberInfo(Member m);
	public abstract int updateLastLogin(String member_id);
	public abstract int deleteMemberOut(String member_id);
	public abstract List<MemberList> adminMemberList();
	public abstract int updateMemberCashMethod(Member m);

	public abstract int insertLoginStatistics(String member_id);
	public abstract LoginStatistics selectIdYNCheck(String member_id);


	
	

	

}
