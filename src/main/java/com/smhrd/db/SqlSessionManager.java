package com.smhrd.db;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
// mybatis 설정파일을 읽어와서 DB와 연결 후 세션을 반환

public class SqlSessionManager { // DB연결, 해제
	// SqlSessionFactory : SqlSession(DB연결, sql(insert, delete..)실행, 트랜잭션 관리) 생성
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		// 무조건 static에 들어가야함
		// static영역은 실행전부터 올라가있으므로 안에 아래의 코드가 들어가있어야 무조건 실행됨
		try {
			
			String resource = "com/smhrd/db/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			// Reader reader = Resources.getResourceAsStream(resource);
			// SqlSessionFactoryBuilder : mybatis 설정파일 바탕으로 SqlSessionFactory 생성
			sqlSessionFactory =
					new SqlSessionFactoryBuilder().build(inputStream);
		}catch(IOException e) {
			e.printStackTrace();
		}
		
	}
	
	// DAO(Class)에서 사용
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
	}
	

}
