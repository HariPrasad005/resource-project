<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Falcon</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
            </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
            </script>
            <link rel="stylesheet" type="text/css" href="style.css"> 
         <script src="script.js">
            </script>   
                
            
    </head>
    <body>
    <%
    Connection conn = null;
String c_id=request.getParameter("c_id");  
String f_name=request.getParameter("f_name");  
String l_name=request.getParameter("l_name");  
String email=request.getParameter("email");
String dob=request.getParameter("dob");  
String mob_no=request.getParameter("mob_no");    
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "hari");
        PreparedStatement ps=conn.prepareStatement("UPDATE customer SET f_name = ?,l_name= ?,email= ?,mob_no= ?"
                + " WHERE c_id = ?");  
     
        		  
        		ps.setString(1,f_name);
        		ps.setString(2,l_name);
        		ps.setString(3,email);
        		ps.setString(4,mob_no);
        	    ps.setString(5,c_id);  
     
        	;
        		int i=ps.executeUpdate();  
        		if(i>0)  
             out.println("Updated....!!");

    }

    catch(Exception e)
    {
        out.println("Exception : " + e.getMessage() + "");
    }


%>
              
    
                  <%@ include file="custdet.jsp" %>
                   

        
   </body>                  
   </html>                 
   