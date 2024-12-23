<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="js/kakao_api.js"></script>
    <script src="js/script.js"></script>
    <style>
        body {
            background-color: #f2f4f8;
        }

        form {
            border-radius: 10px;
            width: 400px;
            margin: 10px auto;
            padding: 30px;
            box-sizing: border-box;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            font-size: 1.6em;
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 1em;
            margin-bottom: 8px;
            color: #444;
        }

        #id {
            width: 60%;
        }

        #zipcode {
            width: 50%;
        }

        input[type="text"], input[type="password"], input[type="radio"], input[type="checkbox"], select {
            width: 100%;
            padding: 10px;
            margin: 5px 0 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="radio"], input[type="checkbox"] {
            width: auto;
            margin-right: 5px;
        }

        input[type="button"], input[type="submit"], input[type="reset"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 0.9em;
        }

        input[type="button"]:hover, input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #45a049;
        }

        div {
            text-align: center;
        }

        .hobby-group {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .hobby-group input {
            width: auto;
            margin-right: 10px;
        }

        #job-select {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .zipcode-btn {
            background-color: #008CBA;
            padding: 10px;
            margin-top: 10px;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .zipcode-btn:hover {
            background-color: #006f8b;
        }
    </style>
</head>
<body>
<form action="memberProc.jsp" method="post">
    <h2 align="center">회원 가입</h2>
    <label for="id">아이디<span>*</span></label><input type="text" name="id" id="id" >
    <input type="button" value="ID중복확인" onclick="idCheck()"><br>
    <label for="pass">비밀번호<span>*</span></label><input type="password" name="pass" id="pass"><br>
    <label for="name" >이름<span>*</span></label><input type="text" name="name" id="name"><br>
    <label>성별<span>*</span></label>
    <input type="radio" name="gender"checked="checked" value="m">남
    <input type="radio" name="gender" value="f">여<br>
    <label for="birth">생년월일<span>*</span></label><input type="text" name="birth" id="birth">ex)900323<br>
    <label for="email">Email<span>*</span></label><input type="text" name="email" id="email"><br>
    <label for="zipcode">우편번호</label><input type="text" name="zipcode" id="zipcode">
    <input type="button" value="우편번호 찾기" onclick='PostCode()'><br>
    <label for="address">주소</label><input type="text" name="address" id="address"><br>
    <label>취미</label><input type="checkbox" name="hobby" id="internet">인터넷
    <input type="checkbox" name="hobby" id="trip">여행
    <input type="checkbox" name="hobby" id="game">게임
    <input type="checkbox" name="hobby" id="movie">영화
    <input type="checkbox" name="hobby" id="exercise">운동<br>
    <label for="job-select">직업</label>
    <select id="job-select" name="job">
        <option value="" selected disabled>선택하세요</option>
        <option value="doctor">의사</option>
        <option value="lawyer">변호사</option>
        <option value="accountant">회계사</option>
        <option value="job4"></option>
    </select><br>
    <div>
        <input type="submit" value="회원가입" id="joinbtn" disabled>
        <input type="reset" value="다시쓰기">
    </div>
</form>
</body>
