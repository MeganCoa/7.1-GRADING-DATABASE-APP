<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Grade Added</h1>
<table>
		<tr>
			<th>Name</th>
			<th>Type</th>
			<th>Score</th>
			<th>Total</th>
		</tr>
			<tr>
				<td>${name}</td>	
				<td>${type}</td>	
				<td>${score}</td>			
				<td>${total}</td>
			</tr>
	</table>
	 <a href="/">Return to grade list</a>
</body>
</html>