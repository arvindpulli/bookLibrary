<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Edit</title>
</head>
<body>


<div class="card bg-dark text-white">
  <img class="card-img" src="https://i.pinimg.com/originals/3f/85/fd/3f85fddb6ce2a0e6bbde5edae4ce34fd.jpg" alt="Card image">
  <div class="card-img-overlay">

	<div class="m-5 border-0 d-flex justify-content-start sticky-top" >
<form:form action="update" modelAttribute="book">

	<div class="form-group">
		<form:input class="form-control bg-transparent border border-white text-light"   path="bookId" readonly="true"/>
	</div>
	<div class="form-group">
		<form:input class="form-control bg-transparent border border-white text-light"  path="bookName"/>
	</div>
	<div class="form-group">
		<form:input class="form-control bg-transparent border border-white text-light"   path="author"/>
    </div>
	<div class="form-group">
		<input class="form-control btn btn-primary bg-transparent" type="submit">
	</div>
</form:form>
</div>
</div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>