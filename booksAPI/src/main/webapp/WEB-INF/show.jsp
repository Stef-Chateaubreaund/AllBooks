<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>





<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Info</title>
</head>
<body>
<h1><c:out value="${oneBook.title}"></c:out></h1>
<p>Description: <c:out value="${oneBook.description}"></c:out></p>
<p>Language: <c:out value="${oneBook.language}"></c:out></p>
<p>Number of Pages: <c:out value="${oneBook.numberOfPages}"></c:out></p>
</body>
</html>