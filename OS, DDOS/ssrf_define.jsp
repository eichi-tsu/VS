<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    	<title>SSRF 삽입</title>
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
    	<%@ include file="header.jsp" %> 
        <div class="context">
        	<h3>SSRF</h3>
        	<div style = "font-size:30px; position:absolute; top:38%; left:11%;" id="define_dimention_n" class="define_dimention">
        		<p>적절한 검증절차를 거치지 않은 사용자 입력 값을 서버간의 요청에 사용하여 악의적인 행위가 
발생할 수 있는 보안약점이다.
외부에 노출된 웹 서버에 취약한 애플리케이션이 존재하는 경우 공격자는 URL 또는 요청문을 
위조하여 접근통제를 우회하는 방식으로 비정상적인 동작을 유도하거나 신뢰된 네트워크에 있는 
데이터를 획득할 수 있다
        		</p>
        	</div>
        	<div style = "position:absolute; top:38%; left:11%;" id="define_dimention_e" class="define_dimention">
        		<p> 사전에 해커가 서버의 한 노드를 점유하고 해당 해킹한 노드로 악의적인 행위를 서버에 일으켜 마치 서버컴퓨터가 오작동한것처럼 보이게하여 수사관이 추적을 난해하게하는 것을 의미한다.</p>
        	</div>
        	<div style="position:absolute; right:11%; top:32%;" id="prevention_dimention">
        		<p>
        		대처방안 : 식별할 수 있는 범위 내에서 사용자의 입력 값을 다른 시스템의 서비스 호출에 사용하는 경우, 
사용자의 입력 값을 화이트리스트 방식으로 필터링한다.
사용자가 지정하는 무작위의 URL을 받아들여야 한다면 내부의 URL을 블랙리스트로 지정하여 
필터링 한다. 또한 동일한 내부 네트워크에 있더라도 기기 인증, 접근권한을 확인하여 요청이 
이루어질 수 있도록 한다
        		</p>
        	</div>
        	<div style= "position:absolute; top:65%; right:20%; width:18%; height:35%; background-color:blue; overflow:hidden; font-size:20px;" id="article_btn">
        		https://www.boannews.com/media/view.asp?idx=82347	
https://www.boannews.com/media/view.asp?idx=113596	
https://www.lgcns.com/blog/cns-tech/security/3202/	
https://www.datanet.co.kr/news/articleView.html?idxno=137386	
https://m.boannews.com/html/detail.html?idx=46853	
https://www.dailysecu.com/news/articleView.html?idxno=153513	
https://www.itworld.co.kr/news/211794</div>
        	<button style="position:absolute; top:65%; right:11%;" onclick="" id="quiz_btn">퀴즈</button>
        	<button style="position:absolute; top:65%; right:16%;" onclick="" id="zisyu_btn">실습</button>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>