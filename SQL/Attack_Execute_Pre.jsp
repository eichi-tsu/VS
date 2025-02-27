<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<script>
  	let number = 0;
    const img_array =["https://tpc.googlesyndication.com/simgad/14796005604842031074", "https://tpc.googlesyndication.com/simgad/7329366905655002267"];
    const comment_array = ["개발자의 부주의로 인한 SQL취약점이 있는 사이트가 발생함", "해커는 웹서핑을 하며 SQL취약점이 있는 사이트를 탐색함", "현사이트가 SQL취약점이 있다는 것을 해커가 인식함", "해커는 SQL인젝션으로 DB의 회원정보를 훔쳐 root로 로그인하려고 함", "YOUR TURN"];
    const commnet_array = ["개발자의 부주의로 인한 SQL취약점이 있는 사이트가 발생함", "해커는 웹서핑을 하며 SQL취약점이 있는 사이트를 탐색함", "현사이트가 SQL취약점이 있다는 것을 해커가 인식함", "해커는 SQL인젝션으로 DB의 회원정보를 훔쳐 root로 로그인하려고 함", "YOUR TURN"];
    const comment_array_after = ["해커는 DB를 조회해서 root에대한 정보를 취득", "root로 로그인시도", "root의 권한을 획득하고 중요인물의 정보취득(보안담당자)", "취득한 DB정보 및 사이트에 관한정보를 저장함 ", "보안담당자에게 자신이 해킹하였다고 DB정보를 캡쳐하여서 전송함", "보안담당자가 메일을 확인하고 분개함"];
    const comment_array_devel = ["보안담당자는 log를 통해 공격자가 sql인젝션을 시도하였음을 파악함", "보안담당자가 해당 사이트를 개발한 직원에게 엄중히 경고 및 코드 수정을 명령", "개발담당자는 SQL인젝션을 한번시도해보고 자신이 개발한 소스코드를 면밀히 검사하고 취약부분을 파악함", "YOOR TURN"];
    const comment_array_devel_after = ["개발담당자는 소스코드수정을 완료", "다시한번 SQL인젝션을 시도함", "보안담당자의 검토를 받음", "해커는 다시한번 SQL인젝션을 시도함", "SQL인젝션공격이 실패함"];
    function watasi(){  
        document.getElementById("comment_div").innerHTML=""+comment_array[number];
  		document.getElementById("show_img").src=img_array[number];
  		number+=1;
	}
</script>
<head>
<title>ATTACK_PROCESS_PRE</title>
    <style>
  		.img_div{
  	         background-color:red;
    	     width:100%;
             height:80%;
        }
        .comment_div{
         	background-color:blue;
         	width:100%;
         	height:20%;
        }
    </style>

</head>
<body>
<%@ include file="header.jsp" %>
 <div class="context">
     <div class="comment">
         <div class"img_div">
             <img id="show_img" src=""/>
            </div>
            <div class="comment_div">
             <h3 id="comment_div"></h3> 
            </div>
            <button onclick="watasi()" class="next_btn">next</button>
        </div>
    </div>
<%@ include file="footer.jsp" %>
</body>
</html>