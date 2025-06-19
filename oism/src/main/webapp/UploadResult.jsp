<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RESULTS EDITING</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<div class="container">
   <h1> Find The student Results </h1>
    
        <form action="UploadResult" method="POST">
            <div class="form-group">
                <label for="studentId">Student ID:</label>
                <input type="text" id="studentId" name="studentId" class="form-control">
            </div>
            <div class="form-group">
                <label for="studentName">Student Name:</label>
                <input type="text" id="studentName" name="studentName" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary">SEARCH</button>
           
        </form>
    </div> 
    
     <div class = "container">
     <h1>Enter the new Examination Results</h1>
      
          <a href="MarksEnters.jsp">
            <button type="button" class="btn btn-primary">Enter Marks</button>
            </a>
            </div>
           

</body>
</html>