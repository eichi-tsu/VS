<%@page import="java.sql.*"%>
<%@page import="java.io.*" %>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = null;
		ResultSet rs = null;
	  	String line = "";    
		String url = "jdbc:mysql://localhost:3306/G3?serverTimezone=UTC";
		String id = "atasi";
		String pwd = "0000";


		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, id, pwd);
			Statement stmt = conn.createStatement();
     
	
			String sql = "SHOW TABLES;";
			rs = stmt.executeQuery(sql);
			//BufferedReader br = new BufferedReader( new InputStreamReader( new SequenceInputStream(rs2.getInputStream(), rs2.getErrorStream()))); 

      //while((line = br.readLine()) != null){ 
%> 
    <%=rs.getString("non_member_number")%><br> 
<% 
      //} 
      //br.close(); 

   }catch(IOException ie){ 
      ie.printStackTrace(); 
   }catch(Exception e){ 
      e.printStackTrace(); 
   }
   %>
</body>
</html>
