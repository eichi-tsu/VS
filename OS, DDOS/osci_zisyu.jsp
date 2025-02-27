<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>명령어 삽입 실습</title>
<style>
	#apache2_conf,#kali_teminal_img{
		position:absolute;
		top:29%;
		left:10%;
		width:80%;
		height:75%;
		z-index:2;
	}
	.attack_dimention {
		background-color:skyblue;
	}
	.defend_dimention *{
		visibility:hidden;
	}
	.ddos_option,.ddos_input {
		position:absolute;
		z-index:3;
		color:white;
	}
	#input_command{
		position:absolute;
		top:50%;
		left:30%;
		z-index:3;
	}
	label {
		font-family: "Gugi", sans-serif;
  		font-weight: 400;
  		font-style: normal;
  		font-size:15px;
	} 
	
</style>
</head>
<%
String sequence = request.getParameter("sequence");
int sequ = sequ_func(sequence);

%>
<%!	
	int sequ_func(String sequence2){
		if(sequence2==null){
			return 0;
		}
		else{
			return Integer.parseInt(sequence2);
		}
}
%>
<script>
	var mondai_array = ["확장자변경 a.txt를 b.txt로(rename 명령어 사용)","\; cat \/etc\/passwd를추가해주세요."];
	var outcome_array = ["확장자가 변경완료되었습니다","확장자가 변경완료되었습니다 <br>root:x:0:0:root:\/root:\/bin\/bash"];
	var img_array = ["osci_anime2 (1).png","osci_anime2 (2).png","osci_anime2 (3).png","osci_anime2 (4).png"];	
	
	
	/*function Vi_Invisible(){
		if(document.getElementById("attack_dimention").style.visibility=="visible"){
			const attack = document.getElementsByClassName("attack_dimention");
			const defend = document.getElementsByClassName("defend_dimention");
			document.getElementById("sequence").style.visibility="visible";
			document.getElementById("d_btn").style.visibility="visible";

			for(let iter = 0; iter<attack.length; iter++){
				attack[iter].style.visibility="hidden";
				defend[iter].style.visibility="visible";
			}
			//document.querySelectorAll(".attack_dimention").style.visibility="hidden";
			document.getElmentById("attack_dimention").style.width="0px";
			document.getElmentById("attack_dimention").style.height="0px";
			//document.querySelectorAll(".defend_dimention").style.visibility="visible";
			document.getElmentById("defend_dimention").style.width="100%";
			document.getElmentById("defend_dimention").style.height="80%";
		}
		else{
			const attack = document.getElementsByClassName("attack_dimention");
			const defend = document.getElementsByClassName("defend_dimention");
			for(let iter = 0; iter<attack.length; iter++){
				attack[iter].style.visibility="visible";
				defend[iter].style.visibility="hidden";
			}
			document.getElementById("sequence").style.visibility="hidden";
			document.getElementById("d_btn").style.visibility="hidden";
			document.getElmentById("attack_dimention").style.width="100%";
			document.getElmentById("attack_dimention").style.height="80%";
			//document.querySelectorAll(".defend_dimention").style.visibility="hidden";
			document.getElmentById("defend_dimention").style.width="0px";
			document.getElmentById("defend_dimention").style.height="0px";
		}
	}*/
	var dsequ = 0;
	function d_Henka(){
		switch(dsequ){
		case 0:
			dsequ+=1;
			window.open("","MsgWindow","width=500,height=300").document.write("해당 입력값은 필터링이 되지 않아 os command injection공격에 취약합니다.");
			break;
		case 1:
			dsequ+=1;
			window.open("","MsgWindow","width=500,height=300").document.write("해당 입력값이 허용된 문자열값 리스트로 필터링되었습니다.");
			break;
		case 2:
			window.open("","MsgWindow","width=500,height=300").document.write("해당 입력값중 치명적인 문자들이 의미없는 문자로 교체되었습니다.");
			dsequ=0;
			break;
		default:
		}
	}
