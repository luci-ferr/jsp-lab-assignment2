<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        margin: 0;
        background-color: #f0f0f0;
    }

    .header {
        position: absolute;
        top: 20px;
        right: 20px;
        background-color: black; 
        color: yellow;
        border: 1px solid black;
        padding: 10px 10px;
    }

    h1 {
        margin-top: 20px;
    }

    form {
        margin-top: 20px;
    }
    
    input[type="submit"] {
            background-color: black;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: white;
            color: black;
            border: 1px solid black;
            
        }
</style>
</head>
<body>
	<%
	
	String name = request.getParameter("name");
	session.setAttribute("name",name);
	%>
	
	<div class="header">
	Start Time : <%= new java.util.Date(session.getCreationTime()) %>
	</div>
	
	
	
	<h1>Hello <%= session.getAttribute("name") %></h1>
	
	<form action="Logout.jsp" method="post">
		<input type="submit" value="Logout">
	</form>
</body>
</html>