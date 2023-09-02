<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List Cookies</title>
</head>
<body>

<h2>List of Cookies</h2>

<%
    Cookie[] cookies = request.getCookies();

    if (cookies != null && cookies.length > 0) {
        out.println("<ul>");
        for (Cookie cookie : cookies) {
            out.println("<li><strong>" + cookie.getName() + ":</strong> " + cookie.getValue() + "</li>");
        }
        out.println("</ul>");
    } else {
        out.println("<p>No cookies found.</p>");
    }
%>

<a href="index.html">Back to Home</a>

</body>
</html>
