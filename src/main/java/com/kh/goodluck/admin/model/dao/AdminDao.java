package com.kh.goodluck.admin.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.admin.model.vo.LoginStatistics;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.item.model.vo.ItemPackage;
import com.kh.goodluck.item.model.vo.RandomBox_all;
import com.kh.goodluck.item.model.vo.RandomBox_emo;
import com.kh.goodluck.item.model.vo.RandomBox_time;
import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.qna.model.vo.QnaAnswer;

@Repository("adminDao")
public class AdminDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<LoginStatistics> selectAdminStatistics() {
		return sqlSession.selectList("selectAdminStatistics");
	}

	public List<QNA> selectAdminQnaIng(HashMap<Object, Object> map1) {
		return sqlSession.selectList("selectAdminQnaIng",map1);
	}

	public List<QNA> selectAdminQnaEnd(HashMap<Object, Object> map2) {
		return sqlSession.selectList("selectAdminQnaEnd",map2);
	}

	public int selectAdminQnaIngCount() {
		return sqlSession.selectOne("selectAdminQnaIngCount");
	}

	public int selectAdminQnaEndCount() {
		return sqlSession.selectOne("selectAdminQnaEndCount");
	}

	public QNA selectAdminQnaDetail(int question_no) {
		return sqlSession.selectOne("selectAdminQnaDetail", question_no);
	}

	public int insertAdminQnaWrite(QnaAnswer qa) {
		return sqlSession.insert("insertAdminQnaWrite", qa);
	}

	public int updateQuestion(int question_no) {
		return sqlSession.update("updateQuestion", question_no);
	}

	public List<ITEMLIST> listOfallItems() {
		return sqlSession.selectList("ad_selectAllItemList");
	}

	public List<ItemPackage> listOfPackage() {
		return sqlSession.selectList("ad_selectPackageItemList");
	}

	public List<RandomBox_all> listOfRandomAll() {
		return sqlSession.selectList("ad_selectRandomAllList");
	}
	
	public List<RandomBox_emo> listOfRandomEmo() {
		return sqlSession.selectList("ad_selectRandomEmoList");
	}
	
	public List<RandomBox_time> listOfRandomTime() {
		return sqlSession.selectList("ad_selectRandomTimeList");
	}
}
