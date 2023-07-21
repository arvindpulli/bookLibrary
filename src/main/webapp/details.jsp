<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
    
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Details</title>
</head>
<body>

<div class="card bg-dark text-white">
  <img class="card-img" src="https://cdn.wallpapersafari.com/34/2/LpJklO.jpg" alt="Card image">
  <div class="card-img-overlay">
  
<div class="m-5 border-0">
<h1 class="d-flex justify-content-center mb-5">Available Books</h1>
<table class="table table-hover">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Author</th>
		<th>Delete</th>
		<th>Edit</th>
	</tr>
	
	<c:forEach var="b" items="${books}">
		<tr>
			<TD>${b.bookId}</TD>
			<TD>${b.bookName}</TD>
			<TD>${b.author}</TD>
			<TD><a href="delete?id=${b.bookId}"><button class="btn btn-success">Delete</button></a></TD>
			<TD><a href="edit?id=${b.bookId}"><button class="btn btn-warning">Edit</button></a></TD>	
		</tr>
	
	
	</c:forEach>

</table>
</div>
</div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>