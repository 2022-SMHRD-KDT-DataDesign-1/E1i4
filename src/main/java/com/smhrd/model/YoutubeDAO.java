package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class YoutubeDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int insertYoutube(YoutubeVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("insertYoutube", vo);
		sqlSession.close();
		
		return cnt;
	}
	
	public List<YoutubeVO> showMovie(YoutubeVO vo) {
		List<YoutubeVO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = sqlSession.selectList("showMovie", vo);
		sqlSession.close();
		
		return list;
	}
}
