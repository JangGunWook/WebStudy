<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>requestscope2</h1>
	<%
		// Requestscope1페이지에서 지정한 "nick"값이 
		// 실제로 가져올 수 있는지 확인해 보기
		
		String nick = (String)request.getAttribute("nick");
		
	%>
	
		${requestScope.nick}
</body>
</html>