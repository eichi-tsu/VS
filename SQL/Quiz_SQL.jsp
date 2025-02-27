<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>QUIZ_SQL</title>
    <style>
      .test_header{ height:20%;text-align:center;}
      .test_context {
        float:left;
       }
      .test_context_left {
           width:100%;
           min-height:300px;
           max-height:500px;
           background-color:rgba(39, 170, 245, 0.29);
           overflow:hidden;
      }
      .test_context_right{
           width:100%;
           min-height:300px;
           max-height:500px;
           background-color:rgba(39, 170, 245, 0.29);
           overflow:hidden;
      }
      .text_context_right_number{
           width:20%;
           min-height:50px;
           float:left;
           border:5px solid yellow;
           font-size:40px;
           text-align:center;
      }
      .text_context_right_mondai{
          width:70%;
           float:left;
           font-size:15px;
           text-sytle:bold;
           min-height:70px;
      }
      .text_context_right_answer{
           width:48%;
           min-height:50px;
           float:right;
           font-size:15px;
      }

      .text_context_right_kotae{
           float:left;
      }
      .test_footer{height:6%;text-align:center;}
    </style>
  </head>
  <body>
	<%@ include file="header.jsp" %>
    <div class="context">
      <div class="test_paper">
          <div class="test_header">
              <hr>
               <h3>SQL_QUIZ</h3>
               <hr>
          </div>
          <div class="test_context">
               <div class="test_context_left">
                   <p>
                          52.SQL 인젝션(injection) 공격에 대한 설명으로 가장 적절하지 않은 것은?      1.클라이언트의 입력 값을 조작하여 사용자 인증 절차를 우회하는 등의 SQL 문을 생성하여 서버의 DB를 공격하는 기법이다.   2.준비된 명령문(prepared statement) 등을 이용하는 안전한 코딩 기법을 활용하여 SQL 인젝션 공격을 감소시킬 수 있다.   3.SQL 인젝션 공격에 대응하는 방법으로는 클라이언트부터 전달된 입력값을 점검없이 SQL문으로 변환하지 않고 DBMS에서 처리될 수 있는 특수문자가 포함되어 있는지 검사하는 방법이 있다.   4.SQL 인젝션 공격에 대응하는 방법으로 허용되지 않는 입력값에 대한 블랙리스트 방식으로 차단하는 방법을 사용하는 것이 화이트리스트 방식보다 높은 보안성을 제공한다.
   정답 : [
4
]
                   </p>
               </div>
               <hr>
               <div class="test_context_right">
                   <div class="text_context_right_number">2</div>
                   <p class="text_context_right_mondai">
                       SQL 인젝션 공격에 대한 보호 대책으로 거리가 먼 것은?         
                   </p>
                   <div class="text_context_right_answer">2.사용사 입력으로 문자, 기호문자 그리고 구두문자까지만 사용하도록 한다.</div>
                   <div class="text_context_right_answer">1.사용자 입력이 직접 SQL 문장으로 사용되지 않도록 한다.</div>
                   <div class="text_context_right_answer">4.모든 스크립트에 대힌 모든 파라미터를 점검하여 사용자 입력 값이 공격에 사용되지 않도록 한다.</div>
                   <div class="text_context_right_answer">3.SQL 서버의 에러 메시지를 사용자에게 보여주지 않도록 설정한다.</div>
                   <div class="text_context_right_kotae">답 : 2번</div>
               </div>
           </div>
          <div class="test_footer">
          <br><br>
             <hr>
              <h3> copyright by KISA</h3>
              <hr>
          </div>     
      </div>
    </div>
  <%@ include file="footer.jsp" %>
  </body>
</html>
