<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        
                    
                    
        <div class="container">
	<div id="login-box">
		<div class="logo">
                    <h1 class="logo-caption"><span class="tweak">F</span>alcon</h1>
                   
			
		</div><!-- /.logo -->
		<div class="controls">
		<form action="loginscript.jsp" method="POST">
			<input type="text" name="username" placeholder="Username" class="form-control"  required/>
			<input type="password" name="password" placeholder="Password" class="form-control" required/>
			<button type="submit" class="btn btn-default btn-block btn-custom">Login</button>
			<div class="logo">
			<h1 class="logo-caption1">
			<a href="home.jsp"><span class="tweak">Signup</a></span> only by admin</h1>
			</div>
			</form>
		</div><!-- /.controls -->
	</div><!-- /#login-box -->
</div><!-- /.container -->
<div id="particles-js"></div>
    </body>
</html>>