package com.smhrd.model;

import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class BoardDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
}
