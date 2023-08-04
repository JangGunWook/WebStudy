package ex0803;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// urlmapping
@WebServlet("/Table")
public class ex02TableAnswer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			// 1) 출력을 도와주는 도구 꺼내오기
			PrintWriter out	= response.getWriter();
		
			// 2) 1행 6얄 테이블 출력
//			out.print("<tabl border = 1>"
//						+"<tr>"
//							+"<td>"+1+"</td>"
//							+"<td>"+1+"</td>"
//							+"<td>"+1+"</td>"
//							+"<td>"+1+"</td>"
//							+"<td>"+1+"</td>"
//							+"<td>"+1+"</td>"
//						+"</tr>"
//					+"</table>"
//					);
					
			out.print("<table border = '1'>");
			out.print("<tr>");
			for (int i = 1; i < 7; i++) {
				out.print("<td>"+i+"</td>");
			}
			out.print("</tr>");
			out.print("</table>");
					
					
					
		
	
	}

}
