<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RESULTS DELETE</title>
<link rel="stylesheet" type="text/css" href="styles.css">

</head>
<body>

<%
  
   String id = request.getParameter("id");
   String name = request.getParameter("name"); 
   String class1 = request.getParameter("class");
   String subject = request.getParameter("subject");
   String marks = request.getParameter("marks");
  
  %>
  
<div class="container">
        <h1>Student Marks Delete</h1><hr>
        <form action="mdelete" method="post">
            <div class="form-group">
                <label for="Sid">Student ID:</label>
                <input type="text" id="Sid" name="Sid" value="<%=id%>" readonly>
            </div>
            <div class="form-group">
                <label for="Sname">Name:</label>
                <input type="text" id="Sname" name="Sname" value="<%=name%>" readonly>
            </div>
            <div class="form-group">
                <label for="Sclass">Class:</label>
                <input type="text" id="Sclass" name="Sclass" value="<%=class1%>" readonly>
            </div>
            <div class="form-group">
                <label for="Sub">Subject:</label>
                <input type="text" id="Sub" name="Sub" value="<%=subject%>" readonly>
            </div>
            <div class="form-group">
                <label for="marks">Marks:</label>
                <input type="text" id="marks" name="marks" value="<%=marks%>" readonly>
            </div>
            <button type="submit" class="btn btn-danger">Delete</button>
        </form>
    </div>

</body>
</html>