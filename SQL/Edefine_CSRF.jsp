<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSRF 정의 및 동작 원리</title>
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
            <p>CSRF(Cross-Site Request Forgery)는 웹 애플리케이션의 인증 구조적 취약점을 악용하여 사용자의 세션을 도용하는 공격입니다. 사용자가 인증된 상태에서 공격자가 만든 악성 사이트나 링크를 통해 악의적인 요청이 서버로 전송됩니다.</p>
        </div>

        <div class="context">
            <h2>CSRF 공격의 조건</h2>
            <ul>
                <li>사용자가 인증된 상태로 로그인해 있을 것</li>
                <li>브라우저가 자동으로 쿠키와 인증 정보를 서버에 전송</li>
                <li>사용자가 악성 사이트나 링크를 클릭 또는 방문</li>
            </ul>
        </div>

        <div class="context">
            <h2>CSRF 동작 원리</h2>
            <p>CSRF는 웹 애플리케이션이 사용자의 세션 정보를 바탕으로 인증을 처리하는 구조적 취약점을 악용하는 공격입니다. 공격자는 사용자가 로그인한 상태에서 사용자의 브라우저를 이용해 자동으로 악의적인 요청을 서버에 전송하도록 합니다. 이때 서버는 해당 요청이 사용자의 의도인지 구분할 수 없어 정상적인 요청으로 처리하게 됩니다.</p>
        </div>

        <div class="context">
            <h2>CSRF 공격의 실례</h2>
            <ul>
                <li><strong>SNS 계정 탈취:</strong> 사용자가 로그인된 상태에서 악성 링크를 클릭하면 게시글 작성, 계정 설정 변경 등의 요청이 이루어질 수 있습니다.</li>
                <li><strong>온라인 뱅킹:</strong> 공격자가 사용자가 로그인된 상태에서 송금 요청을 위조해 돈을 탈취할 수 있습니다.</li>
            </ul>
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="footer.jsp" %>
</body>
</html>