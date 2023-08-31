package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.smhrd.model.Message;
import com.smhrd.model.MessageDAO;
import com.smhrd.model.WebMember;


@WebServlet("/ShowMessageService")
public class ShowMessageService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MessageDAO dao = new MessageDAO();
		
		HttpSession session = request.getSession();
		WebMember info = (WebMember)session.getAttribute("info");
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=UTF-8");
		
		Gson gson = new Gson();
		
		
		ArrayList<Message>list = dao.showMessage(info.getEmail());
		
		String showmessage = gson.toJson(list);
		
		PrintWriter out = response.getWriter();

		out.print(showmessage);
		
		
	}

}
