<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	margin: 0px auto;
	align: center;
	text-align: center;
	color: #161616;
}

input[type="checkbox"] {
	width: 20px;
	height: 20px;
}

table {
	margin: 0px auto;
	align: center;
	text-align: center;
}

img {
	align: center;
	width: 250px;
	height: 200px;
}

#list {
	width: 200px;
	height: 400px;
	background-color: yellow;
	text-align: center;
	position: fixed;
	right: 0px;
	top: 300px;
}
</style>
</head>
<body>
	<div>
		<form action="CookieMake" method="post">
			<h1>SMHRD 인기판매 물품</h1>
			<table border=1px>
				<tr>
					<td>상품1 : 아이폰14</td>
					<td>상품2 : 아이패드</td>
					<td>상품3 : 아이맥</td>
					<td>상품4 : 맥북프로</td>
					<td>상품5 : 에어팟</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="product" value="아이폰"></td>
					<td><input type="checkbox" name="product" value="아이패드"></td>
					<td><input type="checkbox" name="product" value="아이맥"></td>
					<td><input type="checkbox" name="product" value="맥북프로"></td>
					<td><input type="checkbox" name="product" value="에어팟"></td>
				</tr>
				<tr>
					<td>상품6 : 애플펜슬</td>
					<td>상품7 : 맥</td>
					<td>상품8 : 아이맥블랙</td>
					<td>상품9 : 맥프로</td>
					<td>상품10 : 미니맥</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="product" value="애플펜슬"></td>
					<td><input type="checkbox" name="product" value="맥"></td>
					<td><input type="checkbox" name="product" value="아이맥블랙"></td>
					<td><input type="checkbox" name="product" value="맥프로"></td>
					<td><input type="checkbox" name="product" value="미니맥"></td>
				</tr>
				<tr>
					<td colspan=5>
					<input type="reset" value="초기화"> 
					<input type="submit" value="담기">
					</td>
				</tr>
			</table>
		</form>
		
		<div id="list">
			<h3>장바구니 목록</h3>
			<%
				// 저장된 cookie값 가져오기
				Cookie[] cookie = request.getCookies();
			
				if (cookie != null) { // 쿠키가 있는지 없는지부터 확인한다!!
					for (int i = 0; i < cookie.length; i++) {
						// 기본으로 만들어진 JSESSIONID 제외하고 모든 쿠키 가져오기!
						if (!cookie[i].getName().equals("JSESSIONID")) {
							out.print(URLDecoder.decode(cookie[i].getValue()) + "<br>");
						}
					}
				}
			%>
		</div>

	</div>
</body>
</html>