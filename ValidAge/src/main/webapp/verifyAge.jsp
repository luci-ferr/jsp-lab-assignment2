<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Age Verification Result</title>
</head>
<body>
    <%
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));

        if (age < 18) {
            out.println("Hello " + name + ", you are not authorized to visit the site.");
        } else {
            out.println("Welcome " + name + " to this site.");
        }
    %>
    <br>
    <a href="index.html">Go Back</a>
</body>
</html>
