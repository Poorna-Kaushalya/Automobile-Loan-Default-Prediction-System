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
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
        }
        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
        }
        table td {
            padding: 8px;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
        }
        input[type="submit"] {
            background-color: #ff0000;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>

	<%
		String book_id = request.getParameter("book_id");
		String book_name = request.getParameter("book_name");
		String publisher = request.getParameter("publisher");
		String author = request.getParameter("author");
		String availability = request.getParameter("availability");
	%>

	<h1>Customer Account Delete</h1>

	<form action="bdelete" method="post">
	<table>
		<tr>
			<td>Book ID</td>
			<td><input type="text" name="book_id" value="<%= book_id %>" readonly></td>
		</tr>
		<tr>
			<td>Book Name</td>
			<td><input type="text" name="book_name" value="<%= book_name %>" readonly></td>
		</tr>
		<tr>
		<td>Publisher</td>
		<td><input type="text" name="publisher" value="<%= publisher %>" readonly></td>
	</tr>
	<tr>
		<td>Author</td>
		<td><input type="text" name="author" value="<%= author %>" readonly></td>
	</tr>
	<tr>
		<td>Availability</td>
		<td><input type="text" name="availability" value="<%= availability %>" readonly></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Delete Books">
	</form>

</body>
</html>