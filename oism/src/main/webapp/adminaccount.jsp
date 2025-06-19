<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Table</title>
    
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

    <sql:query var="adm" dataSource="${data}">
        SELECT * FROM admin;
    </sql:query>

    <br>
    
    <div align="center">
        <div class="container">
            <table class="table table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>Admin ID</th>
                        <th>Admin Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>User Name</th>
                        <th>Password</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="adm1" items="${adm.rows}">
                        <tr>
                            <td><c:out value="${adm1.adminid}" /></td>
                            <td><c:out value="${adm1.adminname}" /></td>
                            <td><c:out value="${adm1.email}" /></td>
                            <td><c:out value="${adm1.phone}" /></td>
                            <td><c:out value="${adm1.username}" /></td>
                            <td><c:out value="${adm1.password}" /></td>
                            <td>
                                <a href="updateadmin.jsp?id=${adm1.adminid}&name=${adm1.adminname}&email=${adm1.email}&phone=${adm1.phone}&uname=${adm1.username}&pass=${adm1.password}">
                                    <button class="btn btn-primary">Update</button>
                                </a>
                                <a href="deleteadmin.jsp?id=${adm1.adminid}&name=${adm1.adminname}&email=${adm1.email}&phone=${adm1.phone}&uname=${adm1.username}&pass=${adm1.password}">
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
