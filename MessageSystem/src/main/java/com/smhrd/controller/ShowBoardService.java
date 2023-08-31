package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;


@WebServlet("/ShowBoardService")
public class ShowBoardService extends HttpServlet {

	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		BoardDAO dao = new BoardDAO();
		
		
		ArrayList<Board> showboard = dao.showboard();
		
		
		
		
		request.setAttribute("showboard", showboard);
		System.out.print("SHOWBOARD : " + showboard);
		HttpSession session = request.getSession();
		session.setAttribute("showboard", showboard);
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/BoardMain.jsp");
		rd.forward(request, response);
	
	}

}
