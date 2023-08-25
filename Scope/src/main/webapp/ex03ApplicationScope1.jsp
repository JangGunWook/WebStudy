<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>ApplicationScope1</h1>
	<%
		application.setAttribute("nick", "숨숨");
	
		String nick =(String)application.getAttribute("nick");
		
	
	
	%>
	
	${applicationScope.nick}
	<a href="ex03ApplicationScope2.jsp">페이지 이동</a>
</body>
</html>