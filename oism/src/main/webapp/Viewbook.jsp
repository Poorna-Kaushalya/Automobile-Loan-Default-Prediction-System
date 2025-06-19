<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">
    
    <style>
        body {
            background-color: #343a40; /* Background color for the entire page */
            color: #ffffff; /* Text color for the entire page */
        }
        
        .container {
            margin: 20px;
        }
        
        table {
            width: 100%;
        }
        
        table th {
            background-color: #343a40; /* Header background color */
            color: #ffffff; /* Header text color */
        }
        
        table td {
            background-color: #ffffff; /* Cell background color */
            color: #343a40; /* Cell text color */
        }
        
        a {
            text-decoration: none;
        }
        
        a button {
            background-color: #007bff; /* Button background color */
            color: #ffffff; /* Button text color */
            border: none;
            padding: 5px 10px;
        }
    </style>
    
    <title>List of Contacts</title>
</head>
<body class="bg-secondary">
    <sql:setDataSource
        var="Bookdatas"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/oism"
        user="root"
        password="root"
    />

    <sql:query var="bookdata" dataSource="${Bookdatas}">
        SELECT * FROM books;
    </sql:query>
    <br>
    <div align="center">
        <div class="container">
            <table border="1" class="table table-striped">
                <tr>
                    <th>Book Id</th>
                    <th>Book Name</th>
                    <th>Publisher</th>
                    <th>Author</th>
                    <th>Availability</th>
                </tr>

                <c:forEach var="books" items="${bookdata.rows}">
                    <tr>
                        <td><c:out value="${books.book_id}" /></td>
                        <td><c:out value="${books.book_name}" /></td>
                        <td><c:out value="${books.publisher}" /></td>
                        <td><c:out value="${books.author}" /></td>
                        <td><c:out value="${books.availability}" /></td>
                        <td>
                            <!-- Generate links to update and delete pages with book details as parameters. -->
                            <a href="updatebooks.jsp?book_id=${books.book_id}&book_name=${books.book_name}&publisher=${books.publisher}&author=${books.author}&availability=${books.availability}">
                                <button type="button" name="update">Update</button>
                            </a>
                            <a href="deletebooks.jsp?book_id=${books.book_id}&book_name=${books.book_name}&publisher=${books.publisher}&author=${books.author}&availability=${books.availability}">
                                <button type="button" name="delete">Delete</button>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>

