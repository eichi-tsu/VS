<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME TO G3'Project</title>
<script>
	function Anyone_Click(){
		document.location.href="Before_Login.jsp";
	}
</script>
<style>
	body{
			background-image:url("https://cdn.pixabay.com/photo/2015/05/06/03/56/blue-754864_640.png");
			background-repeat:no-repeat;
			background-size:cover;
			margin:0;
		}
	.anyone {
		font-size:50px;
		text-align:center;
	}
	.anyone_btn {
		width:100%;
		height:100%;
	}
</style>
</head>
<body>
	<btn onclick="Anyone_Click()" class="anyone_btn">
		<div class="anyone">
			<h3>WELCOME TO G3'PROJECT</h3><br>
			<h6>PLEASE ANYONE TOUCH </h6><br><br><br>
		</div>
	</btn>
</body>
</html>