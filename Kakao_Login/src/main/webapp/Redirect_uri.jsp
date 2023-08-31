<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    
   

<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

   <div id="result"></div>
<script>
Kakao.init('d426be1f1d095df09cd942b92bd2be8b'); // 사용하려는 앱의 JavaScript 키 입력
console.log(Kakao.isInitialized());
</script>

 

<!-- 
<p id="token-result"></p>

<button class="api-btn" onclick="" style="visibility:hidden">사용자 정보 가져오기</button>
 -->
 
<script>
Kakao.Auth.login({
   success: function(authObj){
   
       Kakao.API
         .request({
            url : '/v2/user/me',
            data: {
                property_keys: ['kakao_account.email', 'kakao_account.gender'],
              },
            success : function(result) {
               console.log(JSON.stringify(result));
               
               id = result.id
               connected_at = result.connected_at
               kakao_account = result.kakao_account
               email = result.kakao_account.email
               gender = result.kakao_account.gender
               resultdiv = "<h2>로그인 성공 !!"
               resultdiv += '<h4>id: ' + id + '<h4>'
               resultdiv += '<h4>connected_at: '
                     + connected_at + '<h4>'
               /*
               if (typeof kakao_account != 'undefined') {
                  email = kakao_account.email;
                  gender = kakao_account.gender;
               }
                */
               resultdiv += '<h4>email: ' + email
                     + '<h4>'
               resultdiv += '<h4>gender: ' + gender
                     + '<h4>'
               $('#result').append(resultdiv);

            },
            fail : function(error) {
               alert('login success, but failed to request user information: '
                     + JSON.stringify(error))
            },
         })
      var token = authObj.access_token;
      },
      fail:function(err) {
         alert(JSON.stringify(err))
      }
});



/*
  function loginWithKakao() {
    Kakao.Auth.authorize({
       redirectUri: 'http://localhost:8090/Login/Redirect_uri.jsp',
      state: 'userme',
    });
  }

  function requestUserInfo() {
    Kakao.API.request({
      url: '/v2/user/me',
    })
      .then(function(res) {
        alert(JSON.stringify(res));
      })
      .catch(function(err) {
        alert(
          'failed to request user information: ' + JSON.stringify(err)
        );
      });
  }

  // 아래는 데모를 위한 UI 코드입니다.
  displayToken()
  function displayToken() {
    var token = getCookie('authorize-access-token');

    if(token) {
      Kakao.Auth.setAccessToken(token);
      document.querySelector('#token-result').innerText = 'login success, ready to request API';
      document.querySelector('button.api-btn').style.visibility = 'visible';
    }
  }

  function getCookie(name) {
    var parts = document.cookie.split(name + '=');
    if (parts.length === 2) { return parts[1].split(';')[0]; }
  }
  */
</script>
   
</body>
</html>