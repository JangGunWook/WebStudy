<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
		선언문(Declaration)
		 : JSP내부에서 변수, 메소드 전역에 선언할 때 사용되는 구성요소	
	 -->
	
	<h1> <%=num %></h1>
	
	<%!
		int num = 7;
	%>
</body>
</html>