<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Subject Table</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style type="text/css">
        body {
            font-family: Hind SemiBold;
            background-color: #f8f9fa; /* Added background color */
        }

        table {
            border-collapse: collapse;
            width: 100%;
            background-color: #fff; /* Added white background */
        }

        th, td {
            border: 1px solid #dee2e6; /* Changed border color */
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #343a40; /* Changed header background color */
            color: #fff;
        }
    </style>
</head>

<body>
    <sql:setDataSource
        var="data"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/oism"
        user="root"
        password="root"
    />

    <sql:query var="sub" dataSource="${data}">
        SELECT * FROM subjects;
    </sql:query>

    <br>
    
    <div align="center">
        <div class="container">
            <table class="table table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>Subject Name</th>
                        <th>Subject Code</th>
                        <th>teacher</th>
                        <th>grade</th>
                        <th>Subject-Based Qualification</th>
                        <th>description</th>
                        <th>Added Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="sub1" items="${sub.rows}">
                        <tr>
                            <td><c:out value="${sub1.subjectname}" /></td>
                            <td><c:out value="${sub1.subjectcode}" /></td>
                            <td><c:out value="${sub1.teacher}" /></td>
                            <td><c:out value="${sub1.grade}" /></td>
                            <td><c:out value="${sub1.straem}" /></td>
                            <td><c:out value="${sub1.description}" /></td>
                            <td><c:out value="${sub1.date}" /></td>
                            <td>
                                <a href="updatesubject.jsp?sname=${sub1.subjectname}&scode=${sub1.subjectcode}&teacher=${sub1.teacher}&grade=${sub1.grade}&level=${sub1.straem}&description=${sub1.description}&date=${sub1.date}">
                                    <button class="btn btn-primary">Update</button>
                                </a>
                                <a href="deletesubject.jsp?sname=${sub1.subjectname}&scode=${sub1.subjectcode}&teacher=${sub1.teacher}&grade=${sub1.grade}&level=${sub1.straem}&description=${sub1.description}&date=${sub1.date}">
                                    <button class="btn btn-danger">Delete</button>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.9/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
