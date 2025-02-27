<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    	<title>파밍</title>
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
        	<h3>파밍</h3>
        	<div style = "font-size:30px; position:absolute; top:38%; left:11%;" id="define_dimention_n" class="define_dimention">
        		<p>평소대로 하이퍼링크를 클릭해서 들어가든 uri를 입력하든지 해서 사이트에들어가서 로그인을 하였는데 그사이트가 해커가 만든 위조사이트여서 정보가 노출되는 것을 의미
        		</p>
        	</div>
        	<div style = "position:absolute; top:38%; left:11%;" id="define_dimention_e" class="define_dimention">
        		<p> 
					해커가 사전에 악성코드나 멀웨어를 통해 취약한 서버의 DNS테이블을 조작하여서 사용자가 평소대로 정상적인 uri로 DNS서버에 요청시 정상정인 사이트가 아닌 해커가 만든 사이트로 리다이렉트 시켜서 사용자가 정보를 입력시킬시 이를 탈취해서 악용하는 공격을 말합니다.
        		<p>
        	</div>
        	<div style="position:absolute; right:11%; top:32%;" id="prevention_dimention">
        		<p>
        		대처방안 : 서버에 공격을 가할 기반이 되지않도록 평소 망분리된 컴퓨터에대한 심화된 이해와 보안에대한 능동적인 의무감을 갖고 주의를 기울여서 사용하여야함 그 이외에도 멀웨어기반 파밍이라불리는 메일을 통한 악성코드 및 트로이목마를 통한 /etc/hosts의 변조를 통한 파밍을 방지하기 위해 메일시스템 이용시
        		 주의를 최대한 기울이는 것이고 취약점이 그나마 없는 인터넷공급망업체를 선정하는 것이고 피싱처럼의 효과는 없지만 접속시 도메인을 주의깊게 살펴보는 것과 http 보다는 https가 사용된 사이트를 선택하고 백신프로그램을 통한 기존의 위협요소 제거를 정기적으로 실시하는 것입니다.
        		</p>
        	</div>
        	<div style= "position:absolute; top:65%; right:20%; width:18%; height:35%; background-color:blue; overflow:hidden; font-size:20px;" id="article_btn">
        		https://m.boannews.com/html/detail.html?tab_type=1&idx=129836
        		https://m.boannews.com/html/detail.html?tab_type=1&idx=129881
        		https://m.boannews.com/html/detail.html?tab_type=1&idx=129889
        		https://m.boannews.com/html/detail.html?tab_type=1&idx=129899
        		https://m.boannews.com/html/detail.html?tab_type=1&idx=129881
        		https://m.boannews.com/html/detail.html?tab_type=1&idx=129864
        	</div>
        	<button style="position:absolute; top:65%; right:11%;" onclick="" id="quiz_btn">퀴즈</button>
        	<button style="position:absolute; top:65%; right:16%;" onclick="" id="zisyu_btn">실습</button>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>