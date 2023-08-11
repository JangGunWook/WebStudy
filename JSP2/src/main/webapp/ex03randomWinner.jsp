<%@page import="java.util.Random"%>
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
		// 1. 한글인코딩 잡아주기
		request.setCharacterEncoding("UTF-8");
	
		// 2. 요청받은 데이터들을 꺼내오기(manu, number, num)
		//
		int num = Integer.parseInt(request.getParameter("num"));	
		
		// 2-1<input type = "hidden" name = number> 태그를 사용한것  
		// int number = Integer.parseInt(request.getParameter("number"));	
		
		// 선택한 메뉴 바아오기
		String[] manu  = request.getParameterValues("manu");
		
		
		// 3.메뉴배열의 길이
		int number = manu.length;
		
		// 메뉴배열의 랜덤한 숫자
		Random ran = new Random();
		int ran_num = ran.nextInt(number);
	%>
	
	
	<fieldset align = "center">
		<legend>랜덤당첨 결과</legend>
			<form>
				<p>오늘의 점심 <%=num %>개중 당첨메뉴는?</p>
				<p><%=manu[ran_num] %>
			
			</form>
	</fieldset>

</body>
</html>