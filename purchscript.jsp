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
String s_id=request.getParameter("s_id");  
String emp_id=request.getParameter("emp_id");  
String mat_id=request.getParameter("mat_id");
String quant=request.getParameter("quant");  
String price=request.getParameter("price");  
   
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "hari");
        PreparedStatement ps=conn.prepareStatement(  
        		"insert into purchase values(seq4.nextval,?,?,?,?,?)");  
        		  
        		 
        		ps.setString(1,s_id);  
        		ps.setString(2,emp_id);  
        		ps.setString(3,mat_id);  
        		ps.setString(4,quant);  
        		ps.setString(5,price);  
        	;
        	;
        		int i=ps.executeUpdate();  
        		if(i>0)  
             out.println("connected....!!");

    }

    catch(Exception e)
    {
        out.println("Exception : " + e.getMessage() + "");
    }


%>
              
    
                  <%@ include file="purchdet.jsp" %>
                   

        
   </body>                  
   </html>                 
   