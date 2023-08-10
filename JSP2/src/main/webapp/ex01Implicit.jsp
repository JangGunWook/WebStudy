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
		내장객체(Implicit object)
		: jsp가 . java파일로 변환되는 순간 자동으로 생성되는 객체
		: 내가 굳이 선언하지 않더라도 사용할 수 있는 객체
		(1) out	>> java코드 웹페이지 화면에 출력을 도와주는 객체
		(2) request	>> 요청정보를 가지고 있는 객체
		(3) response >> 응답정보를 가지고 있는 객체
		 -->
		 
		 
		 
		 <%
		 //	out내장객체
		 // >> 스크립트릿을 하나씩 끊어서 사용해서 출력해주기 힘들때,
		 //	   out.print("출력구문")
		 	for(int i=0; i<5; i++){
		 		
		 		out.print("<h1>"+i+"</h1>");
		 		
		 	}
		 
		 //request 내장객체를 사용해서 요청데이터 꺼내오기
		 String data = request.getParameter("data");
		 
		
		 %>
		 
		 <%=data %>
		 
		 
		 
		 
		 
		 

</body>
</html>