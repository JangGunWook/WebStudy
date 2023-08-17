<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Cookie 생성을 위한 페이지</h1>
	<!-- 1. Cookie생성 -> java 언어 사용 -->
	
	<%
	
		// 1. new Cookie(name(※문자열),value(※문자열))
		// cookie의 값은 순수 text로 공백이나 특수문자는 사용이 불가능하다!
		String data = URLEncoder.encode("first cookie","utf-8");
		Cookie cookie = new Cookie("first", data);
		
		// 쿠키값 수정하기
		cookie.setValue("cookie");
		
		// 쿠키에 대한 유효값 설정 --> 초 단위 설정가능
		cookie.setMaxAge(60*60*24*365);
			
		// 2. 쿠키 저장하기
		response.addCookie(cookie);
		response.addCookie(new Cookie("Second","SecondCookie"));
		
	%>

	<a href="ex02_GetCookie.jsp">쿠키확인</a>



</body>
</html>