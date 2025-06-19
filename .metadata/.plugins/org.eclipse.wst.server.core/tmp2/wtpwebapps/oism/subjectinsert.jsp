<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Subject Form</title>

    <!-- Add Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0 auto;
            max-width: 600px;
            padding: 20px;
        }

        h1 {
            text-align: center;
        }

        label, input, textarea {
            display: block;
            margin-bottom: 10px;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 15px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Add Subject</h1>
    <form action="subjectinsert" method="post">
        <label for="subject_name">Subject Name:</label>
        <input type="text" id="subject_name" name="subject_name" required>

        <label for="subject_code">Subject Code:</label>
        <input type="text" id="subject_code" name="subject_code" required>

        <label for="subject_teacher">Teacher:</label>
        <input type="text" id="subject_teacher" name="subject_teacher" required>

        <label for="grade">Grade:</label>
        <input type="text" id="grade" name="grade" required>

		<label for="level">Subject-Based Qualification:</label>
		<select id="level" name="level" required>
		    <option value="AL">Advanced Level (A/L)</option>
		    <option value="OL">Ordinary Level (O/L)</option>
		    <option value="Primary">Primary</option>
		</select><br><br>

        <label for="subject_description">Description:</label>
        <textarea id="subject_description" name="subject_description" rows="4" cols="50" required></textarea>

        <label for="subject_add_date">Added Date:</label>
        <input type="text" id="subject_add_date" name="subject_add_date" value = "DD/MM/YYYY"required>

        <input type="submit" value="Submit">
    </form>

    <!-- Add Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.9/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
