<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel ="stylesheet" href="css/bootstrap.css">
    <title>Update Contact Details</title>
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
<body class ="bg-dark-subtle">
 <!-- Retrieve contact details from request parameters -->
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String number = request.getParameter("number");
    String email = request.getParameter("email");
    String subject = request.getParameter("subject");
    String message = request.getParameter("message");
%>
<br>
<div class ="container ">
<div class ="form-group">
<form action="update" method="post">
    <table class="table table-success table-striped">
        <tr>
        
            <td>ID</td>
            <td><input type="text" name="id" value="<%= id %>" readonly></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" value="<%= name %>"></td>
        </tr>
        <tr>
            <td>Number</td>
            <td><input type="text" name="number" value="<%= number %>"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" value="<%= email %>"></td>
        </tr>
        <tr>
            <td>Subject</td>
            <td><input type="text" name="subject" value="<%= subject %>"></td>
        </tr>
        <tr>
            <td>Message</td>
            <td><input type="text" name="message" value="<%= message %>"></td>
        </tr>
    </table>
    <br>
    <input type="submit" name="submit" value="Update Details">
</form>
</div>
</div>
</body>
</html>
