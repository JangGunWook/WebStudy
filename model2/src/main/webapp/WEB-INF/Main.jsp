<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>

</head>
<body>
	
	<a href="goJoin">
	<button type="button" class="btn btn-primary">회원가입</button>
	</a>
	
	<a href="goLogin">
	<button type="button" class="btn btn-secondary">로그인</button>
	</a>
	
	<a href="MemberList">
	<button type="button" class="btn btn-secondary">회원명단확인</button>
	</a>
	
	 <div id="userName"></div>
	 <div id="memberList"></div>
	 <%
	 
	 
	 
	 %>
	
	<script>
	
	 $('#userName').append(resultdiv);
	 "<br>"
	 $('#memberList').append(resultdiv);
	</script>

</body>
</html>