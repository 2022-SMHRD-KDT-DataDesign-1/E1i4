package com.smhrd.model;

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
	
	// 상세페이지 - 영화 정보
	public MovieVO SelectMovie(MovieVO vo){
		
		MovieVO movie_one = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		movie_one = sqlSession.selectOne("com.smhrd.db.MovieMapper.SelectMovie", vo);
		sqlSession.close();
		
		return movie_one;
	}
}
