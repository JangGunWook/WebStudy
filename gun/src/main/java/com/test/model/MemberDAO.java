package com.test.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.db.SqlSessionManager;

public class MemberDAO {
	
	// 전체회원명
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public ArrayList memberlist() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList<Member> memberlist = (ArrayList) sqlSession.selectList("memberlist");
		
		sqlSession.close();
		
		return memberlist;
		
	}

}
