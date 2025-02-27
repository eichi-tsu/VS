<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
section{
width:300px; height:300px;
background-color:#eee;
}
</style>
</head>
<body>
<jsp:include page="k_header1.jsp"></jsp:include>
<section>
	<h1>회원</h1>
		<form class="form-signin" method="post" action="login">
              <div class="form-label-group">
                <input type="text" id="id" name="id" class="form-control" placeholder="id" required autofocus>
              </div><br>

              <div class="form-label-group">
                <input type="password" id="pwd" name="pwd" class="form-control" placeholder="Password" required>
              </div>
              
              <hr>
              
              <div class="form-label-group">
              <c:if test="${check == 1 }">
                <label>${message }</label>
              </c:if>
              </div>

              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">로그인</button>
              <hr class="my-4">
              Forgot your <a href="javascript:void(0)" onclick="findid()">ID</a> or 
              				<a href="javascript:void(0)" onclick="findpassword()">Password</a>?
              <button class="btn btn-lg btn-secondary btn-block text-uppercase" onclick="location='join_form'">Join</button>
         </form>
         
  <script type="text/javascript">
  function findid(){
		var url="main_page.jsp";
		
		window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=500");
	}
  
  function findpassword(){
	  var url="main_page.jsp";
	  
	  window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=500");
  }
  </script>
</section>
<jsp:include page="k_footer1.jsp"></jsp:include>
</body>
</html>
