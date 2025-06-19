<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>STUDENT RESULTS PROFILE</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

   	<h1>AcademiaLink</h1>
	<h2> Test Results for 2023/2024 </h2> <hr>
	<h3> REPORT CARD </h3>
    <div class="container">
        <table>
            <c:forEach var="res" items="${resDetails}">
            	<c:set var="id" value="${res.id}"/>
                <c:set var="name" value="${res.name}"/>
                <c:set var="class1" value="${res.class1}"/>
                <c:set var="subject" value="${res.subject}"/>
                <c:set var="marks" value="${res.marks}"/>
            
            
                <tr>
                    <th>Student ID</th>
                    <td style="color: #000000">${res.id}</td>
                </tr>
                <tr>
                    <th>Student Name</th>
                    <td style="color: #000000">${res.name}</td>
                </tr>
                <tr>
                    <th>Student Class</th>
                    <td style="color: #000000">${res.class1}</td>
                </tr>
                <tr>
                    <th>Student Subject</th>
                    <td style="color: #000000">${res.subject}</td>
                </tr>
                <tr>
                    <th>Student Marks</th>
                    <td style="color: #000000">${res.marks}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div class="button-container">
        <c:url value="UpdateMarks.jsp" var="resUpdate">
            <c:param name="id" value="${id}" />
            <c:param name="name" value="${name}" />
            <c:param name="class" value="${class1}" />
            <c:param name="subject" value="${subject}" />
            <c:param name="marks" value="${marks}" />
        </c:url>
        <a href="${resUpdate}">
            <input type="button" name="update" value="Update Details">
        </a>

        <c:url value="DeleteMarks.jsp" var="resDelete">
            <c:param name="id" value="${id}" />
            <c:param name="name" value="${name}" />
            <c:param name="class" value="${class1}" />
            <c:param name="subject" value="${subject}" />
            <c:param name="marks" value="${marks}" />
        </c:url>
        <a href="${resDelete}">
            <input type="button" name="delete" value="Delete ResultsProfile">
        </a>
    </div>
</body>
</html>