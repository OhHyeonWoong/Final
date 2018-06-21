package com.kh.goodluck.member.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.goodluck.admin.model.vo.LoginStatistics;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.member.model.dao.MemberDao;
import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.member.model.vo.MemberList;
import com.kh.goodluck.member.model.vo.Memberandscore;

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
	
	@Override//비밀번호 재설정 메일 보내기 전에 이메일 있는지 없는지 체크
	public Member emailCheckMethod(String tomail) {
		return memberDao.emailCheckMethod(tomail);
	}

	
	@Override//아이디 찾기용
	public Member findIdMethod(Member member) {
		return memberDao.findIdMethod(member);
	}
	
	@Override//아이디 중복검사
	public boolean idConfirm(String member_id) {
		return memberDao.idDuplicate(member_id); 
	}
	
	@Override//이메일 인증
	public boolean emailConfirm(String member_email) {
		return memberDao.emailDuplicate(member_email);
	}
	
	@Override
	public int updateMemberInfo(Member m) {
		return memberDao.updateMemberInfo(m);
	}
	
	@Override
	public int updateLastLogin(String member_id) {
		return memberDao.updateLastLogin(member_id);
	}
	
	@Override
	public int deleteMemberOut(String member_id) {
		return memberDao.deleteMemberOut(member_id);
	}
	
	@Override//회원 가입 메소드
	public int memberEnroll(Member member) {
		return memberDao.memberInsert(member);
	}

	@Override//아이템구매에 앞서 회원의 캐시조회
	public int checkusercash(String memberid) {
		// TODO Auto-generated method stub
		return memberDao.checkusercash(memberid);
	}

	@Override//아이템구매후, 캐시삭감.
	public int decreaseCash(HashMap<Object,Object> map) {
		// TODO Auto-generated method stub
		return memberDao.decreaseCash(map);
	}
	
	@Override//어드민 페이지 회원 리스트 출력하는 메소드
	public List<Member> adminMemberList(Member member) {
		
		return memberDao.adMemberList(member);
	}
	
	@Override
	public int updateMemberCashMethod(Member m) {
		//멤버 캐시 결제
		return memberDao.updateMemberCashMethod(m);
	}

	@Override
	public Memberandscore searchmemberInfobyBoardNo(int pk) {
		// 보드번호로 작성자 정보뽑기.
		return  memberDao.searchmemberInfobyBoardNo(pk);
	}
	
	@Override
	public int insertLoginStatistics(String member_id) {
		//로그인 통계 내는 용 메소드
		return memberDao.insertLoginStatistics(member_id);
	}
	
	@Override
	public LoginStatistics selectIdYNCheck(String member_id) {
		// loginStatistics 에 아이디 존재하는지 확인
		return memberDao.selectIDYNCheck(member_id);
	}

	@Override
	public Memberandscore searchmemberInfobyBoardNo1(int pk) {
		// 
		return memberDao.searchmemberInfobyBoardNo1(pk);
	}

	@Override
	public Member getmemberinfobykakaopk(int parseInt) {
		// TODO Auto-generated method stub
		return memberDao.getmemberinfobykakaopk(parseInt);
	}

	@Override
	public int updatetoken(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return memberDao.updatetoken(map);
	}

	@Override
	public int updatekakaoinfo(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return memberDao.updatekakaoinfo(map);
	}

	
	@Override//신규 아이템 등록
	public int insertNewItem(ITEMLIST item) {
		return memberDao.insertItem(item);
	}

	@Override
	public Memberandscore searchAPPLICANTInfobyBoardNo(int pk) {
		// TODO Auto-generated method stub
		
		return memberDao.searchAPPLICANTInfobyBoardNo(pk);
	}

	@Override
	public Memberandscore searchRESERVATIONInfobyBoardNo(int pk) {
		// TODO Auto-generated method stub
		return memberDao.searchRESERVATIONInfobyBoardNo(pk);
	}

	@Override
	public void updateaccessToken(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		memberDao.updateaccessToken(map);
	}
	
	@Override
	public int scoreInput(Member member) {
		return memberDao.insertScore(member);
	}
	@Override
	public int paycash(HashMap<Object, Object> map2) {
		// TODO Auto-generated method stub
		return  memberDao.paycash(map2);
	}

	@Override
	public int insertpaylog(HashMap<Object, Object> map2) {
		// TODO Auto-generated method stub
		return  memberDao.insertpaylog(map2);
	}
	
	@Override
	public int insertLbjMilegePayLog(HashMap<String, Object> map) {
		// 회원들이 결제 시 수수료 10%를 관리자 통장으로 넣어줌
		return memberDao.insertLbjMilegePayLog(map);
	}
	
	@Override
	public int updateAdminCash(HashMap<String, Object> map) {
		//관리자 id 캐시 갱신
		return memberDao.updateAdminCash(map);
	}
	
	@Override
	public int ukjaeWriteCountOneMinus(String loginUser) {
		//욱재 - 서비스 등록을 한 유저의 WriteCount를 1회 감소시키는 메소드(파라미터-member_id)
		return memberDao.ukjaeWriteCountOneMinus(loginUser);
	}
	
	@Override
	public int countAllItemNum() {
		return memberDao.getCountforAllItems();
	}
	
	@Override
	public int countRandomItemNum() {
		return memberDao.getCountforRandomItems();
	}
}	
