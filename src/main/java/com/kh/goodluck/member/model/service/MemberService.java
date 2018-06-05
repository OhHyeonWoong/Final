package com.kh.goodluck.member.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.member.model.vo.MemberList;

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
	//지석님 서비스 끝
	
	public abstract int updateMemberInfo(Member m);
	public abstract int updateLastLogin(String member_id);
	public abstract int deleteMemberOut(String member_id);
	public abstract List<MemberList> adminMemberList();
	public abstract int updateMemberCashMethod(Member m);
}
