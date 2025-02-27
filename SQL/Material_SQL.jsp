<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MATERIAL_SQL</title>
<style>
	 .context{
	 	width:100%;
	 	height:100%;
	 }
	 .SQL_article {
     	 background-color:red;
 	     width:35%;
         height:23%;
         float:left;
     }
     .SQL_word {
         background-color:blue;
      	 width:50%;
         height:70%;
         float:left;
     }
     .SQL_other_attack {
	     background-color:green;
         width:50%;
         height:70%;
         float:left;
     }
     .SQL_other_prevention {
     	 background-color:black;
  		 width:50%;
         height:70%;
         float:left;
     }
    </style>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="context">
		<div class="comment">
   	   	    <div class="SQL_article">
           		<a href="https://m.boannews.com/html/detail.html?idx=132447">SQL인젝션의 해커선호도</a><br>
            	<a href="https://www.boannews.com/media/view.asp?idx=128286&direct=mobile">아직까지 개선점이 많아보이는 SQL인젝션</a><br>
            	<a href="https://www.dailysecu.com/news/articleView.html?idxno=152061">수많은 경고에도 아직까지도 경계의식이 부족한 기업들</a><br>
            	<a href="https://www.bloter.net/news/articleView.html?idxno=24489">수많은 경고에도 아직까지도 경계의식이 부족한 기업들2</a><br>
            	<a href="https://www.dailysecu.com/news/articleView.html?idxno=2536">어린이들의 놀이터에서도 발견되는 SQL인젝션</a><br>
            	<br><br><br><br>
        	</div>
        	<div class="SQL_word">
            	<a href="https://ko.wikipedia.org/wiki/SQL">유키피디아-SQL</a><br>
            	<a href="https://velog.io/@ksk5401/DDL-DML-DCL-%EC%9D%B4%EB%9E%80">SQL의 언어속성분류</a><br>
            	<a href="https://velog.io/@jjuny7712/%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%B2%A0%EC%9D%B4%EC%8A%A4-%EA%B4%80%EA%B3%84%ED%98%95-%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%B2%A0%EC%9D%B4%EC%8A%A4-VS-NoSQL">SQL언어가쓰이는 DB의 종류</a><br>
            	<a href="https://ko.wikipedia.org/wiki/%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%B2%A0%EC%9D%B4%EC%8A%A4_%EA%B4%80%EB%A6%AC_%EC%8B%9C%EC%8A%A4%ED%85%9C">유키피디아-DBMS</a>
            	<br><br><br><br><br><br>
        	</div><br>
        	<div class="SQL_other_attack">
            	<a href="https://owasp.org/www-community/attacks/SQL_Injection_Bypassing_WAF">OWPSP-SQL_Injection_Bypassing_WAF</a><br>
            	<a href="https://owasp.org/www-project-web-security-testing-guide/v41/4-Web_Application_Security_Testing/07-Input_Validation_Testing/05.7-Testing_for_ORM_Injection.html">OWASP-ORM_INJECTION</a><br>
            	<a href="https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/05-Testing_for_SQL_Injection">OWASP-TESTING_SQL_INJECTION</a><br>
            	<br><br><br><br><br><br><br>
        	</div>
        	<div class="SQL_other_prevention">
            	<a href="https://krcert.or.kr/kr/bbs/view.do?bbsId=B0000127&nttId=27369&menuNo=205021">KISA_주요통신기반시설취약점분석pdf</a><br>
            	<a href="https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html">OWASP-SQL_INJECTION_PREVENTION</a><br>
            	<br><br><br><br><br><br><br><br>
        	</div>
    	</div>
	</div>
    <%@ include file="footer.jsp" %>
</body>
</html>