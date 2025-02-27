<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>
 var quiz_array = ['다음 설명에 해당하는 공격 유형으로 알맞은 것은?<br>공격자는 IP 주소를 공격 서버의 IP 주소로 위장하고,<br> ICMP Request 패킷을 브로드캐스트를 통해 다수의 시스템<br>에 전송한다. 이 때 브로드캐스트를 수신한 다수의 시스<br>템은 ICMP Echo Reply 패킷을 공격자가 아닌 공격 대상<br>의 서버로 전송하게 되면서 부하를 발생시킨다.      		<br>① UDP Flooding<br>② Land Attack<br>③ Smurf Attack<br>④ Teardrop Attack','다음 괄호안에 들어갈내용으로 알맞은 것은<br>SYN Flooding 공격의 확인은 대상이 되는 서버<br>에서 netstat 명령을 실행하였을때 , 결과의state항목에<br> (괄호) 표시가 과도하게 발생했다면 이 공격을 의심할 <br>수 있다.<br>1. SYS_SENT 2.SYN_RECV <br>3.TIME_WAIT  4.LAST_ACK<br>','다음 중 DDoS 공격 도구의 종류가 다른 것은?<br>1.Boink<br>2.Trinoo<br>3.TFN 2K<br>4.Stacheldraht','다음에서 설명하는 네트워크 침해 유형으로 알맞은<br> 것은?<br>데이터를 전송하기 위해서는 패킷을 분할하고<br>시퀸스 넘버를 생성하는데, 이러한 시퀸스 넘버를 <br>조작하거나 중첩시켜 내부에 과부하를 발생시키<br>는 공격방법은?<br>1.Land Attack<br>2.Smurf Attack<br>3.Teardrop Attack<br>4.TCP SYN Flooding','다음 중 xinetd 기반으로 동작하는 서비스의 초당 요청<br> 개수가 50개 이상일 경우 10초 동안 접속 연결을 중단<br>하기 위한 설정 항목과 값으로 알맞은 것은?<br>1.cps = 50 10<br>2.cps = 50 100<br>3.cps = 10 50<br>4.cps = 100 50','다음 설명에 해당하는 공격 유형으로 알맞은 것은?<br>ping을 이용해서 관련 패킷을 정상적인 크기보다<br>아주 크게 만들어 보내는 공격방법이다. 크게 만<br>들어진 패킷(65,535byte)은 네트워크를 통해 라<br>우팅되어 공격대상이 되는 네트워크에 도달되는 동안<br>에 아주 작은 조각<br>으로 쪼개어 지고, 공격이되는 시스템<br>은 이 패킷을 모두 처리해야 하므로 훨씬 많은 부하<br>가 걸리게 된다.<br>1.SYN Flooding<br>2.UDP Flooding<br>3.ICMP Flooding<br>4.Teardrop Attack','다음 설명에 해당하는 공격으로 알맞은 것은?<br>여러 대의 공격자를 분산 배치하여 동시에 서비<br>스 거부 공격을 행함으로써 공격대상이 되는 시<br>스템이 정상적인 서비스를 할 수 없도록 방해하<br>는 공격<br>1.Denial of Service<br>2.Distributed Denial of Service<br>3.TCP SYN Flooding<br>4.Teardrop Attack','다음 문장이 설명한 공격 위협은 무엇인가?<br>해당 취약점이 존재하는 경우 부적절하게 권한이 변경되<br>거나 시스템 동작 및 운영에 악영향을 줄 가능<br>성이 있으므로 "\|", "\&", "\;", "\`"문자에대해<br> 필터링 구현이 필요함<br>1.운영체제 명령실행<br>2.XPATH 인젝션<br>3.디렉토리 인덱싱<br>4.정보누출','애플리케이션 계층 취약점을 이용하는 공격유형과 거리가 먼 것은?<br>1.Heartbleed<br>2.Memcached DDoS<br>3.Meltdown, Spectre<br> 4.Shell Shock','다음은 여러 공격 유형에 대해 DNSSEC이 방어 기능을 <br>제공할 수 있는지를 보여주는 분석표이다.<br> 분석이 잘못된 공격유형은?<br>1.	파밍<br>2.	피싱<br>3.	DDos 공격<br>4.웜바이러스에 의한 hosts 파일 안의 정보변조','입력 값에 대한 검증을 누락하거나 부적절한 검증, 데<br>이터의 잘못된 형식지정 등으로 인해 발생할 수<br> 있는 보안 취약점과 가장 거리가 먼 것은?<br>1.SQL 삽입<br>2.크로스사이트 스크립트<br>3.CMD 삽입<br>4.	경쟁 조건','보기의 취약점 또는 사이버 공격 중 그 원인이 하드웨<br>어에 기반하는 것은?<br>1.Heartbleed<br>2.Shellshock<br>3.Spectre<br>4.WannaCry','입력 값에 대한 검증을 누락하거나 부적절한 검증, <br>데이터의 잘못된 형식지정 등으로 인해 <br>발생할 수 있는 보안 취약점과 가장 거리<br>가 먼 것은?<br>1.Heartbleed<br>2.Shellshock<br>3.Spectre<br>4.WannaCry','입력 값에 대한 검증을 누락하거나 부적절한 검증,<br> 데이터의 잘못된 형식지정 등으로 인해<br> 발생할 수 있는 보안 취약점과 가장 거리가 먼 <br>것은?<brr>SQL 삽입<br>2.크로스사이트 스크립트<br>3.CMD 삽입<br>4.경쟁 조건','웹페이지 입력화면 폼 작성 시 GET 방식을 사용할 <br>경우 폼 데이터가 URL 뒤에 첨가되어 전송되며,<br> 이 때문에 그 내용이 쉽게 노출되어 공<br>격에 이용당할 수 있다. 어떤<br> 공격이 이러한 약점을 이용할 수 있는가?<br>1.XPath 삽입<br>2.크로스사이트 스크립트<br>3.크로스사이트 요청 위조<br>4.운영체제 명령어 삽입','OWASP 공격 중 가장 피해가 큰 공격으<br>로 OS나 특정 공격을 위해 값을 넣어 문제를 일<br>으키는 공격 기법은 무엇인가?<br>1.삽입공격<br> 2.부적절한 평가<br>3.평문 저장<br> 4.잘못된 권한 설정','합법적으로 소유하고 있던 사용자들의 도메인을 탈취<br>하거나 DNS 조작을 통해 사용자들이<br> 정확한 웹페이지 주소를 입력하더라<br>도 가짜 웹페이지에 접속하도<br>록 유도하여 개<br>인정보를 훔치는 공격 방식은?<br>1.피싱 공격<br>2.스피어 피싱 공격<br>3.파밍 공격<br>4.워터링 홀 공격','도메인을 탈취하거나 도메인 네임 시스템 또는<br> 프록시 서버의 주소를 변조함으로써 <br>사용자들로 하여금 진짜 사이트로 오인<br>해 접속하도록 유도한 뒤, 개인 정<br>보를 탈취하는 해킹 <br>기법은?<br>1.피싱<br>2.파밍<br>3.스미싱<br> 4.봇넷','다음 중 DNSSEC로 방어가 가능한 최신 보안 이슈는 무엇인가?<br>1.	피싱<br>2.파밍<br>3.스미싱<br>4.큐싱','공격 대상이 방문할 가능성이 있는 합법적인 웹 사이트<br>를 미리 감염시킨 뒤, 잠복하고 있다가 피해<br>자가 방문하면 피해자의 컴퓨터에 악<br>성코드를 설치하는 공격 방법은?<br>1.Malicious Bot 공격<br>2.Watering Hole 공격<br>3.Spear Phishing 공격<br>4.Pharming 공격'];
	var iter;
	var point = 0;
	var kotae = [0];
	var detect = 0;
	//var kotae_array = ["3","1","1","3","1","3","2","1","4","4","3","4","2","1","2","3","2","2","2"];
	var kotae_array = [3,1,1,3,1,3,2,1,4,4,3,4,2,1,2,3,2,2,2];
	var kaisetsu = ['ICMP를 이용한 것은 주로 TearDrop','이용하는 것은 SYN_SENT이고 이것만 보내고 아무런 응답 즉 SYN_ACK가 없이 무한대기 하여 발생','DDOS의공격 종류참조','4대한 설명임','cps = 횟수 중단시간','ping of death와 구별할것','1과 2를 구별할것 지속성의 차이 ','해당 리스트들은 cmd나 teminal에서 중요정보참조시 변조시 잘사용됨 ','SSL에 연관되어있어 응용쳬층이라 할수 없음','3의 경우에는 사전공격에 해당됨','SSL의 취약점때문에 생긴것이며 응용계층은 아님','4는 심볼릭 링크와 연관','4는 심볼릭링크와 연관','1에 대한 설명','1에 대한 설명 그것도 운영체제명령어 삽입에대한 설명 ','파밍에대한 설명 피싱과 다른것은 구별불가능한 uri','2의경우 클라이언트는 대처불가능','파밍에대한 주요 대처방안','2에대한 설명'];
    function Saisyo() {	
    	if(detect==0){
    		var rand = Math.floor(Math.random()*quiz_array.length);
    		kotae.pop();
        	kotae.push(kotae_array[rand]);
        	document.getElementById("quiz_1").innerHTML = "1."+quiz_array[rand];
        	rand = Math.floor(Math.random()*quiz_array.length);
        	kotae.push(kotae_array[rand]);
        	document.getElementById("quiz_2").innerHTML = "2."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
        	rand = Math.floor(Math.random()*quiz_array.length);
        	kotae.push(kotae_array[rand]);
        	document.getElementById("quiz_3").innerHTML = "3."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
        	rand = Math.floor(Math.random()*quiz_array.length);
        	kotae.push(kotae_array[rand]);
        	document.getElementById("quiz_4").innerHTML = "4."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
        	rand = Math.floor(Math.random()*quiz_array.length);
        	kotae.push(kotae_array[rand]);
        	document.getElementById("quiz_5").innerHTML = "5."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
        	rand = Math.floor(Math.random()*quiz_array.length);
        	kotae.push(kotae_array[rand]);
        	document.getElementById("quiz_6").innerHTML = "6."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
        	rand = Math.floor(Math.random()*quiz_array.length);
        	kotae.push(kotae_array[rand]);
        	document.getElementById("quiz_7").innerHTML = "7."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
        	rand = Math.floor(Math.random()*quiz_array.length);
        	kotae.push(kotae_array[rand]);
        	document.getElementById("quiz_8").innerHTML = "8."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
        	rand = Math.floor(Math.random()*quiz_array.length);
        	kotae.push(kotae_array[rand]);
        	document.getElementById("quiz_9").innerHTML = "9."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
        	rand = Math.floor(Math.random()*quiz_array.length);
        	kotae.push(kotae_array[rand]);
        	document.getElementById("quiz_10").innerHTML = "10."+quiz_array[Math.floor(Math.random()*quiz_array.length)];	
        	detect = 1;
    	}
    }
    function saigo(){
    	alert(point*10+"점입니다.");
    }
    /*
    var rand = Math.floor(Math.random()*quiz_array.length);
    kotae.push(kotae_array[rand]);
	document.getElementById("quiz_1").innerHTML = "1."+quiz_array[rand];
	rand = Math.floor(Math.random()*quiz_array.length);
	kotae.push(kotae_array[rand]);
	document.getElementById("quiz_2").innerHTML = "2."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
	rand = Math.floor(Math.random()*quiz_array.length);
	kotae.push(kotae_array[rand]);
	document.getElementById("quiz_3").innerHTML = "3."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
	rand = Math.floor(Math.random()*quiz_array.length);
	kotae.push(kotae_array[rand]);
	document.getElementById("quiz_4").innerHTML = "4."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
	rand = Math.floor(Math.random()*quiz_array.length);
	kotae.push(kotae_array[rand]);
	document.getElementById("quiz_5").innerHTML = "5."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
	rand = Math.floor(Math.random()*quiz_array.length);
	kotae.push(kotae_array[rand]);
	document.getElementById("quiz_6").innerHTML = "6."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
	rand = Math.floor(Math.random()*quiz_array.length);
	kotae.push(kotae_array[rand]);
	document.getElementById("quiz_7").innerHTML = "7."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
	rand = Math.floor(Math.random()*quiz_array.length);
	kotae.push(kotae_array[rand]);
	document.getElementById("quiz_8").innerHTML = "8."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
	rand = Math.floor(Math.random()*quiz_array.length);
	kotae.push(kotae_array[rand]);
	document.getElementById("quiz_9").innerHTML = "9."+quiz_array[Math.floor(Math.random()*quiz_array.length)];
	rand = Math.floor(Math.random()*quiz_array.length);
	kotae.push(kotae_array[rand]);
	document.getElementById("quiz_10").innerHTML = "10."+quiz_array[Math.floor(Math.random()*quiz_array.length)];*/
    //window.open("","MsgWindow","width:500 height:300").document.write("SEIKAI!!");
    function seikai1(){
    	window.open("","MsgWindow","width:500,300").document.write("정답:"+kotae[0]+"\n해설:"+kaisetsu[0]);
    }
    function seikai2(){
    	window.open("","MsgWindow","width:500,300").document.write("정답:"+kotae[1]+"\n해설:"+kaisetsu[1]);
    }
    function seikai3(){
    	window.open("","MsgWindow","width:500,300").document.write("정답:"+kotae[2]+"\n해설:"+kaisetsu[2]);
    }
    function seikai4(){
    	window.open("","MsgWindow","width:500,300").document.write("정답:"+kotae[3]+"\n해설:"+kaisetsu[3]);
    }
    function seikai5(){
    	window.open("","MsgWindow","width:500,300").document.write("정답:"+kotae[4]+"\n해설:"+kaisetsu[4]);
    }
    function seikai6(){
    	window.open("","MsgWindow","width:500,300").document.write("정답:"+kotae[5]+"\n해설:"+kaisetsu[5]);
    }
    function seikai7(){
    	window.open("","MsgWindow","width:500,300").document.write("정답:"+kotae[6]+"\n해설:"+kaisetsu[6]);
    }
    function seikai8(){
    	window.open("","MsgWindow","width:500,300").document.write("정답:"+kotae[7]+"\n해설:"+kaisetsu[7]);
    }
    function seikai9(){
    	window.open("","MsgWindow","width:500,300").document.write("정답:"+kotae[8]+"\n해설:"+kaisetsu[8]);
    	
    }
    function seikai10(){
    	window.open("","MsgWindow","width:500,300").document.write("정답:"+kotae[9]+"\n해설:"+kaisetsu[9]);
    }
    function seikai_count1(){
    	var activate = 0;
    	if(radio1==1){
    		if(kotae[0]==1){
    			point+=1;
    		}	
    	}
    	if(radio1==2){
    		if(kotae[0]==2){
    			point+=1;
    		}	
    	}
    	if(radio1==3){
    		if(kotae[0]==3){
    			point+=1;
    		}	
    	}
    	if(radio1==4){
    		if(kotae[0]==4){
    			point+=1;
    		}	
    	}
    }
    function seikai_count2(){
    	var activate = 0;
    	if(radio2==1){
    		if(kotae[1]==1){
    			point+=1;
    		}	
    	}
    	if(radio2==2){
    		if(kotae[1]==2){
    			point+=1;
    		}	
    	}
    	if(radio2==3){
    		if(kotae[1]==3){
    			point+=1;
    		}	
    	}
    	if(radio2==4){
    		if(kotae[1]==4){
    			point+=1;
    		}	
    	}
    }
    function seikai_count3(){
    	var activate = 0;
    	if(radio3==1){
    		if(kotae[2]==1){
    			point+=1;
    		}	
    	}
    	if(radio3==2){
    		if(kotae[2]==2){
    			point+=1;
    		}	
    	}
    	if(radio3==3){
    		if(kotae[2]==3){
    			point+=1;
    		}	
    	}
    	if(radio3==4){
    		if(kotae[2]==4){
    			point+=1;
    		}	
    	}
    }
    function seikai_count4(){
    	var activate = 0;
    	if(radio4==1){
    		if(kotae[3]==1){
    			point+=1;
    		}	
    	}
    	if(radio4==2){
    		if(kotae[3]==2){
    			point+=1;
    		}	
    	}
    	if(radio4==3){
    		if(kotae[3]==3){
    			point+=1;
    		}	
    	}
    	if(radio4==4){
    		if(kotae[3]==4){
    			point+=1;
    		}	
    	}
    }
    function seikai_count5(){
    	var activate = 0;
    	if(radio5==1){
    		if(kotae[4]==1){
    			point+=1;
    		}	
    	}
    	if(radio5==2){
    		if(kotae[4]==2){
    			point+=1;
    		}	
    	}
    	if(radio5==3){
    		if(kotae[4]==3){
    			point+=1;
    		}	
    	}
    	if(radio5==4){
    		if(kotae[4]==4){
    			point+=1;
    		}	
    	}
    }
    function seikai_count6(){
    	var activate = 0;
    	if(radio6==1){
    		if(kotae[5]==1){
    			point+=1;
    		}	
    	}
    	if(radio6==2){
    		if(kotae[5]==2){
    			point+=1;
    		}	
    	}
    	if(radio6==3){
    		if(kotae[5]==3){
    			point+=1;
    		}	
    	}
    	if(radio6==4){
    		if(kotae[5]==4){
    			point+=1;
    		}	
    	}
    }
    function seikai_count7(){
    	var activate = 0;
    	if(radio7==1){
    		if(kotae[6]==1){
    			point+=1;
    		}	
    	}
    	if(radio7==2){
    		if(kotae[6]==2){
    			point+=1;
    		}	
    	}
    	if(radio7==3){
    		if(kotae[6]==3){
    			point+=1;
    		}	
    	}
    	if(radio7==4){
    		if(kotae[6]==4){
    			point+=1;
    		}	
    	}
    }
    function seikai_count8(){
    	var activate = 0;
    	if(radio8==1){
    		if(kotae[7]==1){
    			point+=1;
    		}	
    	}
    	if(radio8==2){
    		if(kotae[7]==2){
    			point+=1;
    		}	
    	}
    	if(radio8==3){
    		if(kotae[7]==3){
    			point+=1;
    		}	
    	}
    	if(radio8==4){
    		if(kotae[7]==4){
    			point+=1;
    		}	
    	}
    }
    function seikai_count9(){
    	var activate = 0;
    	if(radio9==1){
    		if(kotae[8]==1){
    			point+=1;
    		}	
    	}
    	if(radio9==2){
    		if(kotae[8]==2){
    			point+=1;
    		}	
    	}
    	if(radio9==3){
    		if(kotae[8]==3){
    			point+=1;
    		}	
    	}
    	if(radio9==4){
    		if(kotae[8]==4){
    			point+=1;
    		}	
    	}
    }
    function seikai_count10(){
    	var activate = 0;
    	if(radio10==1){
    		if(kotae[9]==1){
    			point+=1;
    		}	
    	}
    	if(radio10==2){
    		if(kotae[9]==2){
    			point+=1;
    		}	
    	}
    	if(radio10==3){
    		if(kotae[9]==3){
    			point+=1;
    		}	
    	}
    	if(radio10==4){
    		if(kotae[9]==4){
    			point+=1;
    		}	
    	}
    }
    var select1 = document.getElemntById("radio_1_1").checked();
    var radio1,radio2,radio3,radio4,radio5,radio6,radio7,radio8,radio9,radio10;
