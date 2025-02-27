<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Normal XSS Define</title>
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="context">
        <div class="comment">
            <div class="define">
                <p>XSS(Cross-Site Scripting, 크로스사이트 스크립팅)은 공격자가 입력한 악성스크립트가 사용자 측에서 응답하는 취약점으로, 사용자 입력값에 대한 검증이 미흡하거나 출력 시 필터링 되지 않을 경우 발생한다.</p>
                <p>쿠키 값 또는 세션 등 사용자의 정보를 탈취하거나 피싱 사이트로의 접근 유도 등 사용자에게 직접적인 피해를 줄 수 있다.</p>
                <img src="xss_material.img" alt="XSS mec" style="width:600x; height:auto;">
                <p>XSS의 동작방식</p>
            </div>
        </div> 
    </div> 
<%@ include file="footer.jsp"%>
</body>
</html>
