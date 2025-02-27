<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>회원 로그인</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
            background-color: #e8f0fe;
        }

        .form-container {
            width: 350px;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            background-color: #f2f2f2;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .input-group {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .input-group label {
            width: 80px;
            text-align: right;
            margin-right: 10px;
        }

        input[type="text"], input[type="password"] {
            flex: 1;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #66b2ff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
        }

        input[type="submit"]:hover {
            background-color: #005c99;
        }
    </style>
</head>
<script>
function Next_Btn_Click(){
	document.location.href="Main_Page.jsp";
}
</script>
<body>
    <div class="form-container">
        <h2>회원 로그인</h2>
        <form action="MainPage.jsp" method="post">
            <div class="input-group">
                <label for="loginId">아이디 :</label>
                <input type="text" id="loginId" name="loginId" required>
            </div>
            <div class="input-group">
                <label for="loginPassword">비밀번호 :</label>
                <input type="password" id="loginPassword" name="loginPassword" required>
            </div>
            <input type="submit" value="로그인하기">
        </form>
        <button onclick="Next_Btn_Click()">next</button>
    </div>
</body>
</html>
