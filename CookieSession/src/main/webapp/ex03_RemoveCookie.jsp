<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Cookie 삭제 페이지</h1>
	
	<%
		// 쿠키를 삭제하는 메소드는 존재하지 않는다.
		
		// 1. 삭제하고자 한느 쿠키와 동일한 이름의 쿠키를 생성한다! -> 재정의
		Cookie cookie = new Cookie("first",""); 
		
		cookie.setMaxAge(0);
		
		response.addCookie(cookie);
		
		
	
	%>
	<a href = "ex02_GetCookie.jsp">쿠키확인</a>
	
</body>
</html>