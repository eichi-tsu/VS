<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PREVENTION_SQL</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="context">
		<div class="comment">
         <h6>SQL을 막기위한 방법을 간략히 정리하면 단순히 해커에 의한 입력값을 점검하는 것이다. <br>
            그러한 작업을 filtering이라하며 이러한 기능은 개발된 웹페이지의 소스코드를 통해 입력이 되어야한다. 그중 필터링대상에 해당되는 것은 ['] ["] [;] [--] [|] [:] [+] [\] [/]이 있습니다.<br>
            위의 문자들은 SQL이라는 언어에서 정보를 조회하거나 사전에 입력된 제한을 무의하게 만드는등 해커들이 악용이 가능한 문자열들입니다.<br> 
            개발자들은 이러한 문자들이 입력란에서 검출이 되면 프로그램을 중단시키거나 입력된 문자열들을 무의미하게 만드는 것입니다. 그중에 사용되는 것이 Prepared Statement(입력문자열 무의미하게)과 replace(입력된 문자열을 강제로 교체)와 단순히 에러페이지로 강제이동시키는 것등이 있습니다.<br>
            <image style="width:30%; height:20%;" src="https://blog.kakaocdn.net/dn/bLWo0L/btqGpz9Q4l7/KhI98vKhxGmz1qmdaID0dk/img.png"/>
            <image style="width:30%; height:20%;" src="https://blog.kakaocdn.net/dn/bKQHmt/btqZ9BFS8w4/qm3lDyxtGSlwuVVXFfvubK/img.png" />
            <image style="width:30%; height:20%;" src="https://blog.kakaocdn.net/dn/bb0faV/btrLhIAClsY/jDbiwiYqbp1KGZl58AN4pK/img.png" />
           </h6>
        </div>
    </div>
	</div>
	<%@ include file="footer.jsp" %> 
</body>
</html>