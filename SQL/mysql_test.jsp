<html>
  <head>
  <title> MySQL Connection Test</title>
  </head>
 <body>

<%@ page contentType="text/html" language="java" %>
<%@ page import="java.sql.*" %>

<%
 Connection con = null;
 PreparedStatement PS = null;
 ResultSet RS = null;

 try {

// MySQL DB 접속을 위한 정보입력 시작

  String MYSQL_SERVER = "127.0.0.1:3306";
  String MYSQL_SERVER_USERNAME = "atasi";
  String MYSQL_SERVER_PASSWORD = "0000";
  String MYSQL_DATABASE = "G3";
  out.println("0------------");
  String URL = "jdbc:mysql://" + MYSQL_SERVER + "/" + MYSQL_DATABASE;
  out.println("1-------------");
  Class.forName("org.mariadb.jdbc.Driver");
  out.println("2--------------");
  con = DriverManager.getConnection(URL, MYSQL_SERVER_USERNAME, MYSQL_SERVER_PASSWORD);
  out.println("3----------------");

// MySQL DB 접속을 위한 정보입력 종료

  %>

  <%

// MySQL 질의문처리 시작

  String query = "select * from Non_Member_Vullist";
  PS = con.prepareStatement(query);
  RS = PS.executeQuery();

// MySQL 질의문처리 시작

// 질의문 결과표출 시작

  int count=0;
  while(RS.next()) {
  String name = RS.getString("non_member_number");
  %>
  <p>Name : <%=name%></p>
  <%
  count++;
}

// 질의문 결과표출 시작

// 예외처리 시작

 } catch(Exception ErrMsg) {
 
 }
// 예외처리 시작

%>

 </body>
</html>
