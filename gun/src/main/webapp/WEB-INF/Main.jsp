<%@page import="com.test.model.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.test.model.MemberDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap4.min.css">
</head>
<body>
	<h1> 여기가 메인이댜!</h1>
	
	<%
		System.out.print(request.getAttribute("memberlist"));
		
/* 		MemberDAO dao = new MemberDAO();
		 
		ArrayList<Member> list = (ArrayList)dao.memberlist();
		
		pageContext.setAttribute("list", list); */
	
	%>

	<table id="example" class="table table-striped table-bordered" style="width:100%">
	<thead>
		<tr>
			<th>no</th>
			<th>name</th>
			<th>gender</th>
			<th>height</th>
			<th>weight</th>
			<th>trainer</th>
			<th>photopath</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="member" items="${memberlist}" varStatus="status">
		<tr>
			<td>${member.no}</td>
			<td>${member.name}</td>
			<td>${member.gender}</td>
			<td>${member.height}</td>
			<td>${member.weight}</td>
			<td>${member.trainer}</td>
			<td>${member.photopath}</td>
		</tr>
		</c:forEach>
	</table>

	<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
	<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap4.min.js"></script>
	<script>
		new DataTable('#example');
	</script>
</body>
</html>