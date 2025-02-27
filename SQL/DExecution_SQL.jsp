<%@ page language="java"   import= "java.io.*,    java.util.*"    contentType="text/html;charset=UTF-8" session="false" %>
<!DOCTYPE html>
<%
String input_id = request.getParameter("input_id");
String input_passwd = request.getParameter("input_passwd");
input_passwd.replace("'","");
input_passwd.replace("#","");
input_passwd.replace("--","");
input_passwd.replace("<","");
input_passwd.replace(">","");
input_passwd.replace("*","");
input_passwd.replace("|","");
input_passwd.replace(";","");
String command = "mysql -u root -p 1234 ; USE user; SELECT username FROM user WHERE id="+input_id + "AND passwd =" +input_passwd+ ";";
String output_str;

Runtime rt = Runtime.getRuntime();
Process ps = null;

try{
    ps = rt.exec(command);
    BufferedReader br = new BufferedReader(new InputStreamReader(new SequenceInputStream(ps.getInputStream(),ps.getErrorStream())));
   while((output_str = br.readLine()) != null) {
%>
<%=output_str%><br>
<%
   } 
   br.close(); 

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
