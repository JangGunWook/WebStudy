package ex0804;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Operation")
public class ex03Operation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 한글번역
		response.setContentType("text/html; charset= UTF-8");
		// 1. 요청 받은 데이터 3개 꺼내오기
		String num1 =  request.getParameter("num1");
		String num2 =  request.getParameter("num2");
		String op =  request.getParameter("op");
		
		// 2. num1,num2는 숫자형식으로 형 변환
		int number1 = Integer.parseInt(num1);
		int number2 = Integer.parseInt(num2);
		
		//4. 출력하는 도구꺼내오기
		PrintWriter out = response.getWriter();
		
		//5. 결과값 출력하기
		out.print(number1+" "+ op+" "+ number2 + " = " + (operation(op,number1,number2)));
		
		
	}
	//3. 연산기호의 모양에 따라 연산 결과 계산
	public int operation(String op, int number1, int number2) {
		int result =0;
		if (op.equals("+")){
			return result = number1 + number2;
		}else if(op.equals("-")) {
			return result = number1 - number2;
		}else if(op.equals("*")) {
			return result = number1 * number2;
		}else {
			return result = number1 / number2;
		}
		
	}
	

}
