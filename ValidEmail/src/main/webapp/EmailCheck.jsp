<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Email Validation</title>
    <style>
        .error {
            color: red;
            font-size:30px;
            font-weight: 500;
        }
        
        .valid {
        	color: green;
        	font-size: 50px;
        	font-weight:800;
        	
        }
    </style>
</head>
<body>		

<%
    String email = request.getParameter("email");
	String errorMessage = "";
	String validEmail = "";

    // Check if email contains exactly one @ symbol and at least one dot symbol
    int atSymbolCount = 0;
    int dotSymbolCount = 0;

    for (int i = 0; i < email.length(); i++) {
        if (email.charAt(i) == '@') {
            atSymbolCount++;
        } else if (email.charAt(i) == '.') {
            dotSymbolCount++;
        }
    }

    if (atSymbolCount != 1 || dotSymbolCount < 1) {
        errorMessage = "Invalid email format. Please enter a valid email address.";
    } else {
        int atIndex = email.indexOf('@');
        int dotIndex = email.indexOf('.', atIndex);

        if (dotIndex - atIndex < 3 || email.length() - dotIndex < 2) {
            errorMessage= "Invalid email format. Please enter a valid email address.";
        } else {
        	validEmail = "Valid email format.";
        }
    }
%>

<p class="valid"><%= validEmail  %></p>
<p class="error"><%= errorMessage %></p>

</body>
</html>
