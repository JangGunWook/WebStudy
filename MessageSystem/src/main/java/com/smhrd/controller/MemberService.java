package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.WebMember;


@WebServlet("/MemberService")
public class MemberService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		MemberDAO dao = new MemberDAO();
		
		
		
		List<WebMember> list= dao.showmember();
		
		ArrayList<WebMember> showmember = (ArrayList<WebMember>)list;
		
		HttpSession session = request.getSession();
		session.setAttribute("showmember", showmember);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/ShowMember.jsp");
		rd.forward(request, response);
		
		
	}

}
