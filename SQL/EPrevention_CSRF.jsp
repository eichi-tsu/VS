<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSRF 방지 메커니즘 및 보안 고려 사항</title>
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
            <h2>CSRF 방지 메커니즘</h2>
            <h3>2.1 CSRF 토큰 (Anti-CSRF Token)</h3>
            <p>원리: 서버는 사용자가 요청할 때마다 CSRF 방지 토큰을 생성해 폼이나 요청 헤더에 포함합니다. 이 토큰은 서버에 저장된 것과 일치해야만 요청이 유효하다고 판단됩니다. 요청에는 인증 쿠키 외에도 해당 토큰이 있어야 합니다.</p>
            <pre><code>
// CSRF 토큰 생성 예시 (Java)
public class CSRFTokenManager {
    public static String generateCSRFToken() {
        return UUID.randomUUID().toString();
    }
    
    public static boolean validateCSRFToken(String sessionToken, String requestToken) {
        return sessionToken != null && sessionToken.equals(requestToken);
    }
}
            </code></pre>
            <p>장점: 매우 강력하고 널리 사용되는 방어 기법.</p>
            <p>단점: 상태 기반 보안이므로 서버에서 저장소 관리가 필요.</p>

            <h3>2.2 SameSite 쿠키 속성</h3>
            <p>원리: 쿠키에 SameSite 속성을 Strict 또는 Lax로 설정하여 외부 사이트에서 전송된 요청에 쿠키가 전송되지 않도록 합니다.</p>
            <pre><code>
// SameSite 속성 설정 예시 (Java Servlet)
Cookie cookie = new Cookie("sessionID", sessionId);
cookie.setMaxAge(3600);  // 쿠키 유효 기간 설정
cookie.setHttpOnly(true); // 클라이언트 자바스크립트에서 접근 불가
cookie.setSecure(true);   // HTTPS에서만 전송
cookie.setPath("/");
cookie.setAttribute("SameSite", "Strict"); // Strict 또는 Lax 설정
response.addCookie(cookie);
            </code></pre>
            <p>장점: 상대적으로 간단하게 구현 가능.</p>
            <p>단점: 완벽한 보호는 아니며 일부 오래된 브라우저는 지원하지 않음.</p>

            <h3>2.3 Referer 헤더 검증</h3>
            <p>원리: 서버는 요청의 Referer 헤더를 확인하여 요청이 믿을 수 있는 출처에서 발생했는지 검증합니다.</p>
            <pre><code>
// Referer 헤더 검증 예시 (Java Servlet)
String referer = request.getHeader("Referer");

if (referer == null || !referer.startsWith("https://trusteddomain.com")) {
    throw new ServletException("Referer 검증 실패");
}
            </code></pre>
            <p>장점: 비교적 간단한 구현.</p>
            <p>단점: 브라우저 설정에 따라 Referer가 누락될 수 있고 완벽한 보호는 아님.</p>

            <h3>2.4 CORS 정책</h3>
            <p>원리: 서버가 명시적으로 신뢰할 수 있는 출처(origin)에서만 요청을 허용하도록 제한합니다.</p>
            <pre><code>
// CORS 설정 예시 (Spring Security)
@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.cors().configurationSource(request -> {
            CorsConfiguration config = new CorsConfiguration();
            config.setAllowedOrigins(Arrays.asList("https://trusteddomain.com"));
            config.setAllowedMethods(Arrays.asList("GET", "POST", "PUT", "DELETE"));
            return config;
        });
    }
}
            </code></pre>
            <p>장점: 특정 출처를 제한함으로써 CSRF 공격을 차단.</p>
            <p>단점: 주로 리소스 공유 관련 공격 방어에 사용되며 CSRF 방어에만 초점이 맞춰져 있지 않음.</p>
        </div>

        <div class="context">
            <h2>기타 보안 고려 사항</h2>
            <h3>JSON 요청 보호</h3>
            <p>일반적으로 CSRF는 폼 데이터를 이용한 요청에서 발생하지만, JSON 요청 역시 보호해야 합니다.</p>
            <pre><code>
// JSON 요청 시 CSRF 토큰 포함 예시 (JavaScript)
fetch("/api/endpoint", {
    method: "POST",
    headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": csrfToken  // CSRF 토큰을 헤더에 포함
    },
    body: JSON.stringify({
        data: "yourData"
    })
});
            </code></pre>

            <h3>서버 보안과 토큰 관리</h3>
            <p>CSRF 방어를 위해 생성한 토큰은 반드시 안전하게 저장하고 관리되어야 합니다. 이 토큰이 유출되면 CSRF 방어 체계는 무용지물이 됩니다.</p>
            <pre><code>
// CSRF 토큰 검증 예시 (Java)
String requestToken = request.getHeader("X-CSRF-Token");
String sessionToken = (String) session.getAttribute("csrfToken");

if (!CSRFTokenManager.validateCSRFToken(sessionToken, requestToken)) {
    throw new ServletException("CSRF 검증 실패");
}
            </code></pre>
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="footer.jsp" %>
</body>
</html>