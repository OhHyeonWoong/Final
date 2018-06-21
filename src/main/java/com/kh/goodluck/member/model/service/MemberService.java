package com.kh.goodluck.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kh.goodluck.admin.model.vo.LoginStatistics;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.member.model.vo.MemberList;
import com.kh.goodluck.member.model.vo.Memberandscore;
import com.kh.goodluck.member.model.vo.MyReview;
import com.kh.goodluck.member.model.vo.Paylog;
 
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
	public abstract void updateaccessToken(HashMap<Object, Object> map);
	public abstract int paycash(HashMap<Object, Object> map2);
	public abstract int insertpaylog(HashMap<Object, Object> map2);
	public abstract Memberandscore getmemberinfobymemberid(String str);
	//지석님 서비스 끝    
	
	public abstract int updateMemberInfo(Member m);
	public abstract int updateLastLogin(String member_id);
	public abstract int deleteMemberOut(String member_id);
	public abstract List<Member> adminMemberList(Member member);
	public abstract int updateMemberCashMethod(Member m);

	public abstract int insertLoginStatistics(String member_id);
	public abstract LoginStatistics selectIdYNCheck(String member_id);
	public abstract int insertNewItem(ITEMLIST item);
	public abstract int scoreInput(Member member);
	public abstract int insertLbjMilegePayLog(HashMap<String, Object> map);
	public abstract int updateAdminCash(HashMap<String, Object> map);
	
	//욱재 - 서비스 등록을 한 유저의 WriteCount를 1회 감소시키는 메소드(파라미터-member_id)
	public abstract int ukjaeWriteCountOneMinus(String loginUser);

	//욱재 - 서비스 등록을 한 유저의 Cash를 리턴받는 메소드
	public abstract int ukjaeuserCashMinusCheck(String loginUser);
	//욱재 - 서비스 등록을 한 유저의 Cash에서 등록금액을 차감시킨후 업데이트시키는 메소드
	public abstract int ukjaeuserCashMinus(Member updatemember);

	public abstract int updateUserKakaoToken(HashMap<Object, Object> map);
	
	public abstract int insertDBDummyData(Board board);
	public abstract int insertDBTrade(int no);
	public abstract int insertMemberDummy(Member m);
	public abstract List<MyReview> selectMyReview(String member_id);

	public abstract List<Paylog> selectMyChargeMoney(String member_id);
	int countRandomItemNum();
	int countAllItemNum();

  


}
