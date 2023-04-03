package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class testimonialDAO {


	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 상세페이지 - 영화 정보
		public testimonialVO SelectMovie(testimonialVO vo){

			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			testimonialVO movie_one = sqlSession.selectOne("com.smhrd.db.testimonialMapper.SelectMovie",vo);
			sqlSession.close();
			
			return movie_one;
		}
		
		public testimonialVO deatilMovie(String movie_id) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			testimonialVO vo = sqlSession.selectOne("detailMovie", movie_id);
			sqlSession.close();
			
			return vo;
		}
		
		// search
		public List<testimonialVO> searchMovie(String searchKeyword) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			List<testimonialVO> list = sqlSession.selectList("searchMovie", searchKeyword);
			sqlSession.close();
			
			return list;
		}
}
