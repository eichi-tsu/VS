<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    	<title>DDOS</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script>
        	function Switch1_Anime(){
        		document.getElementById("define_dimention_n").style.visibility="visible";	
        	}
        	function Switch2_Anime(){
        		document.getElementById("define_dimention_n").style.visibility="invisible";	
        	}
        </script>
        
        <style>
        	/*
        	.switch {
        		width:200px;
        		height:30px;
        		left:11%;
        		position:absolute;
        		top:30%;
        	}
        	.switch input{
        		opacity:0;
        		width:0;
        		height:0;
        	}
        	.slider {
        		background-color:skyblue;
        		transition:.4s;
        		width:100px;
        		height:30px;
        		top:30%;
        		left:10%;
        		position:absolute;
          	}
        	.slider:before{
        		content:"literal";
        		color:black;
        		position:absolute;
        		width:20px;
        		height:20px;
        		top:20%;;
        		left:10%;
        		background-color:white;
        		font-size:10px;
        	}
        	input:checked .slider{
        	background-color:blue;
        	}  
        	input:focus .slider{
        	box-shadow:0 0 1px gray;
        	}
        	input:checked + .slider:before{
        		content:"animation";
        		transform:translateX(30px);
        	}
        	.switch2 {
        		width:200px;
        		height:30px;
        		right:10%;
        		position:absolute;
        		top:30%;
        	}
        	.switch2 input{
        		opacity:0;
        		width:0;
        		height:0;
        	}
        	.slider2 {
        		background-color:skyblue;
        		transition:.4s;
        		width:100px;
        		height:30px;
        		top:30%;
        		right:10%;
        		position:absolute;
          	}
        	.slider2:before{
        		content:"normal";
        		color:black;
        		position:absolute;
        		width:20px;
        		height:20px;
        		top:20%;
        		right:60%;
        		background-color:white;
        		font-size:10px;
        	}
        	.switch2 input:checked .slider2{
        	background-color:blue;
        	}  
        	.switch2 input:focus .slider2{
        	box-shadow:0 0 1px gray;
        	}
        	.switch2 input:checked + .slider2:before{
        		content:"expert";
        		transform:translateX(30px);
        	} */     	
    		.context h3 {
    			text-align:center;
    			margin:0px;
    		}
           #define_dimention_n {
           	   position:absolute;
               overflow:auto;
               visibility:visible;
               width:50%;
               height:60%;
           }
           #define_dimention_e {
           	   position:absolute;
               overflow:auto;
               visibility:hidden;
               width:50%;
               height:60%
                
           }
           #prevention_dimention{
               width:28%;
               overflow:auto;
               font-size:20px;
           }
           #article_btn,#define_dimention_n,#define_dimention_e,#prevention_dimention{
           	background-image:url("https://cdn.pixabay.com/photo/2016/01/12/12/38/post-it-1135321_1280.png");
           	background-size:100%;
           	border-color:yellow;
           }
        </style>
    </head>
    <body>
    	<%@ include file= "L_Header.jsp" %> 
    	<div class="context">
    		<p style="z-index:5; position:absolute; left:30%; font-size:30px;">DEFINE</p>
        	<p style="z-index:5; position:absolute; left:67%; top:25%; font-size:30px;">DEFEND</p>
        	<p style="z-index:5; position:absolute; right:23%; bottom:29%; font-size:30px;">ARTICLE</p>
        	
        	<h3>DDOS</h3>
        	<div style = "border-size:5px; border-style:solid; font-size:30px; position:absolute; top:38%; left:11%;" id="define_dimention_n" class="define_dimention">
        		<p>해커가 악성코드나 스파이웨어와같은 수단으로 자신의 명령을 수행하는 봇을 다수 만들고 이를 이용하여 사이트에 접속을 한다거나 데이터를 조회하는 등의 명령을 대량으로 시킴으로써 서버의 한정된 자원의 사용량을 초과하게 함으로써 일시적으로 사용불가능하게 만드는 공격을 의미합니다.
        		</p>
        	</div>
        	<div style = "position:absolute; top:38%; left:11%;" id="define_dimention_e" class="define_dimention">
        		<p> 
전문가 : 웹데이터베이스 get_flooding post_flooding을 대량 요청함으로서 db에 집중공격
대역폭 httpd.conf maxkeepalive time out 설정 infinite 
자원소비 udp tcp syn악용
        		<p>
        	</div>
        	<div style="border-size:5px; border-style:solid;  position:absolute; right:11%; top:32%;" id="prevention_dimention">
        		<p>
        		개발시 /usr/local/apache/conf/httpd.conf 에서 MaxKeepAlive = limited
Time out =limited 
        		</p>
        	</div>
        	<div style= " border-size:5px; border-style:solid;  position:absolute; top:65%; right:20%; width:18%; height:35%; overflow:hidden; font-size:20px;" id="article_btn">
        		<p style="width:80%; height:60%; font-size:10px;">
        		https://m.boannews.com/html/detail.html?mtype=1&idx=125407
        		https://m.boannews.com/html/detail.html?mtype=1&idx=120983
        		https://m.boannews.com/html/detail.html?mtype=1&idx=127987
        		https://m.boannews.com/html/detail.html?mtype=1&idx=126784
        		https://m.boannews.com/html/detail.html?mtype=1&idx=126709
        		https://m.boannews.com/html/detail.html?mtype=1&idx=126709
        		</p>
        	</div>
        	<button style="position:absolute; top:65%; right:11%;" onclick="document.location.href='ddos_quiz.jsp'" id="quiz_btn">퀴즈</button>
        	<button style="position:absolute; top:65%; right:16%;" onclick="document.location.href='ddos_zisyu.jsp'" id="zisyu_btn">실습</button>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>