<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSRF 정의 및 위험성</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 0;
            margin: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .context {
            line-height: 1.8;
            margin-bottom: 30px;
        }
        h2 {
            margin-top: 30px;
            color: #333;
        }
        pre {
            background-color: #f4f4f4;
            padding: 10px;
            border-radius: 4px;
            white-space: pre-wrap;
            font-size: 14px;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <%@ include file="header.jsp" %>

    <!-- Main Container -->
    <div class="container">
        <div class="context">
            <h2>CSRF (Cross-Site Request Forgery)란?</h2>
            <p>CSRF(Cross-Site Request Forgery)는 웹 애플리케이션의 취약점을 이용한 공격 기법으로, 사용자가 의도하지 않은 요청을 하도록 강제하는 공격입니다. 공격자는 사용자가 인증된 상태에서 악성 웹사이트를 방문하게 하여, 공격자가 원하지 않는 행동을 수행하게 만듭니다.</p>

            <h3>CSRF 공격의 예시 코드</h3>
            <pre><code>&lt;img src="https://example.com/transfer?amount=1000"&gt;</code></pre>
            <p>이 이미지는 사실 이미지가 아니라, 사용자가 특정 요청을 서버로 전송하게 만드는 악성 코드입니다. 이 코드는 사용자가 악의적인 웹사이트를 방문할 때, 사용자의 인증 상태를 이용해 자동으로 요청을 서버로 보내 송금을 하거나 설정을 변경하는 등의 공격을 할 수 있습니다.</p>
        </div>

        <div class="context">
            <h2>CSRF 공격의 위험성</h2>
            <p>CSRF 공격은 사용자의 권한을 이용하여 서버에 요청을 보내기 때문에 매우 위험합니다. 주로 사용자의 로그인 상태를 악용하여 민감한 요청을 서버로 전송하게 하며, 이로 인해 금전적 손실이나 개인정보 유출이 발생할 수 있습니다. 특히 은행, 쇼핑몰, 소셜 네트워크 사이트와 같은 곳에서 치명적인 결과를 초래할 수 있습니다.</p>
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="footer.jsp" %>
</body>
</html>