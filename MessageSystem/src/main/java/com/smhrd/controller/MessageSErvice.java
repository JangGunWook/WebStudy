package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Message;
import com.smhrd.model.MessageDAO;
import com.smhrd.model.Script;

/**
 * Servlet implementation class MessageSErvice
 */
@WebServlet("/MessageService")
public class MessageSErvice extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String receiveEmail = request.getParameter("receiveEmail");
		String sendName = request.getParameter("sendName");
		String message = request.getParameter("message");
		
		
		MessageDAO dao = new MessageDAO();
		Message msg = new Message();
		msg.setMessage(message);
		msg.setReceiveEmail(receiveEmail);
		msg.setSendName(sendName);
		
		int cnt = dao.insertMsg(msg);
		
		if(cnt>0) {
		
			Script.href("전송성공","goMain", response);
		}else {
			Script.href("전송실패","goMain", response);
			
		}
	
			
		
	}

}
