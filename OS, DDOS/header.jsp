<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>
	function Bar_Bigger(){
		/*for(var iter = 0; iter<bar_class.length; iter++){
			bar_class[iter].style.width=100+"%";
		}*/
		var id = document.getElementById("vul_dimention");
		id.style.visibility="visible";
	}
	function Bar_Smaller(){
		/*for(var iter = 0; iter<bar_class.length; iter++){
			bar_class[iter].style.width=50+"%";
		}*/
		var id = document.getElementById("vul_dimention");
		id.style.visibility="hidden";
	}
</script>
<head>
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
         overflow:hidden;
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
            border:1px solid skyblue;
            float:left;
            height:50px;
        }
     #vul_dimention {
     	position:absolute;
     	top:10%;
     	left:0%;
     	width:300px;
     	height:600px;
     	background-color:skyblue;
     	visibility:hidden;
     	overflow:scroll;
     }
    </style>
</head>
<body>
<div class="login_session">
 id:<input id="re_input_id" name="re_id" size="10"/>
    password:<input id="re_input_password" name="re_password" size="10" />
    <button id="login_btn" onclick="">확인</button>
    <button id="logout_btn" onclick="">로그아웃</button>
</div>
<button id="menu_btn" onclick="Bar_Bigger()" onmouseover="Bar_Smaller()"><img style="width:30px;height:30px;" src="https://static.vecteezy.com/system/resources/previews/010/896/688/original/menu-icon-sign-symbol-design-free-png.png"></img></button>
<div id="vul_dimention">
	<p>SQL인젝션</p>
	<ul>
		<li><a href="ddos_define.jsp">정의</a></li>
		<li><a href="http://localhost:8083/G3Project/main_page.jsp">퀴즈</a></li>
		<li><a href="./ddos_zisyu.jsp">실습</a></li>
	</ul>
	<p>XSS</p>
	<ul>
		<li><a href src="">정의</a></li>
		<li><a href src="">퀴즈</a></li>
		<li><a href src="">실습</a></li>
	</ul>
	<p>세션 하이재킹</p>
	<ul>
		<li><a href src="">정의</a></li>
		<li><a href src="">퀴즈</a></li>
		<li><a href src="">실습</a></li>
	</ul>
	<p>CSRF</p>
	<ul>
		<li><a href src="">정의</a></li>
		<li><a href src="">퀴즈</a></li>
		<li><a href src="">실습</a></li>
	</ul>
	<p>SSRF</p>
	<ul>
		<li><a href src="">정의</a></li>
		<li><a href src="">퀴즈</a></li>
		<li><a href src="">실습</a></li>
	</ul>
	<p>OS 명령어 삽입</p>
	<ul>
		<li><a href src="">정의</a></li>
		<li><a href src="">퀴즈</a></li>
		<li><a href src="">실습</a></li>
	</ul>
	<p>버퍼오버플로우</p>
	<ul>
		<li><a href src="">정의</a></li>
		<li><a href src="">퀴즈</a></li>
		<li><a href src="">실습</a></li>
	</ul>
	<p>피싱</p>
	<ul>
		<li><a href src="">정의</a></li>
		<li><a href src="">퀴즈</a></li>
		<li><a href src="">실습</a></li>
	</ul>
	<p>파밍</p>
	<ul>
		<li><a href src="">정의</a></li>
		<li><a href src="">퀴즈</a></li>
		<li><a href src="">실습</a></li>
	</ul>
	<p>스니핑</p>
	<ul>
		<li><a href src="">정의</a></li>
		<li><a href src="">퀴즈</a></li>
		<li><a href src="">실습</a></li>
	</ul>
	<p>스푸핑</p>
	<ul>
		<li><a href src="">정의</a></li>
		<li><a href src="">퀴즈</a></li>
		<li><a href src="">실습</a></li>
	</ul>
	<p>스피어피싱</p>
	<ul>
		<li><a href src="">정의</a></li>
		<li><a href src="">퀴즈</a></li>
		<li><a href src="">실습</a></li>
	</ul>
	<p>DDOS</p>
	<ul>
		<li><a href src="http://localhost/G3Project/ddos_define.jsp">정의</a></li>
		<li><a href src="">퀴즈</a></li>
		<li><a href src="http://localhost/G3Project/ddos_zisyu.jsp">실습</a></li>
	</ul>
	<a href="">종합퀴즈</a>
	<a href="">마이페이지</a>
</div>
 <!--  <div onmouseover="Bar_Bigger()" onmouseout="Bar_Smaller()" class="bar" id="basic_bar">
      	<button onclick="" class="bbtn" id="bbtn_sql">SQL_Injection</button>
         <button onclick="" class="bbtn" id="bbtn_xss">XSS</button>
         <button onclick="" class="bbtn" id="bbtn_session">Sesstion_Hijacking</button>
         <button onclick="" class="bbtn" id="bbtn_csrf">CSRF</button>
         <button onclick="" class="bbtn" id="bbtn_ssrf">SSRF</button>
         <button onclick="" class="bbtn" id="bbtn_command">Command_Injection</button>
         <button onclick="" class="bbtn" id="bbtn_buffer">Buffer_Overflow</button>
         <button onclick="" class="bbtn" id="bbtn_fharming">Fharming</button>
         <button onclick="" class="bbtn" id="bbtn_phishing">Phishing</button>
         <button onclick="" class="bbtn" id="bbtn_sniffing">Sniffing</button>
         <button onclick="" class="bbtn" id="bbtn_spoofing">Spoofing</button>
         <button onclick="" class="bbtn" id="bbtn_spear">Spear_Phishing</button>
         <button onclick="" class="bbtn" id="bbtn_ddos">DDOS</button>
     </div>-->
 <div class="header">
     <h3 id="project_name">G3's project</h3>
     <h6 id="page_name"></h6>
     <button class="hbtn" id="hbtn_home">HOME</button>
        <button class="hbtn" id="hbtn_vullist">VULNERABILITY_LIST</button>
        <button class="hbtn" id="hbtn_quiz">FUNDAMENTAL_QUIZ</button>
        <button class="hbtn" id="hbtn_qa">Q&A</button>
    </div>
</body>
</html>



