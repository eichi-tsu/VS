<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expert XSS Define</title>
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="context">
        <div class="comment">
            <div class="define">
                <p>XSS(Cross-Site Scripting, 크로스사이트 스크립팅)은 공격자가 입력한 악성스크립트가 사용자 측에서 응답하는 취약점으로, 사용자 입력값에 대한 검증이 미흡하거나 출력 시 필터링 되지 않을 경우 발생한다.</p>
                <p>쿠키 값 또는 세션 등 사용자의 정보를 탈취하거나 피싱 사이트로의 접근 유도 등 사용자에게 직접적인 피해를 줄 수 있다.</p>
                <p>공격 방법에 따라 아래의 유형 3가지로 나눌 수 있습니다.</p>
                <p>1. Stored XSS (저장형 크로스사이트스크립트)</p>
                <p>취약점이 있는 웹 서버에 악성 스크립트를 저장하는 공격 방법입니다. 공격자는 악성 스크립트가 포함된 게시글을 작성하여 게시판 등 사용자가 접근할 수 있는 페이지에 업로드 합니다. 이후 사용자가 해당 게시글을 요청하면 서버에 저장된 악성 스크립트가 사용자 측에서 동작하게 됩니다.</p>
                <p>2. Reflected XSS (반사형 크로스사이트스크립트)</p>
                <p>웹 응용 프로그램의 지정된 변수를 이용할 때 발생하는 취약점을 이용하는 공격으로, 악성 스크립트가 데이터베이스와 같은 저장소에 별도로 저장되지 않고 사용자의 화면에 즉시 출력되는데요. 주로 이메일, 메신저 등에 포함된 URL을 통해 공격이 이루어지고 있습니다.</p>
                <p>3. DOM Based XSS (DOM 기반 크로스사이트스크립트)</p>
                <p>악성 스크립트가 서버와 상호작용 없이 브라우저 자체에서 실행되는 취약점으로, 페이지에 포함되어 있는 브라우저 악성코드가 DOM 환경에서 실행됩니다.</p>
                <p>>*DOM(Document Object Model, 문서 객체 모델): 브라우저가 웹 페이지를 렌더링 하는데 사용하는 모델로 HTML 및 XML 문서에 접근하기 위한 인터페이스</p><br>
                <p>Stored XSS 및 Reflected XSS는 서버에서 악성 스크립트의 공격이 이루어지기 때문에 위험 징후를 발견할 수 있습니다.</p>
                <p>반면, DOM Based XSS는 브라우저에서 바로 공격이 이루어지기 때문에 취약점을 쉽게 발견할 수 없다는 특징이 있어 보다 깊은 주의가 필요합니다.</p>
                <img src="XSS/XSS_ mec.png" alt="XSS_mec" style="width:600x; height:auto;">
                <p>XSS의 동작방식</p>
            </div>
        </div> 
    </div> 
<%@ include file="footer.jsp"%>
</body>
</html>

