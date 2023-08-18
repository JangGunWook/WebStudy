<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Session 생성 페이지</h1>
	<%
		// session 생성
		// setAttribute(name(※문자열), value(※object))
		// 쿠키와는 다르게 데이터값에 공백이나 특수기호가 들어갈수 있다
		session.setAttribute("name", "채수민");
		session.setAttribute("address", "광주 남구 송암동");
		session.setAttribute("age", 25);
		
		// session 값 수정하기 -> 수정하고 싶은 데이터의 name에
		// 데이터 값만 덮어쓰기를 해준다!
		session.setAttribute("name", "손지영");
	
	%>
	
	<a href = "ex02_GetSession.jsp">세션확인</a>
</body>
</html>