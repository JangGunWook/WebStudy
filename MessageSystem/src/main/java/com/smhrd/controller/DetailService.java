package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;


@WebServlet("/DetailService")
public class DetailService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// 사용자가 몇번째 개시글을 선택했는지 선택했는지
		// 해당 값을 가져와 detail.jsp에 뛰워 주기
		
		String num = request.getParameter("num");
		
		BoardDAO dao = new BoardDAO();
		
		Board board = dao.detail(num);
		
		request.setAttribute("board", board);
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/BoardDetail.jsp");
		rd.forward(request, response);
	}

}
