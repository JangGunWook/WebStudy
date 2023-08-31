package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.WebMember;


@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			request.setCharacterEncoding("utf-8");
			
			HttpSession session = request.getSession();
			WebMember info = (WebMember)session.getAttribute("info");
			String email = info.getEmail();
			
			System.out.println(email);
			
			String pw = request.getParameter("pw");
			String phone =request.getParameter("phone");
			String address =request.getParameter("address");
			
			WebMember member = new WebMember(email,pw,phone,address);
			
			MemberDAO dao = new MemberDAO();
			
			int cnt = dao.update(member);
			
			if(cnt>0) {
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/Main.jsp");
				rd.forward(request, response);
				
			}
			
	
	
	}

}
