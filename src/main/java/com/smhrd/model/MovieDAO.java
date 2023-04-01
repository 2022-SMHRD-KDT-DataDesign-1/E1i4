package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MovieDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int insertMovie(MovieVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("insertMovie", vo);
		sqlSession.close();
		
		return cnt;
	}
	
	public List<MovieVO> showMovie(MovieVO vo) {
		List<MovieVO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = sqlSession.selectList("showMovie", vo);
		sqlSession.close();
		
		return list;
	}
	
	
	// search
	public List<MovieVO> searchMovie(String searchKeyword) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<MovieVO> list = sqlSession.selectList("searchMovie", searchKeyword);
		sqlSession.close();
		
		return list;
	}
}
