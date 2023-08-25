<%@page import="com.smhrd.model.Member"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
	<!--  회원가입을 위해 넘겨주는 데이터들을 받아와 처리하는 공간 -->

	<%
	
	// 1. 인코딩
			request.setCharacterEncoding("utf-8");
			// 2. 데이터 수집 ->id, pw, name
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			
			// 3. 기능 처리 -> DB 전달!(MemberDAO)
			Member member = new Member(id,pw,name);
			
			MemberDAO dao = new MemberDAO();
			
			//dao에 입력된 id,pw, name 전달 --> dao.join()호출
			// 성공(1) / 실패(0)
			int cnt = dao.join(member);
			
			// 4. view 처리
			if(cnt > 0){
		response.sendRedirect("Main.jsp");
			}else{
		response.sendRedirect("Join.jsp");
			}
	%>
	
</body>
</html>