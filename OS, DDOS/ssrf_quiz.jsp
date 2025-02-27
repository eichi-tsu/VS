<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    	<title>SSRF 퀴즈</title>
    	
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script>
        	var iter = 0;
        	var mondai_array = ['다음 설명에 해당하는 공격 유형으로 알맞은 것은? 공격자는 IP 주소를 공격 서버의 IP 주소로 위장하고, ICMP Request 패킷을 브로드캐스트를 통해 다수의 시스템에 전송한다. <br>이 때 브로드캐스트를 수신한 다수의 시스템은 ICMP Echo Reply 패킷을 공격자가 아닌 공격 대상의 서버로 전송하게 되면서 부하를 발생시킨다.      		<br>① UDP Flooding<br>② Land Attack<br>③ Smurf Attack<br>④ Teardrop Attack','다음 괄호안에 들어갈내용으로 알맞은 것은<br>SYN Flooding 공격의 확인은 대상이 되는 서버에서 netstat 명령을 실행하였을때 , 결과의state<br>항목에 (괄호) 표시가 과도하게 발생했다면 이 공격<br>을 의심할 수 있다.1. SYS_SENT 2.SYN_RECV <br>3.TIME_WAIT 4.LAST_ACK<br>','다음 중 DDoS 공격 도구의 종류가 다른 것은?<br>1.Boink<br>2.Trinoo<br>3.TFN 2K<br>4.Stacheldraht','다음에서 설명하는 네트워크 침해 유형으로 알맞은 것은?<br>데이터를 전송하기 위해서는 패킷을 분할하고<br>시퀸스 넘버를 생성하는데, 이러한 시퀸스 넘버를 <br>조작하거나 중첩시켜 내부에 과부하를 발생시키<br>는 공격방법은?<br>1.Land Attack<br>2.Smurf Attack<br>3.Teardrop Attack<br>4.TCP SYN Flooding','다음 중 xinetd 기반으로 동작하는 서비스의 초당 요청 개수가 50개 이상일 경우 10초 동안 접속 연결을 중단하기 위한 설정 항목과 값으로 알맞은 것은?<br>1.cps = 50 10<br>2.	cps = 50 100<br>3.cps = 10 50<br>4.cps = 100 50','다음 설명에 해당하는 공격 유형으로 알맞은 것은?<br>ping을 이용해서 관련 패킷을 정상적인 크기보다<br>아주 크게 만들어 보내는 공격방법이다. 크게 만<br>들어진 패킷(65,535byte)은 네트워크를 통해 라<br>우팅되어 공격대상이 되는 네트워크에 도달되는 동안에 아주 작은 조각<br>으로 쪼개어 지고, 공격이되는 시스템은 이 패킷을 모두 처리해<br>야 하므로 훨씬 많은 부하가 걸리게 된다.<br>1.SYN Flooding<br>2.UDP Flooding<br>3.ICMP Flooding<br>4.Teardrop Attack','다음 설명에 해당하는 공격으로 알맞은 것은?<br>여러 대의 공격자를 분산 배치하여 동시에 서비<br>스 거부 공격을 행함으로써 공격대상이 되는 시<br>스템이 정상적인 서비스를 할 수 없도록 방해하<br>는 공격<br>1.Denial of Service<br>2.Distributed Denial of Service<br>3.TCP SYN Flooding<br>4.Teardrop Attack'];
        	var mondai2_array = ['공격 대상이 방문할 가능성이 있는 합법적인 웹 사이트<br>를 미리 감염시킨 뒤, 잠복하고 있다가 피해<br>자가 방문하면 피해자의 컴퓨터에 악<br>성코드를 설치하는 공격 방법은?<br>1.Malicious Bot 공격<br>2.Watering Hole 공격<br>3.Spear Phishing 공격<br>4.Pharming 공격'];
        	var kotae_array = [2];
        	function Listing(){
        		if(iter < mondai2_array.length){
        			document.getElementById("mondai").innerHTML = iter+"."+mondai2_array[iter];
        			document.getElementById("kotae").innerHTML = kotae_array[iter];
        			document.getElementById("kotae").style.visibility="hidden";
        			iter++;
          		}
        		else{
        			iter = 0;
        		}
        	}
        	function Kotae(){
        		document.getElementById("kotae").style.visibility="visible";
        	}
        </script>
        
        <style>      	
    		.context h3 {
    			text-align:center;
    			margin:0px;
    		}
			.mondai_dimention {
				width:70%;
				height:80%;
				overflow:auto;
			}
			.select_dimention {
				
			}
			#kotae{
				position:absolute;
				top:73%;
				left:85%;
			}
			#kotae_btn{
				position:absolute;
				top:80%;
				left:80%;
			}
			#kakunin_btn{
				position:absolute;
				top:80%;
				right:30%;
			}
        </style>
    </head>
    <body>
    	<%@ include file="header.jsp" %> 
        <div class="context">
        	<h3>SSRF</h3>
        	<div class="mondai_dimention">
        		<p id="mondai"></p>
        	</div>
        	<div class="select_dimention">
        		<p id="kotae"></p>
        		<button onclick="Kotae()" id="kotae_btn">정답</button>
        	</div>
        	<button onclick = "Listing()" id="kakunin_btn">확인</button>
        </div>	
        <%@ include file="footer.jsp" %>
    </body>
</html>