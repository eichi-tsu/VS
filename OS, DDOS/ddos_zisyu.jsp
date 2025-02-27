<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DDOS 실습</title>
<%
String anime_sequ = request.getParameter("anime_sequ");
String sequence = request.getParameter("sequence");
int sequ = sequ_func(sequence);
int anime_sequ_i = a_sequ_func(anime_sequ);
String kali_mazi;
kali_mazi = kali_real(request.getParameter("kali_input"));


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
int a_sequ_func(String sequence2){
	if(sequence2==null){
		return 0;
	}
	else{
		return Integer.parseInt(sequence2);
	}
}
String kali_real(String fun_input){
	if(fun_input == null){
		return "show -h";
	}
	else{
		return fun_input.toString();
	}
}
%>
<style>
	#apache2_conf,#kali_teminal_img{
		position:absolute;
		top:29%;
		left:10%;
		width:80%;
		height:75%;
		z-index:2;
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
		top:29%;
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
<script>
	var preconsole = ["msfconsole","msfconsole","msfconsole","msf auxiliary(synflood)","msf auxiliary(synflood)","msf auxiliary(synflood)","msf auxiliary(synflood)"];
	var msfconsole_outcome = ['[*] Valid parameters for the "show" command are: all, encoders, nops, exploits, payloads, auxiliary, plugins, optionsv<br>[*] Additional module-specific parameters are: advanced, evasion, targets, actions','<br>Auxiliary<br>=========<br>Name Disclosure Date Rank Description<br>---- --------------- ---- -----------<br>admin/2wire/xslt_password_reset 2007-08-15 normal 2Wire Cross-Site Request Forgery Password Reset Vulnerability<br>admin/backupexec/dump normal Veritas Backup Exec Windows Remote File Access<br>admin/backupexec/registry normal Veritas Backup Exec Server Registry Access<br>admin/cisco/cisco_secure_acs_bypass normal','<br>Module options (auxiliary/dos/tcp/synflood):<br>Name       Current Setting  Required  Description<br>----       ---------------  --------  -----------<br>INTERFACE                   no        The name of the Interface<br>NUM                         no        Number of SYNs to send (Else unlimited)<br>RHOST                       yes       The target address<br>RPORT      80               yes       The target port<br>SHOST                       no        The spoofable source address (Else randomizes)<br>SNAPLEN    65535            yes       The number of bytes to capture<br>SPORT                       no        The source port (Else randomizes)<br>TIMEOUT    500              yes       The number of seconds to wait For New data','<br>Module options (auxiliary/dos/tcp/synflood):<br>Name       Current Setting  Required  Description<br>----       ---------------  --------  -----------<br>INTERFACE                   no        The name of the interface<br>NUM                         no        Number of SYNs to send (else unlimited)<br>RHOST      192.168.20.200   yes       The target address<br>RPORT      80               yes       The target port<br>SHOST                       no        The spoofable source address (else randomizes)<br>SNAPLEN    65535            yes       The number of bytes to capture<br>SPORT                       no        The source port (Else randomizes)<br>TIMEOUT    500              yes       The number of seconds to wait for new data','RHOST => 192.168.20.200','[*] SYN flooding 192.168.20.200:80...'];
	var img_array = ['ddos_anime2_1.png','ddos_anime2_2.png','ddos_anime2_3.png','ddos_anime2_4.png','ddos_anime2_5.png','ddos_anime2_6.png','ddos_anime2_7.png','ddos_anime2_8.png'];
	function Vi_Invisible(){
		if(document.getElementById("attack_dimention").style.visibility=="visible"){
			const attack = document.getElementsByClassName("attack_dimention");
			const defend = document.getElementsByClassName("defend_dimention");
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
			document.getElmentById("attack_dimention").style.width="100%";
			document.getElmentById("attack_dimention").style.height="80%";
			//document.querySelectorAll(".defend_dimention").style.visibility="hidden";
			document.getElmentById("defend_dimention").style.width="0px";
			document.getElmentById("defend_dimention").style.height="0px";
		}
	}
</script>

