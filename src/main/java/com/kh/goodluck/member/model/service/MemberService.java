package com.kh.goodluck.member.model.service;

import com.kh.goodluck.member.model.vo.Member;

public interface MemberService {
	public abstract Member loginCheck(Member member);
	public abstract int findPwdMethod(Member member);
	public abstract Member emailCheckMethod(String tomail);
	public abstract Member findIdMethod(Member member);
	public abstract boolean idConfirm(String member_id);
	public abstract boolean emailConfirm(String member_email);
}
