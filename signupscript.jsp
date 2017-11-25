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
 String firstname=request.getParameter("firstname");  
String lastname=request.getParameter("lastname");  
String email=request.getParameter("email");
String dob=request.getParameter("dob");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String mobno=request.getParameter("mobno");
String designation=request.getParameter("designation"); 
String salary=request.getParameter("salary"); 
String username=request.getParameter("username");
 
 
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "hari");
        PreparedStatement ps=conn.prepareStatement(  
        		"insert into employee values(seq1.nextval,?,?,?,?,?,?,?,?,?,?)");  
        		  
        		ps.setString(1,firstname);  
        		ps.setString(2,lastname);  
        		ps.setString(3,email);   
        		ps.setString(4,dob);  
        		ps.setString(5,age);  
        		ps.setString(6,gender);
        		ps.setString(7,mobno);
        		ps.setString(8,designation);
        		ps.setString(9,salary);
        		ps.setString(10,username);
        		int i=ps.executeUpdate();  
        		if(i>0)  
             out.println("connected....!!");

    }

    catch(Exception e)
    {
        out.println("Exception : " + e.getMessage() + "");
    }


%>
    <%
    Connection con = null;
 
 
String username1=request.getParameter("username");
String password=request.getParameter("password");  

    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "hari");
        PreparedStatement ps=conn.prepareStatement(  
        		"insert into emp_login values(?,?)");  
        		  
        		ps.setString(1,username);  
        		ps.setString(2,password);  
                int i=ps.executeUpdate();  
        		if(i>0)  
             out.println("connected....!!");

    }

    catch(Exception e)
    {
        out.println("Exception : " + e.getMessage() + "");
    }


%>              
        <div class="container">
	<div id="login-box">
		<div class="logo">
                    <h1 class="logo-caption"><span class="tweak">Y</span>ou have Signed Up! To <a href="login.jsp">Login</a></h1>
                   
			
		</div><!-- /.logo -->
	
		<!-- /.controls -->
	</div><!-- /#login-box -->
</div><!-- /.container -->
<div id="particles-js"></div>
        
   </body>                  
                    
   
</html>
    