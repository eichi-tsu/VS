<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
	/*function DDOS_Animation() {
		const sb = document.getElementsByClassName("start_btn");
		for(let i = 0; i<2; i++){
			sb[i].style.width="0px";
			sb[i].style.height="0px";
		}
		let si =null;
		var hacker_id = document.getElementById("hacker_img");
		var hcomment = document.getElementById("hacker_comment");
		var client_id = document.getElementById("client_img");
		var ccomment = document.getElementById("client_comment");
		var server_id = document.getElementById("server_img");
		var scomment = document.getElementById("server_comment");
		var bot_id = document.getElementById("bot_img");
		var bcomment = document.getElementById("bot_comment");
		clearInterval(si);
		si = setInterval(frame,250);
		time = 0;
		function frame(){
			switch(time){
				case 5:
					time+=1;
					client_id.style.visibility="hidden";
					server_id.style.visibility="hidden";
					bot_id.style.visibility="hidden";
					hcomment.innerHTML = "devil_code or warm or malware 삽입";
					document.getElementById("site_img").style.visibility = "visible";
					break;
				case 10:
					client_id.style.visibility="visible";
					ccomment.innerHTML = "해커의 사전공격에 당해서 봇이 됨";
					bot_id.style.visibility ="visible";
					time+=1;
					break;
				case 15:
					for(var i = 0; i<7; i++){
						const img = document.createElement("img");
						document.getElementById("bot_dimention").appendChild(img);
						img.src="https://japaclip.com/en/files/laptop-mobile-virus.png";
						img.style.width="100px";
						img.style.height="100px";
						img.style.position="absolute";
						if(i/4>=1){
							img.style.top ="83%";	
						}
						else{
							img.style.top = "80%";
						}
						img.style.left=12+(i%4)*2+"%";
					}
					time+=1;
					break;
				case 20:
					server_id.style.visibility="visible";
					hcomment.innerHTML = "hacker_command";
					bcomment.innerHTML ="bot_attack!!!";
					bcomment.style.position="absolute";
					bcomment.style.top="30%";
					bcomment.style.left="60%";
					for(var i = 0; i<7; i++){
						const p = document.createElement("p");
						p.style.position ="absolute";
						p.style.top="30%";
						p.style.right="10%";
						document.getElementById("bot_dimention").appendChild(p);
						p.innerHTML ="bot_attacked"+i;
						
					}
					time+=1;
					break;
				case 25:
					
					time+=1;
					break;
				case 30:				
					break;
				case 35:
					time+=1;
					break;
				case 40:
					time+=1;
					break;
				default:
					if(time>45){
						break;
					}
					time+=1;
			}
		}
	}*/
	function SSRF_Animation(){
		var img_array = ['ssrf_animation_01 (1).png','ssrf_animation_01 (2).png','ssrf_animation_01 (3).png','ssrf_animation_01 (4).png','ssrf_animation_01 (5).png','ssrf_animation_01 (6).png'];
		let si = null;
		clearInterval(si);
		si = setInterval(frame,3500);
		let time = 0;
		let iter = 0;
		function frame(){
			if(time<=60){
				document.getElementById("presen").innerHTML = "<img style=\"position:absolute; width:80%; height:70%; top:30%; left:10%;\" src=\"ssrf_img\/"+img_array[iter]+"\" />";
				iter= iter+1;
				time= time+1;
			}
		}
	}
</script>
<title>SSRF 애니메이션</title>
<style>
	#hacker_dimention {
		position:absolute;
		top:30%;
		left:15%;
	}
	#client_dimention {
		position:absolute;
		top:50%;
		left:15%;
	}#server_dimention {
		position:absolute;
		top:25%;
		right:40%;
	}#bot_dimention {
		position:absolute;
		top:70%;
		left:12%;
	}
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	<img style="position:absolute; width:30%;height:40%; top:45%; left:35%;" src="https://cdn-icons-png.flaticon.com/512/260/260446.png" class="start_btn"/>
	<button onclick="SSRF_Animation()" style="position:absolute; top:45%; left: 35%; opacity:0; width:30%; height:40%;" class="start_btn"></button>
	<div class="context">
		<div id="presen">
			
		</div>
		<!--  <div class="img_dimention" id="bot_dimention" ><img style="width:100px;height:100px;" id="bot_img" class="bot_img's" src="https://japaclip.com/en/files/laptop-mobile-virus.png"/><p id="bot_comment"></p>
		</div>
		<div class="img_dimention" id="client_dimention"><img style="width:100px;height:100px;" id="client_img" src="https://images.freeimages.com/fic/images/icons/2770/ios_7_icons/512/windows_client.png"/><p id="client_comment"></p>
		</div>
		<div class="img_dimention" id="server_dimention"><img style="width:100px;height:100px;" id="server_img" src="https://www.aomei.jp/assets/images/misc/pa-server.png"/><p id="server_comment"></p>
		</div>
		<div class="img_dimention" id="hacker_dimention"><img style="width:100px;height:100px;" id="hacker_img" src="https://cdni.iconscout.com/illustration/premium/thumb/hacker-3354776-2810790.png"/><p id="hacker_comment"></p>
		<img id="site_img" style="position:abosolute; visibility:hidden; width:100px; height:100px;" src="https://velog.velcdn.com/images/hameee/post/546e4d68-9f06-4852-bdc1-28cf05b60319/image.png"/>
		</div>-->
    </div>
	<%@ include file="footer.jsp" %>
</body>
</html>