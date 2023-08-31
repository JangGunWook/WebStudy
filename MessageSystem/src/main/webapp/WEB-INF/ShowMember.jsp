<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.WebMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="assets/css/main.css" />
		<style>
				table.type07 {
		  border-collapse: collapse;
		  text-align: left;
		  line-height: 1.5;
		  border: 1px solid #ccc;
		  margin: 20px 10px;
		}
		table.type07 thead {
		  border-right: 1px solid #ccc;
		  border-left: 1px solid #ccc;
		  background: #e7708d;
		}
		table.type07 thead th {
		  padding: 10px;
		  font-weight: bold;
		  vertical-align: top;
		  color: #fff;
		}
		table.type07 tbody th {
		  width: 150px;
		  padding: 10px;
		  font-weight: bold;
		  vertical-align: top;
		  border-bottom: 1px solid #ccc;
		  background: #fcf1f4;
		}
		table.type07 td {
		  width: 350px;
		  padding: 10px;
		  vertical-align: top;
		  border-bottom: 1px solid #ccc;
		}
		</style>
	</head>
	
	
	
	<body style="text-align: center;">
	<%
	ArrayList<WebMember> showmember = (ArrayList<WebMember>)session.getAttribute("showmember");
	%>
	
	
	
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<table class="type07">
							<caption><h2>회원관리페이지</h2></caption>
							<thead >
								<th>Email</th>
								<th>Tel</th>
								<th>Address</th>							
							</thead>
							
							<tbody>
							<c:forEach var="member" items="${showmember}">
							<tr>
								<td>${member.email}</td>
								<td>${member.phone}</td>
								<td>${member.address }</td>
							</tr>
							</c:forEach>
 							</tbody>
							
							
							<!-- 2.모든 회원의 이메일(email),전화번호(tel),주소(address)를 출력하시오. -->
						</table>
					</nav>		
					<a href="goMain.do" class="button next scrolly">되돌아가기</a>	
			</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
	</body>
</html>

