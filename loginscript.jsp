<%@ page import ="java.sql.*" %>
<html>
<body>
<%
Connection conn = null;
    try{
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "hari");  
        PreparedStatement pst = conn.prepareStatement("Select username,password from emp_login where username=? and password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();   
        
      %>  <% if( rs.next()) {  %>
        <%@  include file="homelog.jsp"%>
        <% } else { %>
       <%@  include file="login.jsp"%>
        <% }
       
               
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>

</body>
</html>