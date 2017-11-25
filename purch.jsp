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
    <li><a href="purchdet.jsp">View Purchase Details</a></li>
   
    
</ol>
<form class="form-horizontal" action="purchscript.jsp" method="post">
<fieldset>

<!-- Form Name -->
<legend>Buy Products</legend>



<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_id">Supplier_ID</label>  
  <div class="col-md-4">
  <input id="name" name="s_id" type="text" placeholder="Enter supp id" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="emp_id">Employee_ID</label>  
  <div class="col-md-4">
  <input id="name" name="emp_id" type="text" placeholder="Enter empid" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="mat_id">Material_ID</label>  
  <div class="col-md-4">
  <input id="email" name="mat_id" type="text" placeholder="Enter your Material id" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="quant">Quanity</label>  
  <div class="col-md-4">
  <input id="date" name="quant" type="text" placeholder="Enter your quantity" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="price">Price</label>  
  <div class="col-md-4">
  <input id="gender" name="price" type="text" placeholder="Enter Price" class="form-control input-md" required="">
    
  </div>
</div>




<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="signup"></label>
  <div class="col-md-4">
    <button id="signup" type="submit" name="signup" class="btn btn-success">Buy</button>
  </div>
</div>

</fieldset>
</form>

</body>
</html>