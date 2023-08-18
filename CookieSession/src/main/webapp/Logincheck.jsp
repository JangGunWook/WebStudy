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
		// 1. 인코딩
		request.setCharacterEncoding("UTF-8");
		// 2. 데이터 수집
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		// 3. 기능처리
		// 로그인 성공할 수 있는지 없는지 판단!
		if(id.equals("test")&&pw.equals("12345")){
			
		// 메인페이지로 이동시 회원의 닉네임을 공유할 수 있도록 
		// session영역에 해당 내용을 저장
			session.setAttribute("nick", "쿠키몬스터님");
		
		// 페이지이동
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("Loginform.jsp");
		}
		
	%>
	
	
</body>
</html>