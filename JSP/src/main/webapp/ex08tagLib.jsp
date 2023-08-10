<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
		taglib 지시자
		: tag library에서 태그를 가져와 사용할 수 있는 구성요소
		
	
	 -->
	<%
		for (int i = 0; i < 5; i++) {
	%>
		<h1>Hello World!</h1>
	<%
		}
	%>
	
	<c:forEach begin="1" end="5">
			<h1>Hello World22</h1>
	</c:forEach>
	
	<c:if test="${4%2==0}" >
		<h1>짝수입니다</h1>
	</c:if>
	
	<!-- JSTL/EL
		(1) JSTL : java문법을 태그들을 사용해서 기능정의
		(2) EL : 표현식($)
	 -->
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

</body>
</html>