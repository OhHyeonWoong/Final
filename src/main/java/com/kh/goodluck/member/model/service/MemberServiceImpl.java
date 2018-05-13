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
}