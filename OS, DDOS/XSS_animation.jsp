<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>XSS_animation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        .container {
            margin-top: 50px;
        }
        .whiteboard {
            border: 2px solid #000;
            padding: 20px;
            display: inline-block;
            background-color: #fff;
            text-align: center;
        }
        .whiteboard img {
            width: 1100px; /* 원하는 너비로 설정 */
            height: 600px; /* 원하는 높이로 설정 */
        }
        .input-box {
            margin-top: 20px;
        }
        .input-box input[type="text"] {
            width: 1000px; /* 가로 크기 */
            height: 100px; /* 세로 크기 */
        }
        .input-box button {
            width: 150px; /* 버튼 너비 */
            height: 40px; /* 버튼 높이 */
            font-size: 1.5em;
            margin-top: 10px;
        }
        .message {
            font-size: 25px;
            margin-bottom: 20px;
            display: block;
        }
        .instruction {
            margin-top: 10px;
            font-size: 18px;
        }
        .success-message {
            font-size: 25px;
            color: green;
            display: block;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<%@ include file="L_Header.jsp" %>

    <div class="container">
        <span class="message">Stored XSS 공격 실행해보기</span>
        <div class="whiteboard">
            <%
                String userInput = request.getParameter("userInput");
                String success = request.getParameter("success");
                if (success != null && success.equals("true")) {
            %>
                <img src="XSS/XSS3.png" alt="XSS3 Image">
                <script type="text/javascript">
                    alert("성공!");
                </script>
            <%
                } else if (userInput == null) {
            %>
                <img src="XSS/XSS1.png" alt="XSS1 Image">
                <div class="instruction">올바른 스크립트 문구를 넣어주세요</div>
                <div class="input-box">
                    <form method="post" action="<%= request.getContextPath() %>/XSS_animation.jsp">
                        <input type="text" name="userInput" placeholder="답을 입력하세요">
                        <br><br>
                        <button type="submit">Next</button>
                    </form>
                </div>
            <%
                } else if (userInput.trim().isEmpty()) {
            %>
                <script type="text/javascript">
                    alert("답을 입력해주세요!");
                    window.history.back();
                </script>
            <%
                } else if ("<script>alert(document.cookie)</script>".equalsIgnoreCase(userInput.trim())) {
            %>
                <img src="XSS/XSS2.png" alt="XSS2 Image">
                <div class="input-box">
                    <form method="post" action="<%= request.getContextPath() %>/XSS_animation.jsp">
                        <input type="hidden" name="success" value="true">
                        <button type="submit">Next</button>
                    </form>
                </div>
            <%
                } else {
            %>
                <script type="text/javascript">
                    alert("틀렸습니다! 다시 입력해주세요.");
                    window.history.back();
                </script>
                <img src="images/XSS1.png" alt="XSS1 Image">
                <div class="instruction">올바른 스크립트 문구를 넣어주세요</div>
                <div class="input-box">
                    <form method="post" action="<%= request.getContextPath() %>/XSS_animation.jsp">
                        <input type="text" name="userInput" placeholder="답을 입력하세요">
                        <br><br>
                        <button type="submit">Next</button>
                    </form>
                </div>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>