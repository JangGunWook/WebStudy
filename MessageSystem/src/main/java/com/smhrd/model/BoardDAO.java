package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class BoardDAO {
   
   SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
   
   
   //게시판 글쓰기 기능
   public int write(Board board) {
      SqlSession sqlSession = sqlSessionFactory.openSession(true);
      
      int cnt = sqlSession.insert("write", board);
      
      sqlSession.close();
      
      return cnt;
   }
   
   //게시판 출력 기능
   public ArrayList<Board> showboard() {
     SqlSession sqlSession = sqlSessionFactory.openSession(true);
      
     ArrayList<Board> boardlist= (ArrayList)sqlSession.selectList("showboard");
      
     sqlSession.close();
      
     return boardlist;
   }
   
   public Board detail (String num) {
	   
	     SqlSession sqlSession = sqlSessionFactory.openSession(true);
	     
	     Board board = sqlSession.selectOne("detail", num);
	     
	     sqlSession.close();
	     
	     return board;
}

}