package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class teamDAO {
	
	SqlSessionFactory sqlSessionFactory =  SqlSessionManager.getSqlSession();	
	
	public List<teamVO> wishList() {
		List<teamVO> list = null;
    	SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = sqlSession.selectList("wishList");
		sqlSession.close();
		return list;
	}
	
}
