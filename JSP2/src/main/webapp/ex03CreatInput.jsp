<%@page import="java.util.Random"%>
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
	// 요청받은 데이터 int형으로 변환
	int num =Integer.parseInt(request.getParameter("num"));  
	
	// Random ran = new Random();
	
	// String [] array = {"짜장면", "김밥나라", "탕수육", "닭가슴살"};
	%>


	<fieldset align = "center">
		<legend>랜덤당첨 작성</legend>
			<table>
			<form action = "ex03randomWinner.jsp?num=<%=num%>" method ="post">
				<input type = hidden name = number value = <%=num %>> <!-- 몇개 골랐는지 랜덤생성 -->
				<tr>
					<td>주제 :</td>
					<td>오을 점심 메뉴는?</td>
				</tr>
				<% for(int i=0; i<num; i++){%>
					<tr>
						<td>아이템 <%=(i+1)%> :</td>
						<td>
							<input type = "text" name = "manu">
						</td>
					</tr>
				<% }%>
				
				<tr>
					<td colspan="2">
						<input type="submit" value ="시작">
					</td>
				</tr>
				
			</table> 
		</form>
	</fieldset>

</body>
</html>