</script>
<body>
	<%@ include file="header.jsp" %>
	<div class="context">
		<button onclick="sequ_active()" style="z-index:3;top:40%; left:80%; background-color:white; position:absolute;" id="vi_btn" value="kakuninn"></button>
		<div id="anime_dimention" style="position:absolute; width:100%; height:80%;">
			
		</div>
		<div id="attack_dimention" style="width:100%; height:80%;" class="attack_dimention">
			<form action ="" method="get" class="attack_dimention">
				<%
					if(sequ==0){
				%>
				<script>
				let si = null;
				clearInterval(si);
				si = setInterval(frame,200);
				let time = 0;
				function frame(){
					if(time<=30){
						document.getElementById("anime_dimention").innerHTML = "<img style=\"position:absolute; z-index:5; width:80%; height:85%;\" src=\"osci_img\/"+img_array[0]+"\" />";
						time= time+1;
					}
					if(time>30){
						document.getElementById("anime_dimention").style.width="0%";
						document.getElementById("anime_dimention").style.height="0%";
					}
				}
				<%=sequ+=1%>;	
				</script>
				<%
					} else if(sequ==1){
				%>
				<script>
				let si = null;
				clearInterval(si);
				si = setInterval(frame,200);
				let time = 0;
				function frame(){
					if(time<=30){
						document.getElementById("anime_dimention").innerHTML = "<img style=\"position:absolute; z-index:5; width:80%; height:85%;\" src=\"osci_img\/"+img_array[1]+"\" />";
						time= time+1;
					}
					if(time>30){
						document.getElementById("anime_dimention").style.width="0%";
						document.getElementById("anime_dimention").style.height="0%";
					}
				}
				<%=sequ+=1%>;
				</script>
				<%
					} else if(sequ==2){
						
					%>
					<script>
					window.open("","MsgWindow","width=500,height=300").document.write(outcome_array[0]);
					<%= sequ+=1 %>
					</script>
				<%
					} else if(sequ==3){
				%>
				<script>
				window.open("","MsgWindow","width=500,height=300").document.write(outcome_array[1]);
				<%= sequ+=1 %>
				</script>
				<%
					} else if(sequ==4){
				%>
				<script>
				let si = null;
				clearInterval(si);
				si = setInterval(frame,200);
				let time = 0;
				function frame(){
					if(time<=30){
						document.getElementById("anime_dimention").innerHTML = "<img style=\"position:absolute; z-index:5; width:80%; height:85%;\" src=\"osci_img\/"+img_array[2]+"\" />";
						time= time+1;
					}
					if(time>30){
						document.getElementById("anime_dimention").style.width="0%";
						document.getElementById("anime_dimention").style.height="0%";
					}
				}
				<%=sequ+=1%>;
				</script>
				<%
					} else if(sequ==5){
				%>
				<script>
				let si = null;
				clearInterval(si);
				si = setInterval(frame,200);
				let time = 0;
				function frame(){
					if(time<=30){
						document.getElementById("anime_dimention").innerHTML = "<img style=\"position:absolute; z-index:5; width:80%; height:85%;\" src=\"osci_img\/"+img_array[3]+"\" />";
						time= time+1;
					}
					if(time>30){
						document.getElementById("anime_dimention").style.width="0%";
						document.getElementById("anime_dimention").style.height="0%";
					}
				}
				<%=sequ+=1%>;
				</script>
				<%
					}
				%>
				<p class="attack_dimention" style="z-index:2; color:white; position:absolute; top:60%; left:12%; width:50%;" id="msfconsole_pre">
				해당 페이지는 ShellExecute(rename)을 사용<br>
				1.a.txt를 b.txt로 변경<br>
				2.a.txt ; cat /etc/passwd 
				</p>
				<input style="position:absolute; top:40%; left:55%;" type = "text" name="pre_ext" value="<%-- <%=pre_ext%>--%>"/>
				<input style="position:absolute; top:45%; left:55%;" type = "text" name="after_ext" value="<%--<%=after_ext%>--%>"/>
				<input type="number" style="opacity:0px; width:0px; height:0px;" name="sequence" value="<%=sequ%>"/>
				<input class="attack_dimention" onclick="Henka()" style="z-index:3; color:white; position:absolute; top:40%; left:70%;" id="msfconsole_submit" type="submit" value="sub"/>  
			</form>
		</div>
		<!--  <div id="defend_dimention" style="width:100%; height:80%;"class="defend_dimention">
			<img class="defend_dimention" id="apache2_conf" src="img/jc.jpg">
			<input class="defend_dimention" size="70" id="input_command" name="linux_command" type="text" />
				<p class="defend_dimention" id="sequence" style="z-index:3; position:absolute; top:50%; left:10%; color:white; font-size:15px;">순서대로 입력해주세요<br>1.ShellExecute(input_factor);<br>
				2.허용할 문자열들의 리스트 사전에 작성하여서 필터링 :<br> 
				allow_array = ["a.txt","b.txt"];<br>
				if(allow_array[0]==input_factor || allow_array[1]==input_factor)//입력문자열이 허락된문자열인가 체크<br>
				else{<br>
					out.println("now allowed!!");<br>
				}<br>
				3. 악용가능한 문자들만 의미없는 문자들로 교체(특수문자(|;&:)나 파일 리다이렉트 특수문자(> >>)<br>
				input_factor.replaceAll("|","");//해당문자들이 발견될경우 공백으로교체
				</p>
				<button onclick="d_Henka()" style="position:absolute; z-index:3; visibility:hidden; top:60%; left:65%;" id="d_btn"  class="defend_dimention" class="ddos_option">submit</button>
		</div>-->
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>