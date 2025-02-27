<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    	<title>명령어 삽입</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script>
        	
        </script>
        
        <style>
        	      	
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
        </style>
    </head>
    <body>
    	<%@ include file="L_Header.jsp" %> 
        <div class="context">
        	<h3>명령어 삽입</h3>
        	<div style = "border-size:5px; border-style:dotted; font-size:30px; position:absolute; top:38%; left:11%;" id="define_dimention_n" class="define_dimention">
        		<p>운영체제 명령어 삽입공격이라는 것은 input 태그의 txt와 같은곳에서 사용자가 당연히 자기가 의도한 행동한 할것이라는 안일한 생각으로 개발자가 개발을 함으로써 해커가 악의적인 명령을 실행할수있게 되는것을의미합니다.
        		</p>
        	</div>
        	<div style = "position:absolute; top:38%; left:11%;" id="define_dimention_e" class="define_dimention">
        		<p> 
					개발시에 사용자가 입력값에 대한 검증을 하지않아 개발자가 의도치않은 명령이 cmd를 통해 실행되는것 입니다.
        		<p>
        	</div>
        	<div style="position:absolute; border-size:5px; border-style:dotted; right:11%; top:32%;" id="prevention_dimention">
        		<p>
        		대처방안 : 운영체제 명령어 실행이 가능한 부분을 만들때는 반드시 입력값에 대한 필터링을 진행하되 사전에 미리 허용할 리스트를 정해놓고 입력문자열과 비교를하게 하거나 특수문자(| ; & :)나 파일 리다이렉트 특수문자(> >>)등을 공백으로 강제교체하는 것입니다.</p>
        	</div>
        	<div style= "position:absolute; top:65%; right:20%; width:18%; height:35%; background-color:blue; overflow:hidden; font-size:20px;" id="article_btn">
        		https://www.dailysecu.com/news/articleView.html?idxno=126259	
https://www.bleepingcomputer.com/news/security/palo-alto-networks-fixes-zero-day-exploited-to-backdoor-firewalls/
https://www.bleepingcomputer.com/news/security/palo-alto-networks-warns-of-pan-os-firewall-zero-day-used-in-attacks
/https://www.bleepingcomputer.com/news/security/critical-rust-flaw-enables-windows-command-injection-attacks/	
https://www.bleepingcomputer.com/news/security/over-90-000-lg-smart-tvs-may-be-exposed-to-remote-attacks/	
https://www.bleepingcomputer.com/news/security/over-92-000-exposed-d-link-nas-devices-have-a-backdoor-account/	
https://www.bleepingcomputer.com/news/security/qnap-warns-of-critical-command-injection-flaws-in-qts-os-apps/	
        	</div>
        	<button style="position:absolute; top:65%; right:11%;" onclick="" id="quiz_btn">퀴즈</button>
        	<button style="position:absolute; top:65%; right:16%;" onclick="" id="zisyu_btn">실습</button>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>