<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>RESULTS UPLOAD</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<h1>STUDENT TEST RESULTS SUBMISSION FORM</h1>
<hr>
<div class="container">
    <form action="MarksEnter" method="post">
        <div class="form-group">
            <label for="id">Student ID:</label>
            <input type="text" id="id" name="id" class="form-control">
        </div>
        <div class="form-group">
            <label for="name">Student Name:</label>
            <input type="text" id="name" name="name" class="form-control">
        </div>
        <div class="form-group">
            <label for="class">Class:</label>
            <input type="text" id="class" name="class" class="form-control">
        </div>
        <div class="form-group">
            <label for="subject" class="form-label">Subject:</label>
            <select class="form-control" id="subject" name="subject">
                <option value="non"></option>
                <option value="Management">Management</option>
                <option value="Engineering">Engineering</option>
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
            <input type="text" id="marks" name="marks" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Enter Marks</button>
    </form>
</div>

<!-- Add Bootstrap JS (optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
