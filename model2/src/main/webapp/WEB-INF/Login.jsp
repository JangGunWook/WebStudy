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
	<form class="row g-3" action="Login" method="get">
		<div class="col-12">
			<label for="inputEmail4" class="form-label">아이디</label> <input
				type="text" class="form-control" id="id" name="id">
		</div>
		<div class="col-12">
			<label for="inputPassword4" class="form-label">비밀번호</label> <input
				type="password" class="form-control" id="pw" name="pw">
		</div>
		<div class="col-12">
			<button type="submit" class="btn btn-primary">Sign in</button>
		</div>
	</form>
</body>
</html>