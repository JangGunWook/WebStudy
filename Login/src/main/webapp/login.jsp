<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.3.0/kakao.min.js"
  integrity="sha384-70k0rrouSYPWJt7q9rSTKpiTfX6USlMYjZUtr1Du+9o4cGvhPAWxngdtVZDdErlh" crossorigin="anonymous"></script>
<script>
  Kakao.init('d426be1f1d095df09cd942b92bd2be8b'); // 사용하려는 앱의 JavaScript 키 입력
</script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>

<a id="kakao-login-btn" href="javascript:loginWithKakao()">
  <img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="222"
    alt="카카오 로그인 버튼" />
</a>
<!-- logout -->

   <script type="text/javascript">
      function unlinkApp() {
         Kakao.API.request({
            url : '/v1/user/unlink',
            success : function(res) {
               alert('success: ' + JSON.stringify(res))
            },
            fail : function(err) {
               alert('fail: ' + JSON.stringify(err))
            },
         })
      }
   </script>

   <script type="text/javascript">
   
     function loginWithKakao() {
          Kakao.Auth.authorize({
            redirectUri: 'http://localhost:8090/Login/Redirect_uri.jsp',
          });
        }
   </script>
</body>
</html>