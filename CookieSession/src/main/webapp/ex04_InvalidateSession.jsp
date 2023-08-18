<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>session 모두삭제 페이지</h1>
	
	<%
		// invalidate() -> session 객체를 닫아버리는 기능
		// 객체가 닫히면 안에 있는 session 값을 사용할 수 없다!
		session.invalidate();
	
	
	
	%>
	
	<a href="ex02_GetSession.jsp">세션확인</a>
	
	
</body>
</html>