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

	<form class="row g-3" action="JoinProgram.jsp" method="post">
		<div class="col-12">
			<label for="inputEmail4" class="form-label">아이디</label> 
			<input type="text" class="form-control" id="id" name="id" placeholder="ID를 입력해 주세요.">
		</div>
		<div class="col-12">
			<label for="inputPassword4" class="form-label">비밀번호</label> 
			<input type="password" class="form-control" id="pw" name="pw" placeholder="비밀번호를 입력해 주세요.">
		</div>
		<div class="col-12">
			<label for="inputName" class="form-label">이름</label> 
			<input type="text" class="form-control" id="name" name="name"
				placeholder="이름을 입력하세요">
		</div>
		<div class="col-12">
			<input type="submit" class="btn btn-primary" value="Sign in"></input>
		</div>
	</form>
</body>
</html>