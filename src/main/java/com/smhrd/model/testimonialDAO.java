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
		
	// 찜기능	
		public int likeCheck(testimonialVO vo) {
			
			int cnt = 0;
			
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			cnt = sqlSession.insert("likeCheck", vo);
			sqlSession.close();
			
			return cnt;
		}
		// searchMovie
		public testimonialVO deatilMovie(String movie_id) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			testimonialVO vo = sqlSession.selectOne("detailMovie", movie_id);
			sqlSession.close();
			
			return vo;
		}
		
		
		public List<testimonialVO> searchMovie(String searchKeyword) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			List<testimonialVO> list = sqlSession.selectList("searchMovie", searchKeyword);
			sqlSession.close();
			
			return list;
		} 
		
		// searchYoutube
		public List<testimonialVO> detailYoutube(String movie_id) {
			
			List<testimonialVO> youtube_list = null;
			
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			youtube_list = sqlSession.selectList("com.smhrd.db.testimonialMapper.detailYoutube",movie_id);
			sqlSession.close();
			
			return youtube_list;
		}
		
		
		public List<testimonialVO> recommendMovie(String member_id) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			List<testimonialVO> list = sqlSession.selectList("recommendMovie", member_id);
			sqlSession.close();
			
			return list;
		}
		
		// 추천 페이지
}
