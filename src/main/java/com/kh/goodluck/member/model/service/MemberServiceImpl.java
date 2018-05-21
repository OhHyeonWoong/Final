package com.kh.goodluck.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.goodluck.member.model.dao.MemberDao;
import com.kh.goodluck.member.model.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public Member loginCheck(Member member) {
		//로그인용 메소드
		return memberDao.loginCheck(member);
	}
	
	@Override
	public int findPwdMethod(Member member) {
		//비밀번호 재설정 메소드
		return memberDao.findPwdMethod(member);
	}
	
	@Override
	public Member emailCheckMethod(String tomail) {
		//비밀번호 재설정 메일 보내기 전에 이메일 있는지 없는지 체크
		return memberDao.emailCheckMethod(tomail);
	}
	
	@Override
	public Member findIdMethod(Member member) {
		//아이디 찾기용 메소드
		return memberDao.findIdMethod(member);
	}
}