package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
	

	// 자바와 DB의 연결을 위한 작업! --> 어떤 작엄을 처리할 것인지 연결!
	
		// 0. sqlSessionManger(클래스의 이름) 기능 불러오기
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		
		//회원가입을 진행할 수 있는 메소드!
		public int join(Member member) {
			// 1. database 연결 -> 연결 객체를 대여!
			// true == auto commit과 같은 기능
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
			// 2. sql문장 선택
			// 실행하고자 하는 문장은 MemberMapper.xml에 정의 되어 있어야 한다!
			int cnt = sqlSession.insert("join", member);
			//int cnt = sqlSession.selectOne("join", member);
			//int cnt = sqlSession.selectList("join", member);
			// 3. 결과값 처리 -> 성고시 Main.jsp / 실패시 Join.jsp
			
			// 4. database 종료
			sqlSession.close();
			
			return cnt;
		}
		
		
		
		// 로그인 메소드
		public String Login(Member member) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
			String name = sqlSession.selectOne("Login", member);
			
			sqlSession.close();
			
			return name;
		}
		
		
		
		
		// 모든 회원계정 확인
		public List<Member> memberList() {
			
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
			
			List<Member> list = sqlSession.selectList("memberList");
			
			sqlSession.close();
			
			return list;
		}
		
		
		
}
