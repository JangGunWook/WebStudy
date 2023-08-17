<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Cookie를 확인하기 위한 페이지</h1>
	<%
		// 쿠키를 꺼내오기!
		 Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies){
			out.print(c.getName() + " : "+ c.getValue()+"<br>");
		}
		// cookies 안에 있는 name과 values 값을 가져오기
		// name값 --> .getName()
		// value --> .getValue()
		// 출력결과는 out.print() 통해서 확인하기!
		
		out.print("<br>");
		out.print("<br>");
		out.print("<br>");

		
		
		//for(int i=0; i<cookies.length;i++){
		//	out.print(cookies[i].getName()+" : ");
		//	out.print(cookies[i].getValue()+"<br>");
		//}
	%>
	
	<a href="ex03_RemoveCookie.jsp">쿠키삭제</a>
	
</body>
</html>