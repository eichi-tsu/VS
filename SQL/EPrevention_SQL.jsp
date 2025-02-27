<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EXPERT_PREVENTION</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="context">
		<div class="comment">
			<div class="prevention">
        		 SQL Injection을 막기위한 방법은 전부 입력값에대한 처리를 하는 것인데 입력값자체를 무효화시키거나 특정문자열에대한 처리만 진행하는 것이다. 더욱 더 자세히 말해보자면 입력문자열자체를 무효화시키는 것은 preparedstatement라는 기능을 이용하는 것이다. 이를 이용시 입력된것은 강제로!! 문자열취급이 되어 공격자가 아무리 우회문자열을 사용하여도 소용이 없게된다.<br> ex)String qury = "SELECT * FROM ? WHERE Name = ?";<br>
			 	 stmt = conn.perpareStatement(query);<br>
				 stmt.setString(1, tableName);<br>
				 stmt.setString(2, name);<br>
				 rs = stmt.executeQuery();<br> -> 여기서 conn은 jdbc라고 db와 웹사이트를 연결시켜주는 매개체이다. 참고로 jsp전용함수이며 <br> 
				 다음으로 특정문자열에대한 처리는 SQL Injection에 악용가능한 문자인 [=, +, <, >, #, ;, \ ]를 가정문으로 하나 하나 필터링하는 것이다. 아니면 위의 문자들을 replace()를 이용해 무의미한 문자로 강제변환을 시키는 것이다.<br>
				 ex)Str = inputSQL.Replace("'","''");<br>
					Str = str. Replace(";","");<br>
					Str = str. Replace("--","");<br>
					Str = str. Replace("|","");<br>
					Str = str. Replace(":","");<br>
					Str = str. Replace("+","");<br>
					Str = str. Replace("\","");<br>
					Str = str. Replace("/","");<br>
       		 </div>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>