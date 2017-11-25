\<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<form class="form-horizontal" action="utilscript.jsp" method="post">
<fieldset>

<ol class="navbar">
    <a href="homelog.jsp" class="logo">Falcon</a>
    <li><a href="homelog.jsp">HOME</a></li>
    <li><a href="util.jsp">View util Details</a></li>
   
    
</ol>
<!-- Form Name -->
<legend>Add Utility</legend>



<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="util_id">Utilty_Id:</label>  
  <div class="col-md-4">
  <input id="name" name="util_id" type="text" placeholder="util_Id" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="util_name">Utility Name</label>  
  <div class="col-md-4">
  <input id="name" name="util_name" type="text" placeholder="Enter your utility Name" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="util_type">Utility Type</label>  
  <div class="col-md-4">
  <input id="name" name="util_type" type="text" placeholder="Enter your Utility type" class="form-control input-md" required="">
    
  </div>
  
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="DURABILITY">DURABILITY</label>  
  <div class="col-md-4">
  <input id="name" name="durability" type="text" placeholder="Enter your durability" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="avail">Available</label>  
  <div class="col-md-4">
  <input id="email" name="avail" type="text" placeholder="Availabilty" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="cost">cost_per_unit</label>  
  <div class="col-md-4">
  <input id="date" name="cost_per_unit" type="text" placeholder="Enter your cost" class="form-control input-md" required="">
    
  </div>
</div>




<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="signup"></label>
  <div class="col-md-4">
    <button id="signup" type="submit" name="signup" class="btn btn-success">Add Util</button>
  </div>
</div>

</fieldset>
</form>

</body>
</html>