<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create a Mochi</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap" rel="stylesheet">
</head>
<body class="create-body">
    <nav class="navbar">
        <a href="/home" class="navbar__logo">Mochi</a>
        <div class="navbar__toggle" id="mobile-menu">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </div>
        <div class="navbar__menu">
            <a href="/home" class="navbar__links">Home</a>
            <a href="/menu" class="navbar__links">Menu</a>
            <a href="/location" class="navbar__links">Location</a> 
            <a href="https://buy.stripe.com/test_28o29D29CdBxfQcbII" class="navbar__links">Order</a>
            <a href="/userLogin" class="navbar__links">LogOut</a>
        </div>
    </nav>
	<h1 class="text-center mt-5 text-light box1-table">Create and save for next time Order!</h1>
	<div class="d-flex ">
		<a href="/userDisplay">back</a>
	</div>

   <div class=" m-auto p-5 w-50" >
		<form:form action="/mochi/create" method="post"
			modelAttribute="newMochi" class="w-50 mt-3 m-auto p-3 box1-table">
			<div class="form-group mb-3 w-100 ">
				<form:label path="top1" >Glazed:</form:label>
				<form:select path="top1" class="form-control" >
					<form:option value="none">None</form:option>
					<form:option value="strawberry">Strawberry</form:option>
					<form:option value="matcha">Matcha</form:option>
					<form:option value="caramel">Caramel</form:option>
					<form:option value="blacksesame">Black Sesame</form:option>
				</form:select>
				<form:errors path="top1" class="text-danger" />
				
				<form:label path="top2">Topping 1:</form:label>
				<form:select path="top2" class="form-control" >
					<form:option value="none">None</form:option>
					<form:option value="strawberry">Dry Strawberry</form:option>
					<form:option value="gummywarms">Gummy warms</form:option>
					<form:option value="caramel">Fruity loops</form:option>
					<form:option value="rainbow">Rainbow sprinkles</form:option>
				</form:select>
				<form:errors path="top2" class="text-danger" />
				
				<form:label path="top3">Topping 2:</form:label>
				<form:select path="top3" class="form-control" >
					<form:option value="none">None</form:option>
					<form:option value="strawberryCream">Strawberry whipped</form:option>
					<form:option value="koolWhipped">Kool Whipped</form:option>
					<form:option value="chocolate">Chocolate Cream</form:option>
					<form:option value="matchCream">Matcha Cream</form:option>
				</form:select>
				<form:errors path="top3" class="text-danger" />
				
				<form:label path="top4">Topping 3:</form:label>
				<form:select path="top4" class="form-control" >
					<form:option value="none">None</form:option>
					<form:option value="strawberryCream">Strawberry whipped</form:option>
					<form:option value="koolWhipped">Kool Whipped</form:option>
					<form:option value="chocolate">Chocolate Cream</form:option>
					<form:option value="matchCream">Matcha Cream</form:option>
				</form:select>
				<form:errors path="top4" class="text-danger" />
			</div>
		
			<div class="d-flex justify-content-center">
				<input type="submit" value="Submit" class="btn btn-primary" />
			</div>
		</form:form>
	</div>
</body>
</html>