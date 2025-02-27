<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<head>
 <title>main_page</title>
    <style>
     body {    
         background-color:black;
         background-border:black;
         overflow:auto;
         scrollbar-color:white; 
         color:white;
     }
     .context{
     	width:80%;
     	 margin:50px auto;
         border:20px solid gray;
         border-bottom:10px solid white;
         border-radius: 30px 30px 30px 30px;
  	     height:500px;      
         font-family: "Nanum Pen Script", cursive;
  	     font-weight: 400;
 	     font-style: normal;
 	     background-size:100%;
 	     background-color:white;
 	     color:black;
 	     font-size:30px;
     }
     .context .description{
     	width:100%;
     	height:50%;
     	float:left;
     }
     .context .description p{
     	background-image:url("https://cdn.pixabay.com/photo/2016/01/12/12/38/post-it-1135321_1280.png");
     	background-size:cover;
     }
     .context .process_introduce p{
     	width:100%;
     	left:0%;
     	margin:0px;
     	font-size:25px;
     }
     .footer {
     	position:absolute;
     	top:110%;
     	bottom:0%;
     	color:white;
     }
    </style>
</head>
<body>
	<%@ include file="L_Header.jsp" %>
    <div class="context">
     <div class="context_div" id="site_comment">
         <div class="description">
         	<img style="width:150px; height:150px; float:left;" id ="normal_img" src="https://cdn-icons-png.freepik.com/512/5894/5894085.png"></img>
      		<p style="width:300px; float:left;">비전공자의 경우에는 전문용어가 제외된 단순개념파악을 통한 실무환경에서 또는 가정에서 엄금되는 행동을 숙달함으로써 정보보호수준을 강화하는 것을 목표로하고 있습니다.</p>
         	<img style="width:150px; height:150px; float:left;" id ="expert_img" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9tLF7bUlqxbQYT9apokX8WlMyE0q_8S4tDnhIGji8Cw&s"></img>
         	<p style="width:300px; float:left;">전공자의 경우에는 취약점에 관한 기본 배경지식 및 공격에 대한 세부사항 파악을 통해 실제 개발시의 주의사항 및 운영 및 관리시의 주의사항을 학습함으로써 자신이 속한 조직의 보안체계를 강화하는것을 목표로하고 있습니다.</p>
         </div>
         <div class="process_introduce">
         	<p style="text-align:center;">과정 : 취약점 정의 ->실습 or 퀴즈</p>
         	<p>취약점 정의 : 해당취약점_일반적인_정의 취약점_대응방안 취약점_실제사례_및_기사</p>
         	<p style="text-decoration:underline blue;">실습 : 비록 가상머신을 사용하고 있지는 않지만 실제로 사용되는 것과 같은 화면을 제공함으로써 실무에서도 적용이 가능하게 합니다.</p>
         	<p>퀴즈 : 리눅스 마스터 정보처리기사/산언 정보보안기사/산업에서 선출된 실제문제들을 풀어봄으로써 자격증관련 대책으로도 사용됩니다.</p>
         	<p>위의 3가지 과정은 사이트에서 계정별 진행상황을 제공함으로써 저장 및 확인이 가능하게되고 이로 인해 취약점에 관한 이해를 심화시킵니다.</p>
         	<p>교육간에 생기는 의문점을 Q&A게시판에 게시함으로써 같은 사용자 및 운영자를 통해 이해를 심화시킬수있습니다.</p> 
         </div>
         <img style="width:100px;height:70px; right:20%;bottom:3%; float:right; position:absolute;" src="https://www.artlineworld.com/wtu/files/images/ERT-MH_product.png" />
         <img style="width:100px;height:70px; right:10%;bottom:3%; float:right; position:absolute;" src="https://www.craypas.com/global/wp-content/uploads/2016/08/white_board_marker_mi.png" />
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>