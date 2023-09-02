<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f0f0f0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        h2 {
        font-size: 50px;
            color: #009E60;
            text-transform:uppercase;
        }

        p {
            font-size: 18px;
            color: red;
        }

        a {
            
			background-color: black;
			border: 1px solid black;
			color: white;
			padding: 5px 10px;
			text-align: center;
			font-size: 20px;
			margin: 10px 30px;
			cursor: pointer;
			text-decoration: none;
        }
        
        a:hover {
            background-color: white;
            text-decoration: none;
            color:black;
        }
    </style>
</head>
<body>
	<h2>Thank You <%= session.getAttribute("name") %></h2>
	
	<%
		long startTime = session.getCreationTime();
		long endTime = System.currentTimeMillis();
		long duration = endTime - startTime;
	%>
	
	<p>Duration of usage: <%= duration %> milliseconds</p>
	
	<%
		session.invalidate();
	%>
	
	<p><a href="index.jsp">Return to Home</a></p>
</body>
</html>