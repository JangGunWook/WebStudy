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


@WebServlet("/MemberList")
public class MemberListProgram extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member member = new Member();
		
		MemberDAO dao = new MemberDAO();
		
		List<Member> memberList = dao.memberList();
		
		request.setAttribute("memberList", memberList);
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/MemberList.jsp");
		rd.forward(request, response);
		
		
	}

}
