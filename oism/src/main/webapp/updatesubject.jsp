<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Subject Account</title>
	    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Include your custom CSS (if any) -->
    <link rel="stylesheet" href="css.css">
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
    <div class="container">
        <h1 class="mt-5">Subject Account Update</h1>

	<form action="supdate" method="post">
	<table class="table mt-3">
		<tr>
			<td>Subject Name</td>
			<td><input type="text" class="form-control" name="sname" value="<%= sname %>" ></td>
		</tr>
		<tr>
			<td>Subject Code</td>
			<td><input type="text" name="scode" value="<%= scode %>" ></td>
		</tr>
		<tr>
		<td>Teacher</td>
		<td><input type="text" class="form-control" name="teacher" value="<%= teacher %>" ></td>
	</tr>
	<tr>
		<td>Grade</td>
		<td><input type="text" class="form-control" name="grade" value="<%= grade %>" ></td>
	</tr>
	<tr>
		<td>Subject-Based Qualification</td>
		<td><input type="text" class="form-control" name="level" value="<%= level %>" ></td>
	</tr>		
	<tr>
		<td>Description</td>
		<td><input type="text" class="form-control" name="description" value="<%= description %>" ></td>
	</tr>	
	<tr>
		<td>Added Date</td>
		<td><input type="text" class="form-control" name="date" value="<%= date %>" ></td>
	</tr>
	</table>
	<br>
	<input type="submit" class="btn btn-danger" name="submit" value="Update My Account">
	</form>
	</div>
	
	    <!-- Include Bootstrap JS (optional, for some Bootstrap components) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>