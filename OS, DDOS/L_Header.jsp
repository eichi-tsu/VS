<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Header</title>
	<style>
			body {    
        		background-color:black;
         		background-border:black;
         		overflow:scroll;
         		scrollbar-color:white; 
         		color:white;
     		}
     		#page_name{
     			text-align:center;
     		}
     		.login_session{
         		position:absolute;
         		top:0%;
         		right:0%;
         		font-size:10px;
     		}
     		.login_session #logout_btn{
     			visibility:hidden;
     		}
     		.bar{
         		width:10%;
         		position:fixed;
         		top:0%;
         		left:0%;
     		}
     		.bbtn {
         		width:50%;
         		height:50px;
         		top:0%;
         		left:0%;
         		border:1px solid blue;
         		overflow:auto;
         		background-attachment:scroll;
         		background-color:skyblue;
         		color:blue;
         		font-size:30px;
         		border-radius:0px 0px 15px 0px;
     		}
     		.header{
         		width:100%;
         		height:50px;
        	}
        	.header h3{
         		text-align:center;
            	color:skyblue;
            	font-size:30px;
        	}
        	.hbtn{
         		width:25%;
            	border:1px solid grey;
            	float:left;
            	height:50px;
        	}
        	body {
            	font-family: Arial, sans-serif;
            	margin: 0;
            	padding: 0;
        	}
        	#menuIcon {
            	position: fixed;
            	left: 20px;
           		top: 20px;
            	cursor: pointer;
            	z-index: 9999;
        	}
        	#menuContainer {
            	position: fixed;
            	left: 0;
            	top: 0;
           		height: 100%;
            	width: 250px;
            	background-color: #333;
            	color: #fff;
            	padding: 20px;
            	box-sizing: border-box;
           		transform: translateX(-100%);
            	transition: transform 0.3s ease-in-out;
            	z-index: 9998;
        	}
        	#menuContainer.open {
            	transform: translateX(0);
        	}	
        	#menuContainer ul {
            	list-style-type: none;
            	padding: 0;
        	}
        	#menuContainer ul li {
            	margin-bottom: 10px;
        	}	
        	#menuContainer ul li a {
            	color: #fff;
            	text-decoration: none;
        	}
    	</style>
	<style>
        .sidebar {
            height: 100%;
            width: 0;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: hiffrn;
            transition: 0.5s;
            padding-top: 60px;
        }
        
        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 25px;
            color: #818181;
            display: block;
            transition: 0.3s;
        }
        
        .sidebar a:hover {
            color: #f1f1f1;
        }
        
        .sidebar .close-btn {
            position: absolute;
            top: 0;
            right: 25px;
            font-size: 20px;
            margin-left: 50px;
        }
        .hamburger {
            font-size: 20px;
            cursor: pointer;
            position: fixed;
            top: 20px;
            left: 20px;
            z-index: 999;
        }
        .sidebar {
            height: 100%;
            width: 0;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: auto;
            transition: 0.5s;
            padding-top: 60px;
        }
        
        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 20px;	/***/
            color: #818181;
            display: block;
            transition: 0.3s;
        }
        
        .sidebar a:hover {
            color: #f1f1f1;
        }
        
        .sidebar .close-btn {
            position: absolute;
            top: 0;
            right: 25px;
            font-size: 36px;
            margin-left: 50px;
        }
        .sub-menu {
            display: none;
            padding-left: 10px;
        }
        .sidebar .sub-menu a {
        font-size: 15px;
        }
    </style>
