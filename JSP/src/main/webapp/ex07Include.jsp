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
		include 지시자
		: 현재 페이지에 다른 페이지(파일)을 포함시킬 때 사용가능한 구성요소
		: 여러개의 페이지가 있었을 때, 고정적으로 들어가야하는 영역이 있다면
		  페이지를 별도로 설계한 후 포함시키는 것이 유지보수가 편리하기 때문에!
		
	 -->

	<div>
		<h1>메인페이지입니다.</h1>
	</div>
	
	
	
	
	
	
	<%@include file="Footer.jsp" %>
</body>
</html>