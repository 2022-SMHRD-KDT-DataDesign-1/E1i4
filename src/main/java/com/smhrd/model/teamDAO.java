package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class teamDAO {
	
	SqlSessionFactory sqlSessionFactory =  SqlSessionManager.getSqlSession();	
	
	public List<teamVO> wishList(String member_id) {
		List<teamVO> list = null;
    	SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = sqlSession.selectList("wishList", member_id);
		sqlSession.close();
		return list;
	}
	
}
