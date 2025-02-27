<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jsp4/list.jsp</h1>
	<%
	Class.forName("org.mariadb.jdbc.Driver");
	String dbUrl = "jdbc:mysql://localhost:3306/G3";
	String dbUser = "atasi";
	String dbPass = "0000";
	Connection con = DriverManager.getConnection
			(dbUrl, dbUser, dbPass);
	String sql = "select * from Non_Member_Vullist;";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	%>
	<table border="1">
		<tr>
			<th>non</th>
			<th>SQL</th>
			<th>XSS</th>
			<th>CSRF</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("non_member_number")%></td>
			<td><%=rs.getString("SQL")%></td>
			<td><%=rs.getString("XSS")%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>
