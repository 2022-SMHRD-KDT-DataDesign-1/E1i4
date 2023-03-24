package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class BoardDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public ArrayList<BoardVO> showReview(BoardVO vo) {
		SqlSession sqlSession =  sqlSessionFactory.openSession(true);
		ArrayList<BoardVO> review_list = (ArrayList)sqlSession.selectList("showReview", vo);
		sqlSession.close();
		
		return review_list;
	}
	
	public int insertReview(BoardVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("insertReview", vo);
		
		return cnt;
	}
}
