<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	
		<table>
		<tr>
			<th>#</th><th>Name</th><th>Rating</th><th></th>
		</tr>
		<c:forEach var="hotel" items= "${hotels}">
		
		<tr>
			<td>${hotel.id }</td>
			<td>${hotel.name }</td>
			<td>${hotel.rating }</td>
			<td><a href="<c:url value="/rate/${hotel.id}" />" class="btn btn-secondary">Up Vote!</a> </td>
		</tr>
		
		</c:forEach>
		
		</table>
	
		
</body>
</html>