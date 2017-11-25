<%@ page import="java.sql.*" %>

<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
table {
	  width: 300px;
	  margin: 20px auto;
	  background: #fafafa;
	  box-sizing: border-box;
	  box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
	}

	table thead {
	  border: 1px solid #222;
	  border-right: 0;
	  background: #333;
	}

	table thead tr th {
	  color: #fff;
	  padding: 10px;
	  border-right: 1px solid #222;
	}

	table tbody {
	  border-left: 1px solid #ccc;
	}

	table tbody tr {
	  border-bottom: 1px solid #ccc;
	}

	table tbody tr td {
	  padding: 10px;
	  border-right: 1px solid #ccc;
	}
</style>
<script>
var thIndex = 0,
curThIndex = null;

$(function(){
$('table thead tr th').click(function(){
thIndex = $(this).index();
if(thIndex != curThIndex){
  curThIndex = thIndex;
  sorting = [];
  tbodyHtml = null;
  $('table tbody tr').each(function(){
    sorting.push($(this).children('td').eq(curThIndex).html() + ', ' + $(this).index());
  });
  
  sorting = sorting.sort();
  sortIt();
}
});
})

function sortIt(){
for(var sortingIndex = 0; sortingIndex < sorting.length; sortingIndex++){
	rowId = parseInt(sorting[sortingIndex].split(', ')[1]);
	tbodyHtml = tbodyHtml + $('table tbody tr').eq(rowId)[0].outerHTML;
}
$('table tbody').html(tbodyHtml);
}
</script>
</head>
<body>
   <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:xe", "system", "hari");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from test") ; 
        %>
<table>
  <thead>
    <tr>
      <th>id</th>
      <th>name</th>
      <th>city</th>
      <th>state</th>
      <th>country</th>
    </tr>
  
  </thead>
  <tbody>
   <% while(resultset.next()){ %> 
    <tr>
     <Td> <%= resultset.getString(1) %></td>
     <Td> <%= resultset.getString(2) %></td>
     <Td> <%= resultset.getString(3) %></td>
     <Td> <%= resultset.getString(4) %></td>
     <Td> <%= resultset.getString(5) %></td>
     
    </tr>
    <% } %>
   
  </tbody>
</table>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="signup"></label>
  <div class="col-md-4">
    <button id="signup" type="button" name="signup" class="btn btn-success">Sign Up</button>
  </div>
</div>
</body>
</html>