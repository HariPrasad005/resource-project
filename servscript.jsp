<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date,java.text.DateFormat,java.text.SimpleDateFormat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="nav.css"> 
 <link rel="stylesheet" type="text/css" href="rec.css"> 
</head>
<body>
<ol class="navbar">
    <a href="homelog.jsp" class="logo">Falcon</a>
    <li><a href="homelog.jsp">HOME</a></li>
    <li><a href="orderdet.jsp">View Order Details</a></li>
   
    
</ol>
<%
Connection conn = null;

String d_id=request.getParameter("d_id");  
  
String type=request.getParameter("type");  
String engine=request.getParameter("engine");
String body=request.getParameter("body");  
String tyre=request.getParameter("tyre");  
String seat=request.getParameter("Seat");  
String inti=request.getParameter("inti");  
String exhaust=request.getParameter("exhaust");  
String gear=request.getParameter("gear");  
String pedal=request.getParameter("pedal"); 
String stear=request.getParameter("stear"); 
String glass=request.getParameter("glass");
String hood=request.getParameter("hood");
String light=request.getParameter("light"); 
String fuel=request.getParameter("fuel"); 
String fuelcap=request.getParameter("fuelcap"); 
String airbags=request.getParameter("airbags");
String ac=request.getParameter("ac");
String audio=request.getParameter("audio");
String door=request.getParameter("door");
String seats=request.getParameter("seats");

try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "hari");
    PreparedStatement ps=conn.prepareStatement(  
    		"insert into description values(seq8.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

    		  
    		 
    	    ps.setString(1,type);  
    		ps.setString(2,engine);  
    		ps.setString(3,body);  
    		ps.setString(4,tyre);  
    		ps.setString(5,seat);
    		ps.setString(6,inti);
    		ps.setString(7,exhaust);
    		ps.setString(8,gear);
    		ps.setString(9,pedal);
    		ps.setString(10,stear);
    		ps.setString(11,glass);
    		ps.setString(12,hood);
    		ps.setString(13,light);
    		ps.setString(14,fuel);
    		ps.setString(15,fuelcap);
    		ps.setString(16,airbags);
    		ps.setString(17,ac);
    		ps.setString(18,audio);
    		ps.setString(19,door);
    		ps.setString(20,seats);
    
    		
    		
    	;
    		int i=ps.executeUpdate();  
    		if(i>0)  
         out.println("Added....!!");
    

}

catch(Exception e)
{
    out.println("Exception : " + e.getMessage() + "");
}
%>
<%
Connection con = null;
String o_id=request.getParameter("o_id");
String empid=request.getParameter("emp_id");  
String c_id=request.getParameter("cust_id");
String cost=request.getParameter("cost");
Date date = new Date();
DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
DateFormat dateFormat1 = new SimpleDateFormat("HH:mm:ss");
String strDate = dateFormat.format(date);
String strTime = dateFormat1.format(date);


try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "hari");
    PreparedStatement ps1=con.prepareStatement(  
    		"insert into orders values(seq9.nextval,?,?,?,?,?,?)"); 
   
	ps1.setString(1,c_id);
	ps1.setString(2,empid);
	ps1.setString(3,cost);
	ps1.setString(4,"PROCESSING");
	ps1.setString(5,strDate);
	ps1.setString(6,strTime);
                   		  

    		
    		
    	;
    		int i=ps1.executeUpdate();  
    		if(i>0)  
    			out.println("orders added");  
    

}

catch(Exception e)
{
    out.println("Exception : " + e.getMessage() + "");
}


%>
<div style="margin-top: 20px;">
  <div class="row">
    <div class="col-sm-8 col-sm-offset-2">
      <div class="tab"></div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-6 col-sm-offset-3 container-print">
      <div class="panel panel-dark panel-default pseudo">
        <div class="panel-body">
          <div class="row">
            <div class="col-sm-8">Type:</div>
            <div class="col-sm-4"><%out.println(type); %></div>
          </div>
          <div class="row">
            <div class="col-sm-8">Engine:</div>
            <div class="col-sm-4"><%out.println(engine);%></div>
          </div>
          <hr />
          <div class="row">
            <div class="col-sm-8">Tyre:</div>
            <div class="col-sm-4"><%out.println(tyre);%></div>
          </div>
            <div class="row">
            <div class="col-sm-8">body:</div>
            <div class="col-sm-4"><%out.println(body);%></div>
          </div>
            <div class="row">
            <div class="col-sm-8">Seat:</div>
            <div class="col-sm-4"><%out.println(seat);%></div>
          </div>
            <div class="row">
            <div class="col-sm-8">Interior:</div>
            <div class="col-sm-4"><%out.println(inti);%></div>
          </div>
            <div class="row">
            <div class="col-sm-8">Exhaust:</div>
            <div class="col-sm-4"><%out.println(exhaust);%></div>
          </div>
            <div class="row">
            <div class="col-sm-8">gear:</div>
            <div class="col-sm-4"><%out.println(gear);%></div>
          </div>
            <div class="row">
            <div class="col-sm-8">Pedal:</div>
            <div class="col-sm-4"><%out.println(pedal);%></div>
          </div>
            <div class="row">
            <div class="col-sm-8">Glass:</div>
            <div class="col-sm-4"><%out.println(glass);%></div>
          </div>
       
            <div class="row">
            <div class="col-sm-8">Steer:</div>
            <div class="col-sm-4"><%out.println(stear);%></div>
          </div>
          
            <div class="row">
            <div class="col-sm-8">Hood:</div>
            <div class="col-sm-4"><%out.println(hood);%></div>
   
            <div class="row">
            <div class="col-sm-8">Light:</div>
            <div class="col-sm-4"><%out.println(light);%></div>
          </div>
           <div class="row">
            <div class="col-sm-8">Fuel:</div>
            <div class="col-sm-4"><%out.println(fuel);%></div>
          </div>
           <div class="row">
            <div class="col-sm-8">Airbags:</div>
            <div class="col-sm-4"><%out.println(airbags);%></div>
          </div>
           <div class="row">
            <div class="col-sm-8">Fuel Capacity:</div>
            <div class="col-sm-4"><%out.println(fuelcap);%></div>
          </div>
           <div class="row">
            <div class="col-sm-8">ac:</div>
            <div class="col-sm-4"><%out.println(ac);%></div>
          </div>
           <div class="row">
            <div class="col-sm-8">audio:</div>
            <div class="col-sm-4"><%out.println(audio);%></div>
          </div>
           <div class="row">
            <div class="col-sm-8">Door:</div>
            <div class="col-sm-4"><%out.println(door);%></div>
          </div>
          <div class="row">
            <div class="col-sm-8">Seats:</div>
            <div class="col-sm-4"><%out.println(seats);%></div>
          </div>
          <div class="row text-center">
            <a href="orderdet.jsp"><button class="btn btn-success">
             Your order is placed to check
            </button></a>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>
</body>
</html>