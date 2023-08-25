package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;


@WebServlet("/JoinProgram")
public class JoinProgram extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 0. url Mapping
		// @Web
		
		// 1. 인코딩
		request.setCharacterEncoding("utf-8");
		
		// 2. 데이터 수집
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		// 3. 기능 처리
		// - DB연결 정보 정리! -> Properties파일생성(일반File)
		// - DB 정보를 활용(연결)할 수 있는 파일(xml) -> config.xml(일반xml)
		//	 --> 일반 xml 생성 (관련 코드 : mybites 사이트 활용!)
		//	 --> sql 파일(Mapper.xml)연결 지정
		// - Mapper.xml 생성 -> Mybaties전용 .xml 생성
		// - SqlSessionManager 생성
		// - MemberDAO 클래스
		// - Member클래스 생성
		
		Member member = new Member(id,pw,name);
		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.join(member);
	
		
		if(cnt>0) {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/Main.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/Join.jsp");
			rd.forward(request, response);
		}
		
		
		
		
		
		
		
		// 4. view 처리
	}

}
