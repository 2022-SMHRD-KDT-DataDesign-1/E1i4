package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public List<MemberVO> showMember(MemberVO vo) {
		List<MemberVO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = sqlSession.selectList("showMember", vo);
		sqlSession.close();
		
		return list;
	}
	
	// 로그인
	public int insertMember(MemberVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("com.smhrd.db.MemberMapper.insertMember", vo);
		sqlSession.close();
		
		return cnt;
	}
	public MemberVO login(MemberVO vo) {
		MemberVO login_vo = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		login_vo = sqlSession.selectOne("selectOne", vo);
		sqlSession.close();
		return login_vo;
	}
	
	// 회원정보수정
	public int updateMember(MemberVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.update("updateMember", vo);
		sqlSession.close();
		
		return cnt;
	}
	
	// 회원 삭제
	public int deleteMember(MemberVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.update("deleteMember", vo);
		sqlSession.close();
		
		return cnt;
	}
}
