<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
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
            <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.2/css/jquery.dataTables.css">
  
<!-- jQuery -->
<script type="text/javascript" charset="utf8" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
  
<!-- DataTables -->
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.2/js/jquery.dataTables.js"></script>
             <script>$(document).ready(function() {
            	    $('#example').DataTable();
             } );</script>

 <link rel="stylesheet" type="text/css" href="nav.css">
</head>

<body>
<ol class="navbar">
  <a href="#" class="logo">Falcon</a>
    <li><a href="homelog.jsp">HOME</a></li>
    <li><a href="cust.jsp">Add Customer</a></li>
    <li><a href="delete.jsp">Delete Customer</a></li>
    <li><a href="upcust.jsp">Update Customer</a></li>
</ol>

     
  <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:xe", "system", "hari");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from customer") ; 
        %>
<table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
              <th>c_id</th>
              <th>f_name</th>
              <th>l_name</th>
              <th>email</th>
              <th>dob</th>
              <th>age</th>
              <th>gender</th>
              <th>mob_no</th>
            </tr>
        </thead>
 
        <tfoot>
            <tr>
                <th>c_id</th>
                <th>f_name</th>
                <th>l_name</th>
                <th>email</th>
                <th>dob</th>
                <th>age</th>
               <th>gender</th>
               <th>mob_no</th>
            </tr>
        </tfoot>
         <tbody>
   <% while(resultset.next()){ %> 
    <tr>
     <Td> <%= resultset.getString(1) %></td>
     <Td> <%= resultset.getString(2) %></td>
     <Td> <%= resultset.getString(3) %></td>
     <Td> <%= resultset.getString(4) %></td>
     <Td> <%= resultset.getString(5) %></td>
     <Td> <%= resultset.getString(6) %></td>
     <Td> <%= resultset.getString(7) %></td>
     <Td> <%= resultset.getString(8) %></td>
    </tr>
    <% } %>
   
  </tbody>
        
    </table>
    
  
</body>
</html>