package com.smhrd.model;

import java.util.ArrayList;
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
	
	public ArrayList<YoutubeVO> showYoutube() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<YoutubeVO> list = sqlSession.selectList("showYoutube");
		sqlSession.close();
		
		return (ArrayList<YoutubeVO>)list;
	}
}
