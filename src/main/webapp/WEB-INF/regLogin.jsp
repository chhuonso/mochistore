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
    <title>Login</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="images">
</head>
<body>
   <body class="login-body">
   	    <nav class="navbar">
        <a href="/home" class="navbar__logo "><i class="fas fa-spa"></i>Mochi</a>
        <div class="navbar__toggle" id="mobile-menu">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </div>
        <div class="navbar__menu">
            <a href="/home" class="navbar__links ">Home</a>
            <a href="/menu" class="navbar__links ">Menu</a>
            <a href="/location" class="navbar__links ">Location</a>
            <a href="https://buy.stripe.com/test_28o29D29CdBxfQcbII" class="navbar__links ">Order</a>
            <a href="/userLogin" class="navbar__links ">Sign Up / Login</a>
        </div>
    </nav>
    
    <!-- form section -->
	<div class="form-container">

		<h1 class="mb-4 mt-3 text-center text-light" id="title">Sign up and create a mochi of your own liking.</h1>
		
 		<div class="container-box">
			<div class="box1-form">
				<h3>Register:</h3>
				<form:form action="/register" method="post" modelAttribute="newUser">
					<div class="form-group mb-3">
						<form:label path="userName">Name:</form:label>
						<form:input path="userName" class="form-control" />
						<form:errors path="userName" class="text-danger" />
					</div>
					<div class="form-group mb-3">
						<form:label path="email">Email:</form:label>
						<form:input path="email" class="form-control" />
						<form:errors path="email" class="text-danger" />
					</div>
					<div class="form-group mb-3">
						<form:label path="password">Password:</form:label>
						<form:password path="password" class="form-control" />
						<form:errors path="password" class="text-danger" />
					</div>
					<div class="form-group mb-3">
						<form:label path="confirm">Confirm Password:</form:label>
						<form:password path="confirm" class="form-control" />
						<form:errors path="confirm" class="text-danger" />
					</div>
					<input type="submit" value="Register" class="btn btn-primary" />
				</form:form>
			</div>

 			<div class="box1-form">
				<h3>Login:</h3>
				<form:form action="/login" method="post" modelAttribute="loginUser">
					<div class="form-group mb-3">
						<form:label path="email">Email:</form:label>
						<form:input path="email" class="form-control" />
						<form:errors path="email" class="text-danger" />
					</div>
					<div class="form-group mb-3">
						<form:label path="password">Password:</form:label>
						<form:password path="password" class="form-control" />
						<form:errors path="password" class="text-danger" />
					</div>
					<input type="submit" value="Login" class="btn btn-success" />
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>