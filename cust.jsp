<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
            </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
       </script>
  <link rel="stylesheet" type="text/css" href="nav.css">      
</head>
<body>

<ol class="navbar">
    <a href="homelog.jsp" class="logo">Falcon</a>
    <li><a href="homelog.jsp">HOME</a></li>
    <li><a href="custdet.jsp">View Customer Details</a></li>
   
    
</ol>
<form class="form-horizontal" action="custscript.jsp" method="post">
<fieldset>

<!-- Form Name -->
<legend>Add Customer Details</legend>

<!-- Text input-->


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fname">First Name</label>  
  <div class="col-md-4">
  <input id="name" name="f_name" type="text" placeholder="Enter your name" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="lname">last_Name</label>  
  <div class="col-md-4">
  <input id="name" name="l_name" type="text" placeholder="Enter your last name" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-4">
  <input id="email" name="email" type="text" placeholder="Enter your email id" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="date">DOB</label>  
  <div class="col-md-4">
  <input id="date" name="dob" type="text" placeholder="Enter your DOB" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="gender">Gender</label>  
  <div class="col-md-4">
  <input id="gender" name="gender" type="text" placeholder="Enter your gender" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="age">Age</label>
  <div class="col-md-4">
    <input id="age" name="age" type="text" placeholder="Enter a age" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="contact">Mobile No</label>  
  <div class="col-md-4">
  <input id="contact" name="mob_no" type="number" placeholder="Enter your contact no." class="form-control input-md" required="">
    
  </div>
</div>


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="signup"></label>
  <div class="col-md-4">
    <button id="signup" type="submit" name="signup" class="btn btn-success">Register</button>
  </div>
</div>

</fieldset>
</form>

</body>
</html>