package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.db.SqlSessionManager;

public class indexDAO {
	
SqlSessionFactory sqlSessionFactory =  SqlSessionManager.getSqlSession();	
	
	public List<indexVO> movieList(String genre) {
    	SqlSession sqlSession = sqlSessionFactory.openSession(true);
    	List<indexVO> list = sqlSession.selectList("movieList", genre);
		sqlSession.close();
		
		return list;
	}

}
