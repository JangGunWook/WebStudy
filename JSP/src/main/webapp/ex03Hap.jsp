<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
	// 1. 누적값 sum선언하기
	int sum=0;
	// 2. 1~100까지의 합을 구해서 sum에 담아주기
	for(int i=1; i<101; i++){
		sum+=i;
	}
	%>
	<p>
		<h1>1~100까지의 합 : <%=sum %></h1>
	<p>

</body>
</html>