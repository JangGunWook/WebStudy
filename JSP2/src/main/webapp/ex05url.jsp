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
			String page1 = request.getParameter("page");
		
			if(page1.equals("네이버")){
			response.sendRedirect("https://www.naver.com");
			}else if(page1.equals("다음")){
				response.sendRedirect("https://www.daum.net");
			}else if(page1.equals("구글")){
				response.sendRedirect("https://www.google.com");
			}
		%>
		
		
		
	
	
</body>
</html>