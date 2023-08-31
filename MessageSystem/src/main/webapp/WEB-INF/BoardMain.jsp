<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.Board"%>
<%@page import="com.smhrd.model.WebMember"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="assetsBoard/css/main.css" />
		<link rel="stylesheet" href="assetsBoard/css/board.css" />
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
<body>	
	<%
	System.out.println(request.getAttribute("showboard"));
	
	System.out.print(session.getAttribute("showboard"));
	System.out.print("asdf");
	%>
	
			<!-- Q17. 게시글 목록 조회 기능 -->
			<!-- Q18. 게시글 목록 세부페이지 기능(제목을 클릭하면 세부페이지 BoardDetail.jsp로 이동)-->
			<div id="board">
				
					<table class="type07">
					<caption><h2>메세지 목록</h2></caption>
							<thead >
								<th>순번</th>
								<th>제목</th>
								<th>글쓴이</th>							
								<th>파일이름</th>							
								<th>내용</th>							
								<th>작성일자</th>							
							</thead>
							
							<tbody>
							<c:forEach var="show" items="${showboard}" varStatus="status">
							<tr>
								<td>${status.count}</td>
								<td><a href="DetailService.do?num=${show.num}"> ${show.title}</a></td>
								<td>${show.writer}</td>
								<td>${show.filename}</td>
								<td>${show.content}</td>
								<td>${show.b_date}</td>
								
							</tr>
							</c:forEach>
 							</tbody>
						</table> 
				</table>
				<a href="goMain.do"><button id="writer">홈으로가기</button></a>
				<a href="goWrite.do"><button id="writer">작성하러가기</button></a>
			</div>


			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
</body>
</html>