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
<form class="form-horizontal" action="rawscript.jsp" method="post">
<fieldset>

<ol class="navbar">
    <a href="homelog.jsp" class="logo">Falcon</a>
    <li><a href="homelog.jsp">HOME</a></li>
    <li><a href="raw.jsp">View RawMaterial Details</a></li>
   
    
</ol>

<!-- Form Name -->
<legend>Add Raw Materials</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="mat_id">Material_Id:</label>  
  <div class="col-md-4">
  <input id="name" name="mat_id" type="text" placeholder="Material_Id" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="mat_name">Material Name</label>  
  <div class="col-md-4">
  <input id="name" name="mat_name" type="text" placeholder="Enter your Material Name" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="mat_type">Material Type</label>  
  <div class="col-md-4">
  <input id="name" name="mat_type" type="text" placeholder="Enter your Material type" class="form-control input-md" required="">
    
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
  <input id="date" name="cost" type="text" placeholder="Enter your cost" class="form-control input-md" required="">
    
  </div>
</div>




<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="signup"></label>
  <div class="col-md-4">
    <button id="signup" type="submit" name="signup" class="btn btn-success">ADD Raw material</button>
  </div>
</div>

</fieldset>
</form>

</body>
</html>