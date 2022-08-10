<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Books</title>
    <link rel="stylesheet" type="text/css" href="/css/styles.css">
    <!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<div="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
		    	<h1>Books</h1>
		    	<table class="table table-striped">
			  		<thead>
					    <tr>
					      <th scope="col">Title</th>
					      <th scope="col">Description</th>
					      <th scope="col">Language</th>
					      <th scope="col">Number of Pages</th>
			    		</tr>
			  		</thead>
			  		<tbody>
			  		<!-- - the each "C:" is the % jinja for python and its called for each  -->
			  		<!--  JSTL means java server template library. jinja is for python amd this is for java-->
			    		<c:forEach var="eachBook" items="${books}">
						    <tr>
						      <td><c:out value="${eachBook.id}"></c:out></td>
						      <td>
						      	<a href="/books/${eachBook.id}">
						      		<c:out value="${eachBook.title}"></c:out>
						      	</a>
						      	</td>
						      <td><c:out value="${eachBook.description}"></c:out></td>
						      <td><c:out value="${eachBook.language}"></c:out></td>
						      <td><c:out value="${eachBook.numberOfPages}"></c:out></td>
				    		</tr>
			    		</c:forEach>
			  		</tbody>
				</table>	
			</div>
			<div class="col-2"></div>
		</div>
	</div>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>     
</body>
</html>
