<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Order Form</title>
  
    
    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="css/stylish-portfolio.css" rel="stylesheet">
    <link href="form.css" rel="stylesheet" type="text/css" />
       <link rel="stylesheet" type="text/css" href="nav.css">    
    
</head>
 <body onload='hideTotal()'>

<ol class="navbar">
    <a href="homelog.jsp" class="logo">Falcon</a>
    <li><a href="homelog.jsp">HOME</a></li>
    <li><a href="orderdet.jsp">View Order Details</a></li>
   
    
</ol>
    
  
    <div id="wrap">
        <form action="servscript.jsp" method="POST" id="cakeform">
        <div>
            <div class="cont_order">
               <fieldset>
                <legend>Make Your Own Car</legend>
                <label>Emp_id</label>
                <input type="text" name="emp_id" placeholder="Employee_Id">
                <label>Cust_id</label>
                <input type="text" name="cust_id" placeholder="Customer_Id">
                <label>Type Of the Car</label>
                <label class='radiolabel'><input type="radio"  name="type" value="sedan" onclick="calculateTotal()" />Sedan</label><br/>
                <label class='radiolabel'><input type="radio"  name="type" value="hatch back" onclick="calculateTotal()" />hatch back</label><br/>
                <label class='radiolabel'><input type="radio"  name="type" value="suv" onclick="calculateTotal()" />Suv</label><br/>
                <label class='radiolabel'><input type="radio"  name="type" value="pickup Car" onclick="calculateTotal()" />Pick Up car</label><br/>
                <label class='radiolabel'><input type="radio"  name="type" value="Off-road" onclick="calculateTotal()" />Off-road</label><br/>
                <br/>
                <label >Engine</label>
                <select id="filling" name='engine' onchange="calculateTotal()">
                <option value="None">Select Engine</option>
                <option value="R8">R8 Engine(40L)</option>
                <option value="M8">M8(20L)</option>
                <option value="Prius">Prius(18L)</option>
                <option value="Ford">Ford(25L)</option>
               </select>
                <br/>
                <br/>
                <label >Body</label>
                <select id="filling" name='body' onchange="calculateTotal()">
                <option value="None">Select Body</option>
                <option value="R8 B">R8</option>
                <option value="Prius B">Prius</option>
                <option value="Gallardo B">Gallardo</option>
                <option value="Highlander B">HighLander</option>
                <option value="Q7 B">Q7</option>
               </select>
                <br/>
                 <br/>
                <label >Tyre</label>
                <select id="filling" name='tyre' onchange="calculateTotal()">
                <option value="None">Select Tyre</option>
                <option value="JK T">JK</option>
                <option value="MRF T">MRF</option>
               </select>
                <br/>
                <br/>
                 <label>Seat</label>
                <select id="filling" name='Seat' onchange="calculateTotal()">
                <option value="None">Select Seat Type</option>
                <option value="V1">V1</option>
                <option value="V2">V2</option>
               </select>
                <br/>
                <br/>
                 <label>Interior</label>
                <select id="filling" name='inti' onchange="calculateTotal()">
                <option value="None">Select Interior</option>
                <option value="Stan">Stanley Interior</option>
                <option value="lang">Langley</option>
               </select>
                <br/>
                <br/>
                 <label>Exhaust</label>
                <select id="filling" name='exhaust' onchange="calculateTotal()">
                <option value="None">Select Exhaust</option>
                <option value="abc">abc</option>
                <option value="hark">hark</option>
               </select>
                <br/>
                 <br/>
                <label>Gear</label>
                <select id="filling" name='gear' onchange="calculateTotal()">
                <option value="None">Select Gear</option>
                <option value="Automatic">Automatic</option>
                <option value="Manual">Manual</option>
               </select>
                <br/>
                   <br/>
                <label>Pedal</label>
                <select id="filling" name='pedal' onchange="calculateTotal()">
                <option value="None">Select Pedal</option>
                <option value="Sanguine">Sanguine</option>
                <option value="Manui">Manuai</option>
               </select>
                <br/>
                <br/>
                <label>Steering Wheels</label>
                <select id="filling" name='stear' onchange="calculateTotal()">
                <option value="None">Select Stear</option>
                <option value="momo">momo</option>
                <option value="mardi">mardi</option>
               </select>
                <br/>
                 <br/>
                <label>Glass</label>
                <select id="filling" name='glass' onchange="calculateTotal()">
                <option value="None">Select Glass</option>
                <option value="Yogamart">yogamart</option>
                <option value="Imperial">imperial</option>
               </select>
                <br/>
                 <br/>
                 <label>Hood</label>
                <select id="filling" name='hood' onchange="calculateTotal()">
                <option value="None">Select Hood</option>
                <option value="hood">yes</option>
                <option value="no">no</option>
               </select>
                <br/>
                 <br/>
                <label>Lights</label>
                <select id="filling" name='light' onchange="calculateTotal()">
                <option value="None">Select Light</option>
                <option value="angel">angel</option>
                <option value="led">light</option>
               </select>
                <br/>
                <br/>
                <label>Fuel Type</label>
                <select id="filling" name='fuel' onchange="calculateTotal()">
                <option value="None">Select fuel Type</option>
                <option value="petrol">Petrol</option>
                <option value="diesel">Diesel</option>
               </select>
                <br/>
                <br/>
                <label>Fuel Capacity</label>
                <select id="filling" name='fuelcap' onchange="calculateTotal()">
                <option value="None">Select fuel Cap</option>
                <option value="50l">50l</option>
                <option value="60l">60l</option>
               </select>
                <br/>
                <br/>
                <label>Air Bags</label>
                <select id="filling" name='airbags' onchange="calculateTotal()">
                <option value="None">Select airbags</option>
                <option value="Air Bags">yes</option>
                <option value="no">no</option>
               </select>
                <br/>
                <br/>
                <label>AC</label>
                <select id="filling" name='ac' onchange="calculateTotal()">
                <option value="None">Select AC</option>
                <option value="Ac">yes</option>
                <option value="no">no</option>
               </select>
                <br/>
                 <br/>
                <label>Audio</label>
                <select id="filling" name='audio' onchange="calculateTotal()">
                <option value="None">Select audio Type</option>
                <option value="Boat">boat</option>
                <option value="Skullcandy">skullcandy</option>
               </select>
                <br/>
                    <br/>
                <label>Doors</label>
                <select id="filling" name='door' onchange="calculateTotal()">
                <option value="None">Select Door Type</option>
                <option value="2 door">Two Door</option>
                <option value="4 door">Four Door</option>
               </select>
                <br/>
                 <br/>
                <label>No. Of seats</label>
                <select id="filling" name='seats' onchange="calculateTotal()">
                <option value="None">Select Seat Type</option>
                <option value="2">Two Seater</option>
                <option value="4">Four Seater</option>
               </select>
                <br/>
                <p>
                <label>Total Cost</label>
                <input type="text" name="cost" placeholder="Total_Cost">
                <div id="totalPrice"></div>
                
                </fieldset>
            </div>
            
        
            <button type="submit" class="btn btn-default btn-block btn-custom">submit</button>
        </div>  
       </form>
	</div><!--End of wrap-->

   
   
     
      
    </header>
        <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
    <script src="js/stylish-portfolio.js"></script>
    <script type="text/javascript" src="form.js"></script>
    
</body>
</html>