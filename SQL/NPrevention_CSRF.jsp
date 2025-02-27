<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSRF 방어 기법</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 0;
            margin: 0;
            background-color: #f4f4f4;
        }
        header, footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
        header h1, footer p {
            margin: 0;
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
            <h2>CSRF 방어 기법</h2>
            <p>CSRF 공격을 방어하기 위한 다양한 기법들이 있으며, 그 중 가장 널리 사용되는 방법은 CSRF 토큰을 이용하는 것입니다. 서버는 클라이언트가 보내는 요청에 CSRF 토큰을 포함하도록 하여 요청의 유효성을 검증합니다.</p>

            <h3>1. CSRF 토큰 사용</h3>
            <pre><code>&lt;form action="/transfer" method="POST"&gt;
    &lt;input type="hidden" name="csrf_token" value="<%= session.getAttribute("csrf_token") %>"&gt;
    &lt;input type="hidden" name="amount" value="1000"&gt;
    &lt;button type="submit"&gt;송금하기&lt;/button&gt;
&lt;/form&gt;</code></pre>

            <h3>2. Referer 헤더 검증</h3>
            <pre><code>if (request.getHeader("Referer") != null && request.getHeader("Referer").equals("https://trusted-site.com")) {
    // 요청 허용
} else {
    // 요청 차단
}</code></pre>

            <h3>3. 쿠키의 SameSite 속성</h3>
            <pre><code>Set-Cookie: session_id=abc123; SameSite=Strict; Secure</code></pre>
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="footer.jsp" %>
</body>
</html>