</script>
<head>
 <title>fundamental_quiz</title>
    <style>
    </style>
</head>
<body onpageshow="Saisyo()">
<%@ include file="L_Header.jsp" %>
 <div style="height:1200px; overflow:scroll;" class="context">
     <h3 style="text-align:center;">FUNDAMENTAL QUiZ</h3>
     <!-- <form action ="fundamental_quiz.jsp" method="post">-->
     <div style="height:100%;" id="quiz_dimention">
     	<p style="position:absolute; width:40%; height:30%; overflow:auto; top:300px; left:12%; font-size:11px;" id="quiz_1"></p>
     	<label style="position:absolute; top:450px; left:40%;"><input id="radio_1_1" onclick="radio1 = 1" style="position:absolute; top:46%;left:42%;" type="radio" name="1mon" value="1"/>1 </label>
     	<label style="position:absolute; top:450px; left:42%;"><input id="radio_1_2" onclick="radio1 = 2" style="position:absolute; top:46%; left:44%;" type="radio" name="1mon" value="2"/>2 </label>
     	<label style="position:absolute; top:450px; left:44%;"><input id="radio_1_3" onclick="radio1 = 3" style="position:absolute; top:46%; left:46%;" type="radio" name="1mon" value="3"/>3 </label>
     	<label style="position:absolute; top:450px; left:46%;"><input id="radio_1_4" onclick="radio1 = 4" style="position:absolute; top:46%; left:58%;" type="radio" name="1mon" value="4"/>4 </label>
     	<button style="position:absolute; top:400px; left:45%;" id="seikai_btn1" onclick="seikai_count1()">정답</button>
     	<button style="position:absolute; top:400px; left:40%;" id="kaisetsu_btn1" onclick="seikai1()">해설</button>
     	<p style="position:absolute; width:40%; height:30%; overflow:auto; top:500px; left:12%; font-size:11px;" id="quiz_2"></p>
     	<label style="position:absolute; top:650px; left:40%;"><input id="radio_2_1" onclick="radio2 = 1" style="position:absolute; top:46%;left:42%;" type="radio" name="2mon" value="1"/>1 </label>
     	<label style="position:absolute; top:650px; left:42%;"><input id="radio_2_2" onclick="radio2 = 2" style="position:absolute; top:46%; left:44%;" type="radio" name="2mon" value="2"/>2 </label>
     	<label style="position:absolute; top:650px; left:44%;"><input id="radio_2_3" onclick="radio2 = 3" style="position:absolute; top:46%; left:46%;" type="radio" name="2mon" value="3"/>3 </label>
     	<label style="position:absolute; top:650px; left:46%;"><input id="radio_2_4" onclick="radio2 = 4" style="position:absolute; top:46%; left:48%;" type="radio" name="2mon" value="4"/>4 </label>
     	<button style="position:absolute; top:600px; left:40%;" id="kaisetsu_btn2" onclick="seikai2()">해설</button>
     	<button style="position:absolute; top:600px; left:45%;" id="seikai_btn2" onclick="seikai_count2()">정답</button>
     	<p style="position:absolute; width:40%; height:30%; overflow:auto; top:700px; left:12%; font-size:11px;" id="quiz_3"></p>
     	<label style="position:absolute; top:850px; left:40%;"><input id="radio_3_1" onclick="radio3 = 1" style="position:absolute; top:46%;left:42%;" type="radio" name="3mon" value="1"/>1 </label>
     	<label style="position:absolute; top:850px; left:42%;"><input id="radio_3_2" onclick="radio3 = 2" style="position:absolute; top:46%; left:44%;" type="radio" name="3mon" value="2"/>2 </label>
     	<label style="position:absolute; top:850px; left:44%;"><input id="radio_3_3" onclick="radio3 = 3" style="position:absolute; top:46%; left:46%;" type="radio" name="3mon" value="3"/>3 </label>
     	<label style="position:absolute; top:850px; left:46%;"><input id="radio_3_4" onclick="radio3 = 4" style="position:absolute; top:46%; left:48%;" type="radio" name="3mon" value="4"/>4 </label>     	
     	<button style="position:absolute; top:800px; left:45%;" id="seikai_btn3" onclick="seikai_count3()">정답</button>     	   
     	<button style="position:absolute; top:800px; left:40%;" id="kaisetsu_btn3" onclick="seikai3()">해설</button>
     	<p style="position:absolute; width:40%; height:30%; overflow:auto; top:900px; left:12%; font-size:11px;" id="quiz_4"></p>
     	<label style="position:absolute; top:1050px; left:40%;"><input id="radio_4_1" onclick="radio4 = 1" style="position:absolute; top:46%;left:42%;" type="radio" name="4mon" value="1"/>1 </label>
     	<label style="position:absolute; top:1050px; left:42%;"><input id="radio_4_2" onclick="radio4 = 2"style="position:absolute; top:46%; left:44%;" type="radio" name="4mon" value="2"/>2 </label>
     	<label style="position:absolute; top:1050px; left:44%;"><input id="radio_4_3" onclick="radio4 = 3" style="position:absolute; top:46%; left:46%;" type="radio" name="4mon" value="3"/>3 </label>
     	<label style="position:absolute; top:1050px; left:46%;"><input id="radio_4_4" onclick="radio4 = 4" style="position:absolute; top:46%; left:48%;" type="radio" name="4mon" value="4"/>4 </label>
     	<button style="position:absolute; top:1000px; left:45%;" id="seikai_btn4" onclick="seikai_count4()">정답</button>
     	<button style="position:absolute; top:1000px; left:40%;" id="kaisetsu_btn4" onclick="seikai4()">해설</button>
    	<p style="position:absolute; width:40%; height:30%; overflow:auto; top:1100px; left:12%; font-size:11px;" id="quiz_5"></p>
    	<label style="position:absolute; top:1250px; left:40%;"><input id="radio_5_1" onclick="radio5 = 1" style="position:absolute; top:46%;left:42%;" type="radio" name="5mon" value="1"/>1 </label>
     	<label style="position:absolute; top:1250px; left:42%;"><input id="radio_5_2" onclick="radio5 = 2" style="position:absolute; top:46%; left:44%;" type="radio" name="5mon" value="2"/>2 </label>
     	<label style="position:absolute; top:1250px; left:44%;"><input id="radio_5_3" onclick="radio5 = 3" style="position:absolute; top:46%; left:46%;" type="radio" name="5mon" value="3"/>3 </label>
     	<label style="position:absolute; top:1250px; left:46%;"><input id="radio_5_4" onclick="radio5 = 4" style="position:absolute; top:46%; left:48%;" type="radio" name="5mon" value="4"/>4 </label>
     	<button style="position:absolute; top:1200px; left:45%;" id="seikai_btn5" onclick="seikai_count5()">정답</button>
    	<button style="position:absolute; top:1200px; left:40%;" id="kaisetsu_btn5" onclick="seikai5()">해설</button>
		<p style="position:absolute; width:40%; height:30%; overflow:auto; top:300px; left:52%; font-size:11px;" id="quiz_6"></p>
		<label style="position:absolute; top:450px; right:20%;"><input id="radio_6_4" onclick="radio6 = 4" style="position:absolute; top:46%; left:60%;" type="radio" name="6mon" value="1"/>4</label>
     	<label style="position:absolute; top:450px; right:22%;"><input id="radio_6_3" onclick="radio6 = 3" style="position:absolute; top:46%; left:60%;" type="radio" name="6mon" value="2"/>3 </label>
     	<label style="position:absolute; top:450px; right:24%;"><input id="radio_6_2" onclick="radio6 = 2" style="position:absolute; top:46%; left:60%;" type="radio" name="6mon" value="3"/>2 </label>
     	<label style="position:absolute; top:450px; right:26%;"><input id="radio_6_1" onclick="radio6 = 1" style="position:absolute; top:46%; left:60%;" type="radio" name="6mon" value="4"/>1 </label>
     	<button style="position:absolute; top:400px; right:15%;" id="seikai_btn6" onclick="seikai_count6()">정답</button>
		<button style="position:absolute; top:400px; right:20%;" id="kaisetsu_btn6" onclick="seikai6()">해설</button>
    	<p style="position:absolute; width:40%; height:30%; overflow:auto; top:500px; left:52%; font-size:11px;" id="quiz_7"></p>
    	<label style="position:absolute; top:650px; right:20%;"><input id="radio_7_4" onclick="radio7 = 4" style="position:absolute; top:46%; left:60%;" type="radio" name="7mon" value="1"/>4 </label>
     	<label style="position:absolute; top:650px; right:22%;"><input id="radio_7_3" onclick="radio7 = 3" style="position:absolute; top:46%; left:60%;" type="radio" name="7mon" value="2"/>3 </label>
     	<label style="position:absolute; top:650px; right:24%;"><input id="radio_7_2" onclick="radio7 = 2" style="position:absolute; top:46%; left:60%;" type="radio" name="7mon" value="3"/>2 </label>
     	<label style="position:absolute; top:650px; right:26%;"><input id="radio_7_1" onclick="radio7 = 1" style="position:absolute; top:46%; left:60%;" type="radio" name="7mon" value="4"/>1 </label>
     	<button style="position:absolute; top:600px; right:15%;" id="seikai_btn7" onclick="seikai_count7()">정답</button>
    	<button style="position:absolute; top:600px; right:20%;" id="kaisetsu_btn1" onclick="seikai7()">해설</button>
    	<p style="position:absolute; width:40%; height:30%; overflow:auto; top:700px; left:52%; font-size:11px;" id="quiz_8"></p>
    	<label style="position:absolute; top:850px; right:20%;"><input id="radio_8_4" onclick="radio8 = 4" style="position:absolute; top:46%; left:60%;" type="radio" name="8mon" value="1"/>4 </label>
     	<label style="position:absolute; top:850px; right:22%;"><input id="radio_8_3" onclick="radio8 = 3" style="position:absolute; top:46%; left:60%;" type="radio" name="8mon" value="2"/>3 </label>
     	<label style="position:absolute; top:850px; right:24%;"><input id="radio_8_2" onclick="radio8 = 2" style="position:absolute; top:46%; left:60%;" type="radio" name="8mon" value="3"/>2 </label>
     	<label style="position:absolute; top:850px; right:26%;"><input id="radio_8_1" onclick="radio8 = 1" style="position:absolute; top:46%; left:60%;" type="radio" name="8mon" value="4"/>1 </label>
     	<button style="position:absolute; top:800px; right:15%;" id="seikai_btn8" onclick="seikai_count8()">정답</button>
    	<button style="position:absolute; top:800px; right:20%;" id="kaisetsu_btn1" onclick="seikai8()">해설</button>
     	<p style="position:absolute; width:40%; height:30%; overflow:auto; top:900px; left:52%; font-size:11px;" id="quiz_9"></p>
     	<label style="position:absolute; top:1050px; right:20%;"><input id="radio_9_4" onclick="radio9 = 4" style="position:absolute; top:46%; left:60%;" type="radio" name="9mon" value="1"/>4 </label>
     	<label style="position:absolute; top:1050px; right:22%;"><input id="radio_9_3" onclick="radio9 = 3" style="position:absolute; top:46%; left:60%;" type="radio" name="9mon" value="2"/>3 </label>
     	<label style="position:absolute; top:1050px; right:24%;"><input id="radio_9_2" onclick="radio9 = 2" style="position:absolute; top:46%; left:60%;" type="radio" name="9mon" value="3"/>2 </label>
     	<label style="position:absolute; top:1050px; right:26%;"><input id="radio_9_1" onclick="radio7 = 1" style="position:absolute; top:46%; left:60%;" type="radio" name="9mon" value="4"/>1 </label>
     	<button style="position:absolute; top:1000px; right:15%;" id="seikai_btn9" onclick="seikai_count9()">정답</button>
     	<button style="position:absolute; top:1000px; right:20%;" id="kaisetsu_btn1" onclick="seikai9()">해설</button>
     	<p style="position:absolute; width:40%; height:20%; overflow:auto; top:1100px; left:52%; font-size:11px;" id="quiz_10"></p> 
     	<label style="position:absolute; top:1250px; right:20%;"><input id="radio_10_4" onclick="radio10 = 4" style="position:absolute; top:46%; left:60%;" type="radio" name="10mon" value="1"/>4 </label>
     	<label style="position:absolute; top:1250px; right:22%;"><input id="radio_10_3" onclick="radio10 = 3" style="position:absolute; top:46%; left:60%;" type="radio" name="10mon" value="2"/>3 </label>
     	<label style="position:absolute; top:1250px; right:24%;"><input id="radio_10_2" onclick="radio10 = 2" style="position:absolute; top:46%; left:60%;" type="radio" name="10mon" value="3"/>2 </label>
     	<label style="position:absolute; top:1250px; right:26%;"><input id="radio_10_1" onclick="radio10 = 1" style="position:absolute; top:46%; left:60%;" type="radio" name="10mon" value="4"/>1 </label>
     	<button style="position:absolute; top:1200px; right:15%;" id="seikai_btn10" onclick="seikai_count10()">정답</button>
     	<button style="position:absolute; top:1200px; right:20%;" id="seikai_btn1" onclick="seikai10()">해설</button>
     	<button style="position:absolute; top:1300px; right:20%" onclick="saigo()">점수</button>
     	</p>
     </div>
     <!-- </form>-->
     </div>
<%@ include file="footer.jsp" %>
</body>
</html>