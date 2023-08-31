package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.google.gson.Gson;
import com.smhrd.database.SqlSessionManager;

public class MessageDAO {
	
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	//메세지 보내기
	public int insertMsg(Message msg) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		
		int cnt = sqlSession.insert("insertMsg", msg);
		
		sqlSession.close();
		
		return cnt;
	}
	
	// 메세지 확인하기
	
	public ArrayList<Message> showMessage(String email) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	   
		
		ArrayList<Message> list = (ArrayList)sqlSession.selectList("showMessage", email);
		
		sqlSession.close();

		return list;
		
	}
	
	
	//메세지 삭제
	
	public int delete(String num){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		
		int cnt = sqlSession.delete("delete", num);
		
		sqlSession.close();
		
		return cnt;
		
		
	}
	

}
