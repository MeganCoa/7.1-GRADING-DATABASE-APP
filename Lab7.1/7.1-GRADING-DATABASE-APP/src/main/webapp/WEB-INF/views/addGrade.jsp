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
<h1>Add a Grade</h1>
<form action="/gradeAdded" method="POST">

  <label for="name">Name:</label><br>
  <input type="text" id="name" name="name"><br>
 
  <label for="type">Type:</label>
<select name="type" id="type">
  <option value="Assignment">Assignment</option>
  <option value="Quiz">Quiz</option>
  <option value="Exam">Exam</option>
</select><br>
  
  <label for="score">Score:</label><br>
  <input type="number" id="score" name="score"><br>
  <label for="total">Total:</label><br>
  <input type="number" id="total" name="total"><br>
  <input type="submit" value="submit">

</form>
 <a href="/"> Cancel</a>
</body>
</html>