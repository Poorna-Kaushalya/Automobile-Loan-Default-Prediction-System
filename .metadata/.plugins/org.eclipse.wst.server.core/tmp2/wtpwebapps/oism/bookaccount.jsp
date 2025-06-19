<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>

	<table>
	<c:forEach var="book" items="${bookDetails}">
	
	<c:set var="book_id" value="${book.book_id}"/>
	<c:set var="book_name" value="${book.book_name}"/>
	<c:set var="publisher" value="${book.publisher}"/>
	<c:set var="author" value="${book.author}"/>
	<c:set var="availability" value="${book.availability}"/>
	
	<tr>
		<td>Book Id</td>
		<td>${book.book_id}</td>
	</tr>
	<tr>
		<td>Book Name</td>
		<td>${book.book_name}</td>
	</tr>
	<tr>
		<td>Publisher</td>
		<td>${book.publisher}</td>
	</tr>
	<tr>
		<td>Author</td>
		<td>${book.author}</td>
	</tr>
	<tr>
		<td>Availability</td>
		<td>${book.availability}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="updatebook.jsp" var="bookupdate">
		<c:param name="book_id" value="${book_id}"/>
		<c:param name="book_name" value="${book_name}"/>
		<c:param name="publisher" value="${publisher}"/>
		<c:param name="author" value="${author}"/>
		<c:param name="availability" value="${availability}"/>
	</c:url>
	
	<a href="${bookupdate}">
	<input type="button" name="update" value="Update Book Details">
	</a>
	
	<br>
	<c:url value="deletebook.jsp" var="bookdelete">
		<c:param name="book_id" value="${book_id}"/>
		<c:param name="book_name" value="${book_name}"/>
		<c:param name="publisher" value="${publisher}"/>
		<c:param name="author" value="${author}"/>
		<c:param name="availability" value="${availability}"/>
	</c:url>
	<a href="${bookdelete}">
	<input type="button" name="delete" value="Delete Book Details">
	</a>

	
</body>
</html>