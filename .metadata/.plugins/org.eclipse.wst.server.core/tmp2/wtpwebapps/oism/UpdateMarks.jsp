<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RESULTS UPDATE</title>
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

<h1> UPDATE RESULTS</h1><hr>
    <div class="container">
        <form action="mupdate" method="post">
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
                <input type="text" id="Sclass" name="Sclass" value="<%=class1%>">
            </div>
             <div class="form-group">
                    <label for="subject" class="form-label">Subject:</label>
                    <select class="form-control" id="subject" name="subject">
					    <option value="non">Select</option>
                        <option value="Management">Management</option>
                        <option value="Engineering ">Engineering </option>
                        <option value="Architecture">Architecture</option>
                        <option value="Geography">Geography</option>
                        <option value="Medicine">Medicine</option>
                        <option value="Political Science">Political Science</option>
                        <option value="Sociology">Sociology</option>
                        <option value="Law">Law</option>
                        <option value="Artificial Intelligence">Artificial Intelligence</option>
                    </select>
                </div>
            <div class="form-group">
                <label for="marks">Marks:</label>
                <input type="text" id="marks" name="marks" value="<%=marks%>">
            </div>
            <button type="submit" class="btn btn-primary">Update Results</button>
        </form>
    </div>
    
    <script>
    document.addEventListener("DOMContentLoaded", function() {
    	var subject = "<%= subject %>"
    	document.getElementById("subject").value = subject;
    })
    </script>

</body>
</html>