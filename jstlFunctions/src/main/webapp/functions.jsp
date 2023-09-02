<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Functions Tag</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<%-- Input strings --%>
    <c:set var="String1" value="Hello, World!" />
    <c:set var="String2" value="I am Sonu Sharma" />
    
    <p>Input String 1: ${String1}</p>
    <p>Input String 2: ${String2}</p>
    
    
    <p>Contains "Sonu": ${fn:contains(String2, 'Sonu')}</p>
    
    
    <p>Contains "sonu": ${fn:containsIgnoreCase(String1, 'sonu')}</p>
    
   
    <p>Ends with "Sharma": ${fn:endsWith(String2, 'Sharma')}</p>
    
    <p>Length of String1: <span class="result">${fn:length(String1)}</span></p>
    
    <p>Replace "Hello" with "Hey": ${fn:replace(String1, 'Hello', 'Hey')}</p>
    
    <c:set var="words" value="${fn:split(String2, ' ')}" />
    <p>Split String2 into words:</p>
    <c:forEach items="${words}" var="word">
        <p class="split-word">${word}</p>
    </c:forEach>
    
    <p>Substring of String2 from index 5 to 16: ${fn:substring(String2, 5, 16)}</p>
    
    <p>Uppercase of String2: ${fn:toUpperCase(String2)}</p>
    
</body>
</html>