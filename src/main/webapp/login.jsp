<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
        Kakao.init('YOUR_JAVASCRIPT_KEY');

        function kakaoLogin() {
            Kakao.Auth.login({
                success: function(response) {
                    Kakao.API.request({
                        url: '/v2/user/me',
                        success: function(response) {
                            document.getElementById('kakaoEmail').value = response.kakao_account.email;
                            document.getElementById('kakaoForm').submit();
                        },
                        fail: function(error) {
                            console.log(error);
                        }
                    });
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }
    </script>
</head>
<body>
    <div>
        <div>
            <p><a href="index.jsp">Join us</a></p>
        </div>
        <form action="loginProc.jsp" method="post">
            <div>
                <p>ID : <input type="text" name="id"></p>
            </div>
            <div>
                <p>PW : <input type="password" name="pass"></p>
            </div>
            <div>
                <p><input type="submit" value="login"></p>
            </div>
             <div>
                 <p>
                     <a href="javascript:void(0)" onclick="kakaoLogin();">
                         <img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="222"/>
                     </a>
                 </p>
             </div>
        </form>
        <form id="kakaoForm" action="kakaoLoginProc.jsp" method="post" style="display: none;">
            <input type="hidden" id="kakaoEmail" name="kakaoEmail"/>
        </form>
    </div>
</body>
</html>