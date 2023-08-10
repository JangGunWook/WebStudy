<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.td{
		border:1px solid #000; 
		padding :3px;
		text-align :center;
	}
	
</style>
</head>
<body>
	<!-- 요청 데이터를 받아오는 페이지 -->
	
	<%
	// 1. 한글인코딩 잡아주기
	request.setCharacterEncoding("UTF-8");
	
	// 2. 요청 데이터 꺼내오기(5개)
	String name = request.getParameter("name");
	String ja = request.getParameter("java");
	String we = request.getParameter("web");
	String io = request.getParameter("iot");
	// String and = request.getParameter("android");
	
	// 3. 정수형태로 점수들을 형변환
	int java = Integer.parseInt(ja);
	int web = Integer.parseInt(we);
	int iot = Integer.parseInt(io);
	int android = Integer.parseInt(request.getParameter("android"));
	
	// 4. 평균을 계산하기
	double avg = ((double)java + web + iot + android)/4;
	
	
	// 5. 학점을 계산하기
	String credit;
	if(avg >=95){
		credit ="A+";
	}else if(avg >=90){
		credit ="A";
	}else if(avg >=85){
		credit ="B+";
	}else if(avg >=80){
		credit ="B";
	}else{
		credit = "F";
	}
	%>
	
	<fieldset>
		
		<legend>학점은행제 프로그램</legend>
		<table align = "center">
			<tr>
				<td style="width : 120px">이름 :</td>
				
				<td class="td"><%=name %></td>
			</tr>
			<tr>
				<td style="width : 120px">JAVA점수 :</td>
				<td class="td"><%=java %></td>
			</tr>
			<tr>
				<td style="width : 120px">WEB점수 :</td>
				<td class="td"><%=web %></td>
			</tr>
			<tr>
				<td style="width : 120px">IOT점수 :</td>
				<td class="td"><%=iot %></td>
			</tr>
			<tr>
				<td style="width : 120px">ANDROID 점수 :</td>
				<td class="td"><%=android %></td>
			</tr>
			<tr>
				<td style="width : 200px">평균 :</td>
				<td class="td"><%=avg %></td>
			</tr>
			<tr>
				<td style="width : 200px">학점 :</td>
				<td class="td"> <strong><%=credit %></strong> </td>
			</tr>
			
		</table>

	</fieldset>
	
	
	
</body>
</html>