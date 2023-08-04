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
		
		response.setContentType("text/html; charset= UTF-8");
		
		String num1 =  request.getParameter("num1");
		String num2 =  request.getParameter("num2");
		String op =  request.getParameter("op");
		
		int number1 = Integer.parseInt(num1);
		int number2 = Integer.parseInt(num2);
		
		
		
		
		PrintWriter out = response.getWriter();
		
		out.print(number1+" "+ op+" "+ number2 + " = " + (op(op,number1,number2)));
		
		
	}
	
	public int op(String op, int number1, int number2) {
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
