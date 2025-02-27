<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<html>
<script>
	function Login_Btn_Click(){
		document.location.href="Before_Login.jsp";
	}
	function Bar_Btn_Click(){
		if(document.getElementById("bar").style.visibility="hidden"){
			document.getElementById("bar").style.visibility="visible";		
		}
	}
	function Bar_Btn_Click2(){
		if(document.getElementById("bar").style.visibility="visible"){
			document.getElementById("bar").style.visibility="hidden";		
		}
	}
</script>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	.header{
			float:left;
			width:100%;
			height:20%;
			margin:0px;
			background-image:url("https://png.pngtree.com/thumb_back/fh260/back_our/20190628/ourmid/pngtree-grunge-vector-banner-abstract-header-background-vector-triangles-seamless-banner-vintage-image_264169.jpg");
		}
		.header *{
			float:left;
		}
		.header img{
			width:5%;
			height:5%:
		}
		.header .bar_btn{
			float:right;
			background-color:transparent;
			border:0px;
		}
		.header .other_btn{
			float:left;
		}
		body{
			background-image:url("https://cdn.pixabay.com/photo/2015/05/06/03/56/blue-754864_640.png");
			background-repeat:no-repeat;
			background-size:cover;
			margin:0;
		}
		.bar {
			float:right;
			width:20%;
			height:100%;
			position:absolute;
			right:0px;
			top:0px;
			background-color:green;
			background-attachment:fixed;
			visibility:hidden;
			opacity:0.7;
		}
		.bar div{
			width:100%;
			height:30%;
			float:left;
		}
		.bar div a {
			font-size:20px;
			text-align:center;
			text-decoration-line: none;
		}
		.bar div li a{
			color:black;
			text-decoration-line: none;
		}
		.bar .bar_btn{
			float:right;
			background-color:transparent;
			border:0px;
		}
		.context{
			width:80%;
			height:70%;
			margin:0px auto;
			background-image:url("https://png.pngtree.com/thumb_back/fw800/background/20201106/pngtree-dark-green-classic-school-education-blackboard-background-image_464655.jpg");
			background-repeat:no-repeat;
			background-size:cover;
			border:10px solid rgb(147, 90, 48);
			font-family: "Nanum Pen Script", cursive;
			font-size:30px;
			color:yellow;
		}
</style>
</head>
<body>
	<div class="header">
		<a href="Main_Page.jsp"><img src="https://cdn-icons-png.flaticon.com/512/7606/7606153.png"/></a>
		<p>nickname</p>
		<button onclick="Login_Btn_Click()" class="other_btn">LOGIN/OUT</button>
		<button class="other_btn">MyPage</button>
		<button onclick="Bar_Btn_Click()" class="bar_btn">&#9776;</button>
	</div>
	<div id="bar" class="bar">
		<button onclick="Bar_Btn_Click2()" class="bar_btn">&#9776;</button>
		<div>
			<a href="Edefine_SQL.jsp">SQL Injection</a>
			<li><a href="Ndefine_SQL.jsp">NDEFINE</a></li>
			<li><a href="Material_SQL.jsp">MATERIAL</a></li>
			<li><a href="EPrevention_SQL.jsp">PREVENTION</a></li>
			<li><a href="NPrevention_SQL.jsp">NPREVENTION</a></li>
			<li><a href="Attack_Execute_Pre.jsp">EXCUTE_PRE</a></li>
			<li><a href="">EXCUTE_ATTACK</a></li>
			<li><a href="">EXCUTE_DEVELOPER</a></li>
		</div>
		<br>
		<br>
		<br>
		<br>
		<div>
			<a href="Edefine_XSS.jsp">XSS</a>
			<li><a href="Ndefine_XSS.jsp">NDEFINE</a></li>
			<li><a href="">MATERIAL</a></li>
			<li><a href="Edefine_XSS.jsp">PREVENTION</a></li>
			<li><a href="Ndefine_XSS.jsp">NPREVENTION</a></li>
			<li><a href="">EXCUTE_PRE</a></li>
			<li><a href="">EXCUTE_ATTACK</a></li>
			<li><a href="">EXCUTE_DEVELOPER</a></li>
		</div>
		<br>
		<br>
		<br>
		<br>
		<div>
			<a href="Edefine_CSRF.jsp">CSRF</a><br>
			<li><a href="Ndefine_CSRF.jsp">NDEFINE</a></li>
			<li><a href="">MATERIAL</a></li>
			<li><a href="EPrevention_CSRF.jsp">PREVENTION</a></li>
			<li><a href="NPrevention_CSRF.jsp">NPREVENTION</a></li>
			<li><a href="">EXCUTE_PRE</a></li>
			<li><a href="">EXCUTE_ATTACK</a></li>
			<li><a href="">EXCUTE_DEVELOPER</a></li>
		</div>
	</div>
</body>
</html>
