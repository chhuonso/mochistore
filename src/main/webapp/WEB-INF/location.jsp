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
    <title>Location</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="images">
<!--     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script> -->
</head>
<body>
	<nav class="navbar">
    <a href="/home" style="color: white">Mochi</a>
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
			<c:if test="${session_user_id == null}">
            <a href="/userLogin" class="navbar__links">Sign Up / Login</a>
        	</c:if>
        	<c:if test="${session_user_id != null}">
            <a href="/userLogin" class="navbar__links">LogOut</a>
        	</c:if>
        </div>
    </nav>
    
	<div class="hero" id="location-section">
		<h1 style="color:white;">Our Location</h1>
    	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d79143.13300163786!2d-119.75630117035645!3d36.76382444043078!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80945d3a1c196feb%3A0xd8ec46edf38c6657!2sMochinut!5e0!3m2!1sen!2sus!4v1661386711860!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	</div>
	
</body>
</html>