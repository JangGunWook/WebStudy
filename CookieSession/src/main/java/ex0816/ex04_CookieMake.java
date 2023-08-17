package ex0816;

import java.io.IOException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CookieMake
 */
@WebServlet("/CookieMake")
public class ex04_CookieMake extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//0. post 방식 인코딩
		request.setCharacterEncoding("utf-8");
		
		//1. 선택된 상품 꺼내오기
		String[] product = request.getParameterValues("product");
		
//		String list = Arrays.toString(product).replace("[", "").replace("]", "");
//		
//		String data = URLEncoder.encode(list,"utf-8");
//
//		Cookie cookie1 = new Cookie("list", data);
//		
//		response.addCookie(cookie1);
		
		//2.해당 상품들을 Cookie로 생성
		
		for(int i=0; i<product.length; i++) {
			String data12 = URLEncoder.encode(product[i], "utf-8");
			Cookie cookie2 = new Cookie("item"+i, data12);
			response.addCookie(cookie2);
		}
		

		// 4. view처리
		response.sendRedirect("ex04_Cookie.jsp");
		
		
		
		
	}
	

}
