package com.kh.goodluck.member.model.service;

import com.kh.goodluck.member.model.vo.Member;

public interface MemberService {
	public abstract Member loginCheck(Member member);
	public abstract int findPwdMethod(Member member);
	public abstract Member emailCheckMethod(String tomail);
}
