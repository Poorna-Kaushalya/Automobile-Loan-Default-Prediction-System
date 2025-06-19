<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update admin Details</title>


    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Include your custom CSS (if any) -->
    <link rel="stylesheet" href="css.css">
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	
	<div class="container">
        <h1 class="mt-5">Customer Account Update</h1>
	<form action="adupdate" method="post">
	<table class="table mt-3">
                <tr>
                    <td>Admin ID</td>
                    <td><input type="text" class="form-control" name="cusid" value="<%= id %>" ></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" class="form-control" name="name" value="<%= name %>" ></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" class="form-control" name="email" value="<%= email %>" ></td>
                </tr>
                <tr>
                    <td>Phone number</td>
                    <td><input type="text" class="form-control" name="phone" value="<%= phone %>" ></td>
                </tr>
                <tr>
                    <td>User name</td>
                    <td><input type="text" class="form-control" name="uname" value="<%= userName %>" ></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" class="form-control" name="pass" value="<%= password %>" ></td>
                </tr>
            </table>
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</form></div>


 <!-- Include Bootstrap JS (optional, for some Bootstrap components) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>