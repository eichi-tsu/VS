<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NORMAL_DEFINE</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="context">
		<div class="comment">
			<div class="define">
         		개발자의 부주의로 인해 사용자에의한 입력값을 필터링하는 기능이 구현되지않아 공격자가 입력값에 개발측언어를 업로드함으로써 비정상적인 행위인 중요정보취득 중요정보손해등을 가하는 공격행위를 의미한다. 그리고 공격자는 이렇게 얻은 정보를 이용해 자신의 권한을 상승시켜 사이트에 더 강력한 공격행위를 실행할 수 있게된다.
	        </div>
   		    <div>
         		<li>데이터베이스(DB) : 대량의 데이터가 논리정연하게 효율적으로 모여있는것을 의미하며 Mysql Oracle등이 있다.</li>
            	<li>SQL : DB에 사용되는 개발측언어이며 이를 이용해 권한부여 정보조회 정보수정과 같은 행위를 용이하게 해준다.</li>
            	<li>종류 : 자신이 입력한 것을 모두 정답이게하는 Unbased SQL Injection, DB속의 데이터들을 하나씩 유추가능한 LEFT RIGHT라는 함수를 이용한 Blind SQL Injection, 본디 로그인관련데이터들만 참조가 가능하나 타 데이터묶음들도 열람가능하게 해주는 union을 이용한 Union Based SQL Injection 등이 존재한다.</li>

        	</div>
        	<div class="material">
         		<image style="width:40%; height:30%;" src="https://img1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/2Qq/image/FO2FP30uph7uY7J7RXLD84-HISI.png"/>정상접근
         		<image style="width:40%; height:30%;" src="https://lh3.googleusercontent.com/proxy/HNLiom2JpvyuURk2gKo35vF9eJfDFbo35NEoYp0wKLPfbLrcBxjT7gv5cPXEJltaZQ2nG-7MuKdlrQUE-1bxKHdSpN6Y7nwjGT5-t_yZwMuW"/>비정상접근
        	</div>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>