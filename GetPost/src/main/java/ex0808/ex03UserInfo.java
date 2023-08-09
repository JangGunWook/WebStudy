package ex0808;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserInfo")
public class ex03UserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 0. post방식으로 요청이 들어온 경우! 요청데이터에 대한 한글인코딩 잡아주기
		request.setCharacterEncoding("UTF-8");
		
		// 1. 요청데이터 꺼내오기
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		// name값은 하나인데 여러개의 데이터를 바아와야할때 사용하는 메소드
		// >> request.getParameterValues("name값")
		// >> 리턴타입 String[]
		
		
		// 2. 응답데이터 한글인코딩 잡아주기
		response.setContentType("text/html; charset= utf-8");
		
		// 3.출력도구 꺼내오기
		PrintWriter out= response.getWriter();
		 
		// 4. 화면 출력 
		 out.print("<h3>직업 : " + job+"</h3>");
		 out.print("<h3>성별 : " + gender+"</h3>");
		 out.print("<h3>취미 : " + Arrays.toString(hobby).replace("[","").replace("]","")+"</h3>");
		 
		 out.print("<h3>취미 : ");
		 for(int i=0; i<hobby.length; i++) {
			 out.print(hobby[i] + " ");
		 }
		 out.print("</h3>");
		
	}
	

}
