package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class testimonialDAO {


	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 상세페이지 - 영화 정보
		public testimonialVO SelectMovie(testimonialVO vo){
			
			testimonialVO movie_one = null;
			
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			movie_one = sqlSession.selectOne("com.smhrd.db.testimonialMapper.SelectMovie", vo);
			sqlSession.close();
			
			return movie_one;
		}
		
	// 찜기능	
		public int likeCheck(testimonialVO vo) {
			
			int cnt = 0;
			
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			cnt = sqlSession.insert("likeCheck", vo);
			sqlSession.close();
			
			return cnt;
		}
}
