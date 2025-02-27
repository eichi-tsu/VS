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
	<h1>비회원</h1>
	<div class="form-group row">
				<label class="col-sm-2">이름</label>
				<div class="col-sm-3">
					<input type="text" id="name" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">사용할 ID</label>
				<div class="col-sm-3">
					<input type="text" id="userId" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">사용할 PASSWORD</label>
				<div class="col-sm-3">
					<input type="text" id="userPW" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-3">
					<input type="text" id="email" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">전화 번호</label>
				<div class="col-sm-3">
					<input type="text" id="phonenumber" class="form-control" >
				</div>
			</div>
			
			<hr>
              
              <div class="form-label-group">
              <c:if test="${check == 1 }">
                <label>${message }</label>
              </c:if>
              </div>

              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">회원가입</button>
              
  <script type="text/javascript">
  function findid(){
		var url="find_id_form";
		
		window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=500");
	}
  
  function findpassword(){
	  var url="find_password_form";
	  
	  window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=500");
  }
  </script>
</section>
<jsp:include page="k_footer1.jsp"></jsp:include>
</body>
</html>
