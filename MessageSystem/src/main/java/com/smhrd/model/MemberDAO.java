package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
	
	public static void main(String[] args) {
		
		
		
//		String  pw = "123";
//		String  phone = "123";
//		String  address = "123";
//		
//		WebMember member = new WebMember("",pw,phone,address);
//		MemberDAO dao = new MemberDAO();
//		
//		
//		int num =  dao.update(member); 
//		
//		System.out.println(num);
	}
	

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	

	public int join(WebMember member) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.insert("join", member);
		
		sqlSession.close();
		
		return cnt;

	}

	public WebMember login(WebMember member) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		WebMember login = sqlSession.selectOne("login", member);
		
		sqlSession.close();
		
		return login;

	}
	
	public int update(WebMember member) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int update = sqlSession.update("update", member);
		
		sqlSession.close();
		
		return update;
				
	}
	
	public List<WebMember> showmember(){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<WebMember> showmember = sqlSession.selectList("showmember", sqlSession);
		
		sqlSession.close();

		
		return showmember;
	}


}
