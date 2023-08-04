package ex0804;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Pluse")
public class ex02Pluse extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 한글사용 하기위해 UTF-8
		response.setContentType("text/html; charset= UTF-8");
		
		// html에서 받은 데이터를 request를 통해서 자료형 데이터로 받는다!
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		// 자료형데이터는 int형으로 변환하여야 계산 가능
		int number1 = Integer.parseInt(num1);
		int number2 = Integer.parseInt(num2);
		
		// response를 통해서 출력 객체를 생성		
		PrintWriter out = response.getWriter();
		
		// request에 대한 response를 html로 출력
		out.print("두 값의 합은 > " + (number1 + number2) );
		
		
	}

}
