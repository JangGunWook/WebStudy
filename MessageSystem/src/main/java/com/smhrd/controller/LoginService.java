package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.WebMember;

public class LoginService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String email = request.getParameter("email");
	      String pw = request.getParameter("pw");
	      
	      
	      HttpSession session = request.getSession();

	      MemberDAO dao = new MemberDAO();
	      WebMember m = new WebMember(email, pw, "", "");

	      WebMember info = dao.login(m);
	      
	      String moveurl ="";

	      if (info != null) {
	         moveurl = "WEB-INF/Main.jsp";
	         session.setAttribute("info", info);
	      }else {
	    	  moveurl = "WEB-INF/Main.jsp";
	      }
	      
	      return moveurl; 
	      
	}

}
