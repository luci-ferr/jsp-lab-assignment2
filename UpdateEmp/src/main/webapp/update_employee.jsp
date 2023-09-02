<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Update Result</title>
    <link rel="stylesheet" type="text/css" href="JspStyle.css">
</head>
<body>
    <h1>Employee Update Result</h1>
    
    <%-- Get form parameters --%>
    <%
        String empid = request.getParameter("empid");
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String desg = request.getParameter("desg");
        String salary = request.getParameter("salary");
    %>
    
    <%-- Database Connection  --%>
<%

try{
Class.forName("oracle.jdbc.driver.OracleDriver");
}
catch(Exception e){
out.println("Error is "+e.toString()+"<P>");
}
String userName="system";
String password="3464";
String dburl="jdbc:oracle:thin:@localhost:1521:xe";
Connection conn=null;


try{
conn=DriverManager.getConnection(dburl,userName,password);
out.println(" Connection established!!! Connection status: " + conn + "<P>");
out.println("======================================================");
}
catch(Exception e)
{
out.println("Connection failed: " +e.toString() + "<P>");
out.println("==================================================");
}  

	//Updating employee Information

boolean updateSuccess = false;

try{
	 String updateQuery = "UPDATE sonu2023.employee SET name=?, age=?, desg=?, salary=? WHERE empid=?";
     PreparedStatement preparedStatement = conn.prepareStatement(updateQuery);

     preparedStatement.setString(1, name);
     preparedStatement.setString(2, age);
     preparedStatement.setString(3, desg);
     preparedStatement.setString(4, salary);
     preparedStatement.setString(5, empid);
     
     int rowsAffected = preparedStatement.executeUpdate();
     
     if (rowsAffected > 0) {
         updateSuccess = true;
     }

     preparedStatement.close();
     
} catch (SQLException e) {
    e.printStackTrace();
}

%>

 <%-- Few checks if the employee is updated successfully  --%>
 
 
  <%-- Display result message --%>
    <%
        if (updateSuccess) {
    %>
        <p class="success">Updation Success</p>
    <%
        } else {
    %>
        <p class="error">Updating Error</p>
    <%
        }
    %>
    




  <p><a href="index.html">Go Back</a></p>
</body>
</html>