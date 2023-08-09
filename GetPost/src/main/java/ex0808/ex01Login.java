package ex0808;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login")
public class ex01Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// 1. 요청받은 데이터 꺼내오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 2. 한글 인코딩 작업
		response.setContentType("text/html; charset= UTF-8");
		
		// 3. 출력하는 도구 꺼내오기
		 PrintWriter out = response.getWriter();
		
		 out.print(login(id,pw));
		 
		 
		
	}
	
	//4. id가 smart이면서 pw가 123인지 조건을 판다하여 화면 출력
	public String login(String id, String pw) {
		if( id.equals("smart")  && pw.equals("123")) {
			 return "<h1>smart님 환영합니다</h1>";
		 }else {
			 return "<h1>회원계정을 확인하세요!ㅠㅠ</h1>";
		 }
	}

}
