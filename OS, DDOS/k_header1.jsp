<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* { margin:0; padding:0;}
li {list-style:none;}
a { text-decoration:none; color:#111;display:block;}
header {
	width:100%;
	height:100px;
	background-color:#388e3c;
	box-sizing:border-box;
	padding:10px;
}
header h1 { text-align:center;color:#fff;}
header nav {
	width:800px;
	margin:0 auto;
}
header nav ul {
	height:50px;
	display:flex;
	justify-content:space-between;
	align-items:center;
}
header nav ul li a {color:#fff;}
	
</style>
</head>
<body>
<header>
	<h1>Welcome to G3's Project!</h1>
	<nav>
		<ul>
			<li><jsp:forward page="k_index.jsp">홈</jsp:forward></li>
			<li><jsp:forward page="k_sub1.jsp">회원</jsp:forward></li>
			<li><jsp:forward page="k_sub2.jsp">비회원</jsp:forward></li>
		</ul>
	</nav>
</header>
</body>
</html>
