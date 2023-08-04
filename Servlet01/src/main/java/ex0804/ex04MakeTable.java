package ex0804;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MakeTable")
public class ex04MakeTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset= UTF-8");
		
		String num = request.getParameter("num");
		
		int number = Integer.parseInt(num);
		
		 PrintWriter out = response.getWriter();
		
		out.print("<table border = '1'>");
		out.print("<tr>");
		for (int i = 1; i < number+1; i++) {
			out.print("<td>"+i+"</td>");
		}
		out.print("</tr>");
		out.print("</table>");
		
	}

}
