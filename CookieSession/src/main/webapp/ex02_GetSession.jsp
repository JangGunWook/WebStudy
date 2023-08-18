<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>session 확인페이지</h1>
	
	<%
		// .getAttribute()의 반환값은 Object 타입!!
		// 해당하는 타입을 일정한 타입에 저장하기 위해서 다운캐스팅이 필요하다!
		String name = (String)session.getAttribute("name");
		String address = (String)session.getAttribute("address");
		Integer age = (Integer)session.getAttribute("age");
		
		// 정수형을 사용하는 경우 session의 값이 삭제되는 경우를 생각하여
		// 기본잘형인 int가 아니라 객체타입인 Integer를 사용한다!
	%>
	이름 : <%= name %>
	<br>
	주소 : <%= address %>
	<br>
	나이 : <%= age %>	
	<br>
	
	<a href ="ex03_RemoveSession.jsp">세션 삭제</a>
	<br>
	<a href ="ex04_InvalidateSession.jsp">세션 모두삭제</a>
</body>
</html>