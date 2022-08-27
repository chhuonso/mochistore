<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Saved List</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/images">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap"
	rel="stylesheet">
</head>
<body class="display-body">
	<nav class="navbar">
		<a href="/home" class="navbar__logo">Mochi</a>
		<div class="navbar__toggle" id="mobile-menu">
			<span class="bar"></span> <span class="bar"></span> <span class="bar"></span>
		</div>
		<div class="navbar__menu">
			<a href="/home" class="navbar__links">Home</a> <a href="/menu"
				class="navbar__links ">Menu</a> <a href="/location"
				class="navbar__links ">Location</a> <a
				href="https://buy.stripe.com/test_28o29D29CdBxfQcbII"
				class="navbar__links">Order</a>
			<!--             <a href="/userLogin" class="navbar__links">Sign Up / Login</a> -->
			<c:if test="${session_user_id == mochi.user.id}">
			</c:if>
			<a href="/userLogin" style="color:white;">Log Out</a>
		</div>
	</nav>
	<div class="w-75 border border-5 border-dark p-5 m-auto mt-5 box1-table">
		<div class="d-flex justify-content-between align-items-center">
			<h1>
				Hello,
				<c:out value="${userName}" />
			</h1>
			<h5>Your List</h5>
			<a href="/mochi/create" class="btn btn-primary">Create </a>
		</div>
		<table class="table table-hover text-light">
			<thead>
				<tr>
					<th>Glazed</th>
					<th>Topping 1</th>
					<th>Topping 2</th>
					<th>Topping 3</th>
					<th>Action</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allMochi}" var="mochi">
					<c:if test="${session_user_id == mochi.user.id}">
						<tr>
							<td>
								<%-- <a href="/mochi/${mochi.id}"> --%>
								<c:out value="${mochi.top1}" />
								<!-- </a> -->
							</td>
							<td><c:out value="${mochi.top2}" /></td>
							<td><c:out value="${mochi.top3}" /></td>
							<td><c:out value="${mochi.top4}" /></td>
							<td>
								<form action="/mochi/${mochi.id}/edit" method="post">
									<input type="hidden" name="_method" value="delete"> <input
										type="submit" value="Delete" class="btn btn-danger">
								</form>
							</td>
					</c:if>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>