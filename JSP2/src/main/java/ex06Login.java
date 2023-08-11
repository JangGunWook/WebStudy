

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ex06Login")
public class ex06Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	// response.setContentType("text/html; charset= UTF-8");
	request.setCharacterEncoding("utf-8");
	
	// 1. 요청받은 데이터
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	
	// 2. id가 sumart 그리고 pw 123
	if(id.equals("smart") && pw.equals("123")) {
		//3. 일치하면 "ex06LoginSucess.jsp" 이동
		response.sendRedirect("ex06LoginSucess.jsp?id="+id);
		// 앞쪽에 url(http:// localhost:8090/JSP2/ex06~~)이 동일하다면
		// 뒤쪽만 다르다면 "ex06LoginSucess.jsp"만 작성
	}else {
		//3. 불일치하다면 "ex06LoginFail.jsp" 이동
		response.sendRedirect("ex06LoginFail.jsp");
	}
		
	}

}
