<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.Message"%>
<%@page import="com.smhrd.model.MessageDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.WebMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
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
	<body>
	<%
		WebMember info = (WebMember)session.getAttribute("info");
	//if (info != null){
	//String email = info.getEmail()
	//}
	%>
	
	
	
		
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" class="alt">
						<a href="goMain.do" class="logo"><strong>Forty</strong> <span>by HTML5 UP</span></a>
						
						<nav id = "viewAdmin" style="visibility:hidden">
						<a href="MemberService.do">전체회원명단보기</a>
						</nav>
						
						<nav>
							<!-- Q6. 로그인을 한 상태에서는 로그인탭 대신 로그아웃탭과 개인정보수정탭을 출력 -->
							<c:if test="${!empty info}">
								<a href="logoutService.do">로그아웃</a>
								<a href="GoUpdate.do">개인정보수집탭</a>
							</c:if>
							<c:if test="${empty info}">
								<a href="#menu">로그인</a>
							</c:if>
								
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">	
						<ul class="links">
						<!-- Q3. 로그인 기능 만들기 -->
							<li><h5>로그인</h5></li>
								<form action = "LoginService.do" method="post">
									<li><input type="text" placeholder="Email을 입력하세요" name="email"></li>
									<li><input type="password" placeholder="PW를 입력하세요" name="pw"></li>
									<li><input type="submit" value="LogIn" class="button fit"></li>
								</form>
						</ul>
					
						
						
						
						
						
						<ul class="actions vertical">
						<!-- Q1. 회원가입 기능 만들기 -->
							<li><h5>회원가입</h5></li>
								<form action ="JoinProgram.do" name="myform"  onsubmit="return check()">
									<li><input type="text" name="email"  placeholder="Email을 입력하세요"></li>
									<li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
									<li><input type="text" name="phone"placeholder="전화번호를 입력하세요"></li>
									<li><input type="text" name="address"placeholder="집주소를 입력하세요"></li>
									<li><input type="submit" value="JoinUs" class="button fit"></li>
								</form>
						</ul>
					</nav>			
				<!-- Banner -->
					<section id="banner" class="major">
						<div class="inner">
							<header class="major">
							<!-- Q4. 로그인 후 로그인한 사용자의 아이디로 바꾸기 -->
							<!-- ex) 00님 환영합니다.  -->
							<c:if test="${!empty info}">
								<h1>${info.email}님 환영합니다</h1>
							</c:if>
							<c:if test="${empty info}">
								<h1>로그인을 해주세요</h1>
							</c:if>
							
							</header>
							<div class="content">
								<p>게시판을 이용해보세요 ^^<br></p>
								<ul class="actions">
									<li><a href="ShowBoardService.do" class="button next scrolly">게시판 바로가기</a></li>
								</ul>
							</div>
						</div>
					</section>

				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section id="one" class="tiles">
								<article>
									<span class="image">
										<img src="images/pic01.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">HTML</a></h3>
										<p>홈페이지를 만드는 기초 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic02.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">CSS</a></h3>
										<p>HTML을 디자인해주는 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic03.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">Servlet/JSP</a></h3>
										<p>Java를 기본으로 한 웹 프로그래밍 언어/스크립트 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic04.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">JavaScript</a></h3>
										<p>HTML에 기본적인 로직을 정의할 수 있는 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic05.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">MVC</a></h3>
										<p>웹 프로젝트 중 가장 많이 사용하는 디자인패턴</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic06.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">Web Project</a></h3>
										<p>여러분의 최종프로젝트에 웹 기술을 활용하세요!</p>
									</header>
								</article>
							</section>
							
					<!-- Two -->
							<section id="two">
								<div class="inner">
									<header class="major">
										<c:if test="${!empty info }">
											<h2>${info.email}님에게 온 메세지 확인하기</h2>
										</c:if>
										<c:if test="${empty info }">
											<h2>나에게 온 메세지 확인하기</h2>
										</c:if>
										
									</header>
									<p></p>
									<ul class="actions">
										<!-- Q12. 로그인 이메일 출력! -->
										<!-- ex) 00님에게 온 메시지  -->
										
										<!-- Q14. 메시지 전체 삭제 기능 -->								
										<li><a href="" class="button next scrolly">전체삭제하기</a></li>
									</ul>
									<!-- Q13. table형태로 나한테 온 메시지만 가져와서 보여주기 -->
									<%
										MessageDAO dao = new MessageDAO();
										
										
										if(info !=null){
											
										pageContext.setAttribute("showMsg", dao.showMessage(info.getEmail()));
									
										//session.setAttribute("showMsg", dao.showMessage(info.getEmail()));
										
										//session.getAttribute("showMsg");
										
										System.out.println(dao.showMessage(info.getEmail()));
										
										}
									
									%>
									
								
									
								<%-- <table class="type07">
					<caption><h2>메세지 목록</h2></caption>
							<thead >
								<th>순번</th>
								<th>보낸사람</th>
								<th>받는 이메일</th>							
								<th>메세지 내용</th>							
								<th>보낸 날짜</th>							
							</thead>
							
							<tbody>
							<c:forEach var="message" items="${showMsg}" varStatus="status">
							<tr>
								<td>${message.num}</td> // ${status.count}
								<td>${message.sendName}</td>
								<td>${message.receiveEmail}</td>
								<td>${message.message}</td>
								<td>${message.m_date}</td>
								
							</tr>
							</c:forEach>
 							</tbody>
						</table> --%>


				<table class="type07">
					<caption>
						<h2>메세지 목록</h2>
					</caption>
					<thead>
						<th>순번</th>
						<th>보낸사람</th>
						<th>받는 이메일</th>
						<th>메세지 내용</th>
						<th>보낸 날짜</th>
						<th>삭제</th>
					</thead>
					<tbody id="messageshow">
						
					</tbody>
				</table>


				<script>
						fetch("ShowMessageService")//json파일 읽어오기
					    .then((response) => response.json())//읽어온 데이터를 json으로 변환
					    .then((json) => {
					        //data = json.items;//json에 있는 items만 받아오기

					        // let html = ''; jquery에서 사용하는 문법
					        //data.forEach(element => {//foreach 배열의 개수만큼 반복문을 돌려라
					       	let html = "";
					        let i = 0
					        json.forEach((message) =>{
					            console.log(message)//element에는 하나 하나의 배열이 담아져 있음
					        //html+=`<li>
					            i += 1
					            	html += '<tr>'
					            	html +=	'<td>' + i + '</td>'
					            	html +=	'<td>' + message.sendName + '</td>'
					            	html += '<td>' + message.receiveEmail + '</td>'
					            	html += '<td>' + message.message + '</td>'
					            	html += '<td>' + message.m_date + '</td>'	
					            	html += '<td>' + "<a href=Delete?num=" + message.num+ ">삭제</a>" +'</td>'
					            	html += '</tr>'
								
					        
					        });
					        document.querySelector("#messageshow").innerHTML=html//화면에 출력
					    });
				</script>
									
									<!-- Q15. 메시지 개별 삭제 기능 -->								
								</div>
							</section>

					</div>

				<!-- Contact -->
					<section id="contact">
						<div class="inner">
							<section>
							<!-- Q11. 메시지 보내기 기능 -->
								<form action = "MessageService.do" method="post">
								<div class="field half first">
										<label for="name">Name</label>
										<input type="text" name="sendName" id="name" placeholder="보내는 사람 이름" />
									</div>
									<div class="field half">
										<label for="email">Email</label>
										<input type="text" name="receiveEmail" id="email" placeholder="받는 사람 이메일"/>
									</div>

									<div class="field">
										<label for="message">Message</label>
										<textarea name = "message" id="message" rows="6"></textarea>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send Message" class="special" /></li>
										<li><input type="reset" value="Clear" /></li>
									</ul>
								</form>
							</section>
							
							<section class="split">
								<section>
									<div class="contact-method">
										<span class="icon alt fa-envelope"></span>
										<h3>${info.email}</h3>
										<!-- Q5. 로그인 한 사용자의 이메일을 출력 -->
										<a href="#"></a>
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-phone"></span>
										<h3>${info.phone}</h3>
										<!-- Q5. 로그인 한 사용자의 전화번호를 출력 -->
										<span></span>
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-home"></span>
										<h3>${info.address}</h3>
										<!-- Q5. 로그인 한 사용자의 집주소를 출력 -->
										<span></span>
									</div>
								</section>
							</section>					
						</div>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<ul class="icons">
								<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li>
							</ul>
							<ul class="copyright">
								<li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			
			<script>
		  const ad = document.querySelector("#viewAdmin")
		  
		  //console.log(typeof(${info.email}));
		  //console.log(${info.email});
		  		  
		  if("${info.email}" == ("admin")) {
			  console.log(1)
		    ad.style.visibility = 'visible';
		  }
		 
		  else {
		    ad.style.visibility = 'hidden' ;
		  }
		  

		  
	
	</script>
			
<script>
      //체크 함수 생성
      function check() {
       //myfrom 이름 설정(name="myform")
        var f = document.myform;

         //id가 공백이면
        if (f.email.value == "") {
            alert("이메일을 입력해주십시오");	//팡
            f.email.focus();	//커서가 email쪽으로 움직이게 함
			console.log(f);
            return false;
        }
        
	

		  if (f.pw.value == "") {
            alert("비밀번호를 입력해주세요");
            f.pass.focus();
            return false;
        }
       
		  if (f.phone.value == "") {
            alert("휴대폰번호를 입력해주세요");
            f.name.focus();
            return false;
        }


		  if (f.address.value == "") {
            alert("주소를 확인해주세요");
            f.email.focus();
            return false;
        }
}
</script>
	</body>
</html>

