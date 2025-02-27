<%@ page language="java"   import= "java.io.*,    java.util.*"    contentType="text/html;charset=EUC-KR" session="false" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<%

Connection con = null;
 PreparedStatement PS = null;
 ResultSet RS = null;
 String MYSQL_SERVER = "127.0.0.1:3306";
 String MYSQL_SERVER_USERNAME = "atasi";
 String MYSQL_SERVER_PASSWORD = "0000";
 String MYSQL_DATABASE = "G3";
  
try{
  out.println("0------------");
  String URL = "jdbc:mysql://" + MYSQL_SERVER + "/" + MYSQL_DATABASE;
  out.println("1-------------");
  Class.forName("org.mariadb.jdbc.Driver");
  out.println("2--------------");
  con = DriverManager.getConnection(URL, MYSQL_SERVER_USERNAME, MYSQL_SERVER_PASSWORD);
  out.println("3----------------");

  String input_id = request.getParameter("input_id");
  String input_passwd = request.getParameter("input_passwd");
  String output_str;
  
  %>

  <%
  //String query = "select * from Member where id="+input_id+"passwd="+input_passwd;
  String query = "select * from Non_Member_Vullist where SQL="+"0";
  PS = con.prepareStatement(query);
  RS = PS.executeQuery();
 
  int count =0;
  while(RS.next()) {
  String name = RS.getString("non_member_number");
  %>
  <p>Name : <%=name%></p>
  <%
  count++;
   
%>
<% 
}catch(IOException ie){ 
   ie.printStackTrace(); 
}catch(Exception e){ 
   e.printStackTrace(); 
} 
%>
<html>
<head>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="context">    
<div class="comment">        
<form method="GET" action="/action_page.php">         
    <input type="text" value="input your id" name="input_id"><br>            
    <input type="password" value="input your passwd" name="input_passwd"><br>           
    <button onclick="Click_Next_Btn()" id="Next_Btn">next</button>        
    <input type = "submit"    value="submit_btn" />
</form>    
</div>   
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
