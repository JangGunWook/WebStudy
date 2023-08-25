package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;


@WebServlet("/Login")
public class LoginProgram extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// 1. 인코딩
			request.setCharacterEncoding("utf-8");
		
		// 2. 데이터수집
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
		
		// 3. 기능처리
			Member member = new Member(id,pw,"");
			member.setId(id);
			member.setPw(pw);
			
			MemberDAO dao = new MemberDAO();
			
			String name = dao.Login(member);
			
			
		
		// 4. view처리
			if(name != null) {
				// 성공 - > LoginSuccess.jsp
				
				request.setAttribute("name", name);
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/LoginSuccess.jsp");
				rd.forward(request, response);
				
				
				
			}else {
				// 실패 - > LoginFail.jsp
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/LoginFail.jsp");
				rd.forward(request, response);
			}
			
		
		
		
	}

}
