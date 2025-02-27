<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<head>
<meta charset="UTF-8">
<title>G3's Project_로그인</title>
<script src="script.js"></script>
</head>
<body onload="document.frm.regist_month.focus();">
<%@ include file="header.jsp" %>
<section>
<form name="frm" action="action.jsp" method="post">
	<div class="title">로그인(비회원)</div>
	<div class="wrapper">
	<table class="insertBox" style="width: 600px;">
	<colgroup>
	<col width="30%;">
	<col width="70%;">
	</colgroup>
		<tr>
			<th>이름</th>
			<td>
			<input type="text" name="name" maxlength="6">
			</td>
		</tr>
		<tr>
			<th>사용할 ID</th>
			<td><input type="text" name="id" maxlength="6"></td> 
		</tr>
		<tr>
			<th>사용할 PASSWORD</th>
			<td><input type="text" name="password" maxlength="6"></td> 
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="text" name="email" maxlength="6"></td> 
		</tr>
		<tr>
			<th>전화번호</th>
			<td><input type="text" name="phonenumber" maxlength="6"></td> 
		</tr>
		<tr>
			<td style="text-align:center;" colspan="2">
			<button class="btn" type="submit" onclick="fn_submit2(); return false;">회원가입</button>
			<button class="btn" type="button" onclick="fn_reset();" >다시쓰기</button>
			</td>			
		</tr>		
	</table>
	</div>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>