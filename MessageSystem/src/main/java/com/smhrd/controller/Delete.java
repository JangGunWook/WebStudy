package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MessageDAO;
import com.smhrd.model.Script;

@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String num =  request.getParameter("num");
		
		MessageDAO dao = new MessageDAO();
		int cnt = dao.delete(num);
		
		
		if(cnt>0) {
			Script.href("삭제를 성공하였습니다","goMain", response);
			
			
		}else {
			Script.href("삭제를 실패하였습니다","goMain", response);
		}
		
		
	}

}
