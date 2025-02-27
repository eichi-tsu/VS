<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>로그인 및 회원가입</title>
    <style>
        .center {
            text-align: center;
            margin-top: 50px;
        }

        .toggle-buttons button {
            width: 70px;
            height: 30px;
            font-size: 1.0em;
            border: none;
            background-color: #66b2ff;
            color: black;
            cursor: pointer;
            margin: 20px;
            border-radius: 15px;
        }

        .toggle-buttons button:hover {
            background-color: #66b2ff;
        }
    </style>
    <script>
        function goToPage(page) {
            if (page === 'member') {
                window.location.href = 'Login.jsp';
            } else if (page === 'nonmember') {
                window.location.href = 'Signup.jsp';
            }
        }
    </script>
</head>
<body>
    <div class="center">
        <h1>로그인 또는 회원가입</h1>

        <div class="toggle-buttons">
            <button onclick="goToPage('member')">회원</button>
            <button onclick="goToPage('nonmember')">비회원</button>
        </div>
    </div>
</body>
</html>