</head>
<body>
	<div class="login_session">
    	<button id="My_Page" onclick="">마이페이지</button>
    	<button id="Logout" onclick="">로그아웃</button>
	</div>
 	<div class="header">
    	<h3 id="project_name">취약점 교육사이트</h3>
    	<h6 id="page_name"></h6>
    	<button class="hbtn" id="hbtn_home">HOME</button>
        <button class="hbtn" id="hbtn_vullist">취약점 리스트</button>
        <button class="hbtn" id="hbtn_quiz">종합 퀴즈</button>
        <button class="hbtn" id="hbtn_qa">소통하기</button>
    </div>
    
	<div class="sidebar" id="sidebar">
    	<a href="#">SQL Injection</a>
    	   	<div class="sub-menu">
        	<a href="SQLInjection_define.jsp">설명</a>
        	<a href="SQLInjection_quiz.jsp">학습 퀴즈</a>
        	<a href="SQLInjection_animation.jsp">실습 애니메이션</a>
    	</div>
    	<a href="#">XSS</a>
    	<div class="sub-menu">
        	<a href="XSS_define.jsp">설명</a>
        	<a href="XSS_quiz.jsp">학습 퀴즈</a>
        	<a href="XSS_animation.jsp">실습 애니메이션</a>
        </div>
    	<a href="#">CSRF</a>
    	<div class="sub-menu">
        	<a href="#">설명</a>
        	<a href="#">학습 퀴즈</a>
        </div>
    	<a href="#">SSRF</a>
    	<div class="sub-menu">
        	<a href="#">설명</a>
        	<a href="#">학습 퀴즈</a>
        	<a href="#">실습 애니메이션</a>
        </div>
    	<a href="#">Session HIjacking</a>
    	<div class="sub-menu">
        	<a href="SessionHijacking_define.jsp">설명</a>
        	<a href="SessionHijacking_quiz.jsp">학습 퀴즈</a>
        </div>
    	<a href="#">OS Command Injection</a>
    	<div class="sub-menu">
        	<a href="osci_define.jsp">설명</a>
        	<a href="osci_quiz.jsp">학습 퀴즈</a>
        	<a href="osc_zisyu.jsp">실습 애니메이션</a>
        </div>
    	<a href="#">Buffer Overflow</a>
    	<div class="sub-menu">
        	<a href="#">설명</a>
        	<a href="#">학습 퀴즈</a>
        </div>
    	<a href="#">Pharming</a>
    	<div class="sub-menu">
        	<a href="pharming_define.jsp">설명</a>
        	<a href="pharming_quiz.jsp">학습 퀴즈</a>
        </div>
    	<a href="#">Phishing</a>
    	<div class="sub-menu">
        	<a href="#">설명</a>
        	<a href="#">학습 퀴즈</a>
        </div>
    	<a href="#">Sniffing</a>
    	<div class="sub-menu">
        	<a href="Sniffing_define.jsp">설명</a>
        	<a href="Sniffing_quiz.jsp">학습 퀴즈</a>
        </div>
    	<a href="#">Spoofing</a>
    	<div class="sub-menu">
        	<a href="#">설명</a>
        	<a href="#">학습 퀴즈</a>
        </div>
    	<a href="#">Spear Phishing</a>
    	<div class="sub-menu">
        	<a href="#">설명</a>
        </div>
    	<a href="#">DDos</a>
    	<div class="sub-menu">
        	<a href="ddos_define.jsp">설명</a>
        	<a href="ddos_quiz.jsp">학습 퀴즈</a>
        	<a href="ddos_zisyu.jsp">실습 애니메이션</a>
        </div>
		<a href="#">Total Quiz</a>
		<div class="sub-menu">
        	<a href="fundamental_quiz.jsp">종합문제 풀기</a>
        	<a href="#">해설</a>
        	<a href="#">다시 풀기</a>
    	</div>
    	<a href="#">MyPage</a>
    	<div class="sub-menu">
        	<a href="#">나의 정보</a>
    	</div>
    	<a href="#" class="close-btn" onclick="closeSidebar()">×</a>
	</div>

	<div class="hamburger" onclick="openSidebar()">☰</div>

	<script>
    	function openSidebar() {
    	    document.getElementById("sidebar").style.width = "250px";
    	    document.getElementsByClassName("hamburger")[0].innerHTML = " ";
    	}

    	function closeSidebar() {
        	document.getElementById("sidebar").style.width = "0";
        	document.getElementsByClassName("hamburger")[0].innerHTML = "☰";
    	}
    	const menuItems = document.querySelectorAll('.sidebar a');
    	menuItems.forEach(item => {
        	item.addEventListener('click', function(e) {
            	const subMenu = this.nextElementSibling;
            	if (subMenu && subMenu.classList.contains('sub-menu')) {
                	e.preventDefault();
                	if (subMenu.style.display === 'block') {
                	    subMenu.style.display = 'none';
                	} else {
                	    subMenu.style.display = 'block';
                	}
            	}
        	});
    	});
	</script>
</body>
</html>