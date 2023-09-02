<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:catch var="catchException">
<%int x=5/0; %>
</c:catch>
<c:if test="${catchException !=null }">
<p>The exception is :${catchException} <br/>
There is an exception :${catchException.message}</p>
</c:if>

<h5>choose, when , otherwise Example :</h5>
<c:set value="45" var="num"></c:set>
<c:choose>
	<c:when test="${num%2 ==0}">
		<c:out value="It is even number"></c:out>
		</c:when>
		<c:otherwise>
			<c:out value="It is odd number"></c:out>
		</c:otherwise>
</c:choose>
<br>

<c:forTokens items="MCA,BTECH,BCA,MBA" delims="," var="name">
<c:out value="${name}"/>
</c:forTokens>

<br><br>

<c:import var="data" url="http://www.google.com"/>
<c:out value="${ data }" />


</body>
</html>