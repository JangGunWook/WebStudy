<%@page import="com.smhrd.model.Member"%>
<%@page import="java.util.ArrayList"%>
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
		
			//ArrayList<Object> memberList1 = new ArrayList<Object>(); 
			
			
			
			
			Object memberList = request.getAttribute("memberList");
			
			ArrayList<Member> al = (ArrayList<Member>) memberList;
			
			//for(int i=0; i<al.size();i++){
			//	memberList1.add(al.get(i));
			//}
			
			for(Member e : al){
				out.print(e.getId());
				out.print(e.getPw());
				out.print(e.getName());
				out.println();
			}
		%>

	

</body>
</html>