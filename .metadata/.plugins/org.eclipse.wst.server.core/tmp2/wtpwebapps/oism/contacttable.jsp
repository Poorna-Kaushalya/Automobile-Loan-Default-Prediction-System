<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP List Users Records</title>
</head>
<body>
   <sql:setDataSource
        var="cont"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/oism"
        user="root" password="rusith0524"
    />
    
    <sql:query var="cont"  dataSource="${cont}">
        SELECT * FROM contact;
    </sql:query>
    
<div align="center">
    <table border="1">
        <caption>
            List of Concerns
        </caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Number</th>
            <th>Email</th>
            <th>Subject</th>
            <th>Message</th>
        </tr>
   
	<c:url value="update.jsp" var="contupdate">
	
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="number" value="${number}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="subject" value="${subject}"/>
		<c:param name="message" value="${message}"/>
	</c:url>
	
	<c:url value="delete.jsp" var="contdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="number" value="${number}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="subject" value="${subject}"/>
		<c:param name="message" value="${message}"/>
	</c:url>

        <c:forEach var="cont" items="${cont.rows}">
        
	            <c:set var="id" value="${cont.id}"/>
	            <c:set var="name" value="${cont.name}"/>
	            <c:set var="number" value="${cont.number}"/>
	            <c:set var="email" value="${cont.email}"/>
	            <c:set var="subject" value="${cont.subject}"/>
	            <c:set var="message" value="${cont.message}"/>
            <tr>
                <td><c:out value="${cont.id}" /></td>
                <td><c:out value="${cont.name}" /></td>
                <td><c:out value="${cont.number}" /></td>
                <td><c:out value="${cont.email}" /></td>
                <td><c:out value="${cont.subject}" /></td>
                <td><c:out value="${cont.message}" /></td>
                
                <td>
                <a href="${contupdate}">
	<input type="button" name="update" value="Update">
	</a>
    </td>
    
    <td><a href="${contdelete}">
	<input type="button" name="delete" value="Delete">
	</a>
        
    </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>