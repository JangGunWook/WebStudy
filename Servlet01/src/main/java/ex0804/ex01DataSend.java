package ex0804;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DataSend")
public class ex01DataSend extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html; charset= UTF-8");
		// 1. 요청받은 데이터 꺼내오기
		String data = request.getParameter("data");
		
		
		// 2. 요청받은 데이터 화면에 출력하기
		PrintWriter out= response.getWriter();
		
		out.print("<h1>"+data+"</h1>");
		out.print("<br>");
		
		out.print("오늘 점심은 전복해물짬뽕입니다");
		
	}

}
