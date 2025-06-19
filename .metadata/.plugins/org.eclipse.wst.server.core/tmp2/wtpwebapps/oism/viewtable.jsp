
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel ="stylesheet" href="css/bootstrap.css">
    <title>List of Contacts</title>
</head>
<body class="bg-secondary">
    <sql:setDataSource
        var="dataSource"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/oism"
        user="root"
        password="root"
    />

    <sql:query var="contactData" dataSource="${dataSource}">
        SELECT * FROM contact;
    </sql:query>
<br>
    <div align="center">
    <div class="container ">
        <table border="1"class="table table-striped">
           
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Number</th>
                <th>Email</th>
                <th>Subject</th>
                <th>Message</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="contact" items="${contactData.rows}">
                <tr>
                    <td><c:out value="${contact.id}" /></td>
                    <td><c:out value="${contact.name}" /></td>
                    <td><c:out value="${contact.number}" /></td>
                    <td><c:out value="${contact.email}" /></td>
                    <td><c:out value="${contact.subject}" /></td>
                    <td><c:out value="${contact.message}" /></td>
                    <td>
                    <!-- Generate links to update and delete pages with contact details as parameters. -->
                        <a href="update.jsp?id=${contact.id}&name=${contact.name}&number=${contact.number}&email=${contact.email}&subject=${contact.subject}&message=${contact.message}">
                            <input type="button" name="update" value="Update">
                        </a>
                        <a href="delete.jsp?id=${contact.id}&name=${contact.name}&number=${contact.number}&email=${contact.email}&subject=${contact.subject}&message=${contact.message}">
                            <input type="button" name="delete" value="Delete">
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    </div>
    
</body>
</html>





