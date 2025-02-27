<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EXPERT_DEFINE</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="context">
		<div class="comment">
			<h6>SQL INJECTION</h6>
        	<p>개발자의 부주의로 인해 코드상에 입력값을 검증하는 기능이 존재하지 않아 공격자가 이를 악용하여 SQL문을 임의의 입력값에 업로드함으로써 DB내의 테이블명 column명등이 노출되어 중요정보가 노출되거나 아예 DB자체를 손상시키는등의 피해가 발생하는 현상을 의미하며 데이터를 탈취해서 권한상승이 가능하게 되고 차후의 공격의 발판이되는 공격방식이다.</p>
     		<div class="define">
        		 <li>Unbased Sql Injection : 일반적인 입력값자체에 참이되는 sql문을 대입함으로써 DB에 접근하는 공격방식 ex) ' OR '1' = '1 -> 1은 Ture즉 참을 의미하며 '자체는 웹페이지 자체에서 문자열의 종료를 의미하고 이를 중복사용하여서 뒤의 문자열들을 의미있게 하는것이다.</li><br>
        		 <li>Blind Sql Injection : LEFT RIGHT를 이용하여 DB에 저장된 정보들의 부분부분조합하여서 의미있는 정보를 만들어내는 방식 ex) passwd가 a1b2c3 일때 left(passwd,1) = "0" -> false반환 left(passwd,1) = "a" -> true반환을 이용해 결국에는 passwd가 a1b2c3라는 것을 알아내는 공격방식 </li><br>
        		 <li>Union based Sql Injection : 정상적인 방식으로는 단지 지정된 테이블에서밖에 접근이 안되나 sql문의 union을 이용하여서 허용되지않은 타 테이블의 정보를 얻는 공격방식 ex) ‘union(select(1),tabe_name,(3)from`information_schema`.`tables`)# --> '을 이용해 문자열을 종료시키고 #를 이용해 뒤의 알고리즘을 무효화시키고 union을 이용해 의도치않은 테이블에 접근이 가능해진다.</li><br>
       	    </div>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>