<body>
	<%@ include file="L_Header.jsp" %>
	<div class="context">
		<!--  <button onclick="Vi_Invisible()" style="z-index:3;top:100%; right:20%; background-color:white; position:absolute;" id="vi_btn" value="kakuninn">VISIBLE</button>
		<button style="position:absolute; right:10%; top:100%; z-index:6;" onclick="anime2_click()" id="anime2_btn">애니메이션</button>-->
		<div style="position:absolute;width:100%; height:80%;" id="anime_dimention">
			<img style="z-index:5;" id="anime2_img" />
		</div>
		<div id="attack_dimention" style="width:100%; height:80%;" class="attack_dimention">
			<form action ="" method="get" class="attack_dimention" id="tamesi">
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
								document.getElementById("anime_dimention").innerHTML = "<img style=\"position:absolute; z-index:5; width:80%; height:85%;\" src=\"ddos_anime2\/"+img_array[0]+"\" />";
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
								document.getElementById("anime_dimention").innerHTML = "<img style=\"position:absolute; z-index:5; width:80%; height:85%;\" src=\"ddos_anime2\/"+img_array[1]+"\" />";
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
				let si = null;
				clearInterval(si);
				si = setInterval(frame,200);
				let time = 0;
				function frame(){
					if(time<=30){
						document.getElementById("anime_dimention").innerHTML = "<img style=\"position:absolute; z-index:5; width:80%; height:85%;\" src=\"ddos_anime2\/"+img_array[2]+"\" />";
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
					} else if(sequ==3){
				%>
				<script>
				let si = null;
				clearInterval(si);
				si = setInterval(frame,200);
				let time = 0;
				function frame(){
					if(time<=30){
						document.getElementById("anime_dimention").innerHTML = "<img style=\"position:absolute; z-index:5; width:80%; height:85%;\" src=\"ddos_anime2\/"+img_array[3]+"\" />";
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
					} else if(sequ==4){
				%>
				<script>
				let si = null;
				clearInterval(si);
				si = setInterval(frame,200);
				let time = 0;
				function frame(){
					if(time<=30){
						document.getElementById("anime_dimention").innerHTML = "<img style=\"position:absolute; z-index:5; width:80%; height:85%;\" src=\"ddos_anime2\/"+img_array[4]+"\" />";
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
					
					//window.open("","MsgWindow","width=500,height=300").document.write(msfconsole_outcome[0]);
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:35%; left:16%; width:80%; height:50%;\" >"+preconsole[0]+"</p>";
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:50%; left:10%; width:80%; height:50%; font-size:20px;\" >"+msfconsole_outcome[0]+"</p>";
					<%=sequ+=1%>;
					</script>
						
						<% } 
					else if(sequ==6){
				
				%>
				<script>
					
					//window.open("","MsgWindow","width=500,height=300").document.write(msfconsole_outcome[1]);
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:35%; left:16%; width:80%; height:50%;\" >"+preconsole[1]+"</p>";
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:50%; left:10%; width:80%; height:50%; font-size:20px;\" >"+msfconsole_outcome[1]+"</p>";
					<%=sequ+=1%>;
					</script>
				<%      }  else if(sequ==7){
						%>
				<script>
					
					//window.open("","MsgWindow","width=500,height=300").document.write(msfconsole_outcome[2]);
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:35%; left:16%; width:80%; height:50%;\" >"+preconsole[2]+"</p>";
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:50%; left:10%; width:80%; height:50%; font-size:20px;\" >"+msfconsole_outcome[2]+"</p>";
					<%=sequ+=1%>;
					</script>
				<% } else if(sequ==8){ 
								%>
							<script>
					
					//window.open("","MsgWindow","width=500,height=300").document.write(msfconsole_outcome[3]);
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:35%; left:16%; width:80%; height:50%;\" >"+preconsole[3]+"</p>";
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:50%; left:10%; width:80%; height:50%; font-size:20px;\" >"+msfconsole_outcome[3]+"</p>";
					<%=sequ+=1%>;
					</script>		
						<%} else if(sequ==9){
					%>
					<script>
					
					//window.open("","MsgWindow","width=500,height=300").document.write(msfconsole_outcome[4]);
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:35%; left:16%; width:80%; height:50%;\" >"+preconsole[4]+"</p>";
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:50%; left:10%; width:80%; height:50%; font-size:20px;\" >"+msfconsole_outcome[4]+"</p>";
					<%=sequ+=1%>;
					</script>
				<%
						 } else if(sequ==10){
						%>
					<script>
					
					//window.open("","MsgWindow","width=500,height=300").document.write(msfconsole_outcome[5]);
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:35%; left:16%; width:80%; height:50%;\" >"+preconsole[5]+"</p>";
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:50%; left:10%; width:80%; height:50%; font-size:20px;\" >"+msfconsole_outcome[5]+"</p>";
					<%=sequ+=1%>;
					</script>
						<% } else if(sequ==11){
						%>
					<script>
					
					//window.open("","MsgWindow","width=500,height=300").document.write(msfconsole_outcome[6]);
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:35%; left:16%; width:80%; height:50%;\" >"+preconsole[6]+"</p>";
					document.getElementById("tamesi").innerHTML = "<p style=\"z-index:6; color:white; position:absolute; top:50%; left:10%; width:80%; height:50%; font-size:20px;\" >"+msfconsole_outcome[6]+"</p>";
					<%=sequ+=1%>;
					</script>
				<% } else if(sequ==12){
						%>
						<script>
						let si = null;
						clearInterval(si);
						si = setInterval(frame,200);
						let time = 0;
						function frame(){
							if(time<=30){
								document.getElementById("anime_dimention").innerHTML = "<img style=\"position:absolute; z-index:5; width:80%; height:85%;\" src=\"ddos_anime2\/"+img_array[5]+"\" />";
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
							} else if(sequ==13) {
						%>
						<script>
						let si = null;
						clearInterval(si);
						si = setInterval(frame,200);
						let time = 0;
						function frame(){
							if(time<=30){
								document.getElementById("anime_dimention").innerHTML = "<img style=\"position:absolute; z-index:5; width:80%; height:85%;\" src=\"ddos_anime2\/"+img_array[6]+"\" />";
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
							} else if(sequ==14) {
						%>
						<script>
						let si = null;
						clearInterval(si);
						si = setInterval(frame,200);
						let time = 0;
						function frame(){
							if(time<=30){
								document.getElementById("anime_dimention").innerHTML = "<img style=\"position:absolute; z-index:5; width:80%; height:85%;\" src=\"ddos_anime2\/"+img_array[7]+"\" />";
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
						
					
					
					
					
										
					
				
				<img class="attack_dimention" id="kali_teminal_img" src="https://static.javatpoint.com/tutorial/kali-linux/images/kali-linux-terminal1.png" />
				<p class="attack_dimention" style="z-index:5; color:black; position:absolute; top:35%; left:16%;" id="msfconsole_pre"></p>
				<input class="attack_dimention" type="text" style="z-index:3; color:black; background-color:white; position:absolute; top:40%; left:40%;" name="kali_input"/>
				<p class="attack_dimention" style="z-index:3; color:black; position:absolute; top:40%; left:60%; width:" id="kali_teminal_outcome"></p>
				<input class="attack_dimention" onclick="Henka()" style="z-index:3; color:white; position:absolute; top:40%; left:60%;" id="msfconsole_submit" type="submit" value="sub"/> 
				<input class="attack_dimention" type="number" style="z-index:3; color:white; opacity:0;" name="sequence" value="<%=sequ%>"/>
			</form>
		</div>
		<!--  <div id="defend_dimention" style="width:100%; height:80%;"class="defend_dimention">
			<img class="defend_dimention" id="apache2_conf" src="img/linux_terminal_apache2.conf.png">
			<input class="defend_dimention" size="70" id="input_command" name="linux_command" type="text" />
			<form class="defend_dimention" action="">
				<label class="defend_dimention" style="top:40%; left:10%;" class="ddos_option">ServerRoot </label><input style="color:black; top:42%; left:40%;" class="ddos_input" type="text" />
				<label class="defend_dimention" style="top:45%; left:10%;" class="ddos_option">Timeout </label><input style="color:black; top:47%; left:40%;" class="ddos_input" type="text" />
				<label class="defend_dimention" style="top:50%; left:10%;" class="ddos_option">KeepAlive </label><input style="color:black; top:52%; left:40%;" class="ddos_input" type="text" />
				<label class="defend_dimention" style="top:55%; left:10%;" class="ddos_option">MaxKeepAliveRequests </label><input style="color:black; top:57%; left:40%;" class="ddos_input" type="text" />
				<label class="defend_dimention" style="top:60%; left:10%;" class="ddos_option">KeepAliveTimeout </label><input style="color:black; top:62%; left:40%;" class="ddos_input" type="text" />
				<label class="defend_dimention" style="top:65%; left:10%;" class="ddos_option">HostnameLookups </label><input style="color:black; top:67%; left:40%;" class="ddos_input" type="text" />
				<label class="defend_dimention" style="top:70%; left:10%;" class="ddos_option">ErrorLog </label><input style="color:black; top:72%; left:40%;" class="ddos_input" type="text" />
				<label class="defend_dimention" style="top:75%; left:10%;" class="ddos_option">LogLevel </label><input style="color:black; top:77%; left:40%;" class="ddos_input" type="text" />
				<label class="defend_dimention" style="top:80%; left:10%;" class="ddos_option">Include </label><input style="color:black; top:82%; left:40%;" class="ddos_input" type="text" />
				<input class="defend_dimention" class="ddos_option" style="top:60%; left:65%;" type="submit" value="확인" />
			</form>
			<input class="ddos_option" style="top:60%; left:65%;" type="submit" value="확인" />
		</div>-->
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>