package com.test.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.model.Member;
import com.test.model.MemberDAO;

@WebServlet("/MemberList")
public class MemberListPrograme extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member member = new Member();
		MemberDAO dao = new MemberDAO();
		
		ArrayList<Member> memberlist= dao.memberlist();
		
		System.out.println(memberlist);
		
		request.setAttribute("memberlist", memberlist);
		
		RequestDispatcher rd = request.getRequestDispatcher("goMain");
		rd.forward(request, response);
	}

}
