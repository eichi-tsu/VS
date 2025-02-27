<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>비회원 회원가입</title>
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
            width: 400px;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            background-color: #f9f9f9;
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
            width: 120px;
            text-align: right;
            margin-right: 10px;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            flex: 1;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="radio"] {
            margin-right: 5px;
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

        .error-message {
            color: red;
            display: none;
            text-align: center;
            margin-top: 10px;
        }
    </style>
    <script>
        function checkPasswordMatch() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;
            var errorMessage = document.getElementById("error-message");

            if (password !== confirmPassword) {
                errorMessage.style.display = "block";
            } else {
                errorMessage.style.display = "none";
            }
        }

        function validateForm() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;

            if (password !== confirmPassword) {
                alert("비밀번호가 일치하지 않습니다.");
                return false;
            }
            return true;
        }
        function Next_Btn_Click(){
        	document.location.href="Main_Page.jsp";
        }
    </script>
</head>
<body>
    <div class="form-container">
        <h2>비회원 회원가입</h2>
        <form action="MainPage.jsp" method="post" onsubmit="return validateForm()">
            <div class="input-group">
                <label for="name">이름 :</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="input-group">
                <label for="email">이메일 :</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label for="newId">아이디 :</label>
                <input type="text" id="newId" name="newId" required>
            </div>
            <div class="input-group">
                <label for="password">비밀번호 :</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="input-group">
                <label for="confirmPassword">비밀번호 확인 :</label>
                <input type="password" id="confirmPassword" name="confirmPassword" oninput="checkPasswordMatch()" required>
            </div>
            <div id="error-message" class="error-message">비밀번호가 일치하지 않습니다.</div><br>

            <div style="text-align: center; margin-top: 10px;">
                <label>
                    <input type="radio" id="major" name="field" value="major" required> 전공자
                </label>
                <label>
                    <input type="radio" id="nonmajor" name="field" value="nonmajor"> 비전공자
                </label>
            </div><br>

            <input type="submit" value="회원가입하기">
            <button onclick="Next_Btn_Click()">next</button>
        </form>
    </div>
</body>
</html>