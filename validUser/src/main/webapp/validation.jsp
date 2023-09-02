<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validating User</title>
</head>
<body>
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



String loginName = request.getParameter("loginName");
String Password = request.getParameter("password");
boolean isValidUser = false;
String success = "";

//Selecting from database
try{
String query = "SELECT * FROM sonu2023.uservalid WHERE loginName=? AND password=?";
PreparedStatement preparedStatement = conn.prepareStatement(query);
preparedStatement.setString(1, loginName);
preparedStatement.setString(2, Password);

ResultSet resultSet = preparedStatement.executeQuery();
isValidUser = resultSet.next();

resultSet.close();
preparedStatement.close();
}catch (Exception e) {
    e.printStackTrace();
}



if (isValidUser) {
    out.println("Successful login!");
} else {
    out.println("Login failed. Please check your credentials.");
}

%>

<br>
    <a href="index.html">Go Back to Home Page</a>

</body>
</html>