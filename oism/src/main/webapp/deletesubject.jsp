<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>

	<%
		String sname = request.getParameter("sname");
		String scode = request.getParameter("scode");
		String teacher = request.getParameter("teacher");
		String grade = request.getParameter("grade");
		String level = request.getParameter("level");
		String description = request.getParameter("description");
		String date = request.getParameter("date");
	%>

	<h1>Customer Account Delete</h1>

	<form action="sdelete" method="post">
	<table>
		<tr>
			<td>Subject Name</td>
			<td><input type="text" name="sname" value="<%= sname %>" readonly></td>
		</tr>
		<tr>
			<td>Subject Code</td>
			<td><input type="text" name="scode" value="<%= scode %>" readonly></td>
		</tr>
		<tr>
		<td>Teacher</td>
		<td><input type="text" name="teacher" value="<%= teacher %>" readonly></td>
	</tr>
	<tr>
		<td>Grade</td>
		<td><input type="text" name="grade" value="<%= grade %>" readonly></td>
	</tr>
	<tr>
		<td>Subject-Based Qualification</td>
		<td><input type="text" name="level" value="<%= level %>" readonly></td>
	</tr>		
	<tr>
		<td>Description</td>
		<td><input type="text" name="description" value="<%= description %>" readonly></td>
	</tr>	
	<tr>
		<td>Added Date</td>
		<td><input type="text" name="date" value="<%= date %>" readonly></td>
	</tr>
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My Account">
	</form>

</body>
</html>