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
		스크립트릿(Scriptlet)
		: JSP 페이지 내부에 자바코드를 사용할 수 있게끔 도와주는 구성요서
	 -->

	<%  // 정수형태의 num을 선언해서 4라는 숫자로 초기화
		int num = 4;
		if(num%2 ==0){%>
		
		<h3>짝수입니다</h3>
		
		<%}%>
		
		<!-- 
			표현식(Expression)
			: java코드 내에서, 선언해놓은 변수, 메소드, 객체 등
			  웹페이지 화면에 출력하고 싶을 때 사용하는 구성요소
			: out.print() >> 메소드 호출하는 개념
			** 세미코론(;) 작성하지 않는다
		 -->
	<h1><%=num %></h1>	 
	
	<%
	out.print("개신기");
	%>
		 
		 	

</body>
</html>