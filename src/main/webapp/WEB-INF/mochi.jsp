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

    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="images">
<!-- 	<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script> -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap" rel="stylesheet">

	<title>Mochi</title>
</head>
<body>
    <nav class="navbar">
        <a href="/home" class="navbar__logo animate-services"><i class="fas fa-spa"></i>Mochi</a>
        <div class="navbar__toggle" id="mobile-menu">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </div>
        <div class="navbar__menu">
            <a href="/home" class="navbar__links animate-membership">Home</a>
            <a href="/menu" class="navbar__links animate-membership">Menu</a>
            <a href="/location" class="navbar__links animate-membership">Location</a> 
            <a href="https://buy.stripe.com/test_28o29D29CdBxfQcbII" class="navbar__links animate-membership">Order</a>
			<c:if test="${session_user_id == null}">
            <a href="/userLogin" class="navbar__links animate-membership">Sign Up / Login</a>
        	</c:if>
        	<c:if test="${session_user_id != null}">
            <a href="/userLogin" class="navbar__links animate-membership">LogOut</a>
        	</c:if>
        </div>
    </nav>
<!-- Hero Section -->
    <div class="hero">
        <div class="hero__content" >
            <h1 class='animate-hero'>Mochi</h1>
            <p class='animate-hero'> Mochi donut| Korean Corndogs | Boba</p>
        </div>
    </div>
<!-- Services Section -->
<section class="section one">
    <div class="container">
        <div class="column-left">
            <h1 class="text">What is Mochi Doughnuts?</h1>
            <p class="text">Yumminess made to fit into bite size satisfaction. A combination of donut and chewy mochi(tapioca rice flour). Experience the classic American style donut with a Japanese twist. </p>
            <!-- <a href="/mochiMenu.html">Veiw more...</a> -->
        </div>
        <div class="column-right">
            <img src="/images/MochiMochiDonut-Sampler-2.avif" alt="Mochi stack" class="image"/>
        </div>
    </div>
</section>
<section class="section two">
    <div class="container">
        <div class="column-right">
            <img src="/images/kdogs2.webp" alt="Corndogs stack" class="image"/>
        </div>
        <div class="column-left">
            <h1 class="text">Korean Corndogs</h1>
            <p class="text"> Fulfill your cravings with a salty but sweet Korean style corndog with a choice of various toppings.  </p>
            <!-- <a href="/hotdogsMenu.html">Veiw more...</a> -->
        </div>
    </div>
</section>
<section class="section three">
    <div class="container">
        <div class="column-left bg-light">
            <h1 class="text">Boba</h1>
            <p class="text">Quench your thrist with what is also known as Boba Tea. This tea based beverage was originated in  Taiwan. Send your tastbuds on a ride of satisfaction with a flavorful beverage, while adding fruits or tapioca round shaped jellies. </p>
            <!-- <a href="/bobaMenu.html">Veiw more...</a> -->
        </div>
        <div class="column-right">
            <img src="/images/boba1.webp" alt="Boba image" class="image"/> 
        </div>
    </div>
</section>

<section class="section four">
    <div class="">
        <div class="">
            <h1 class="text" style="color:#fff;">COMING SOON...</h1>
            <h2 style="color:#fff;">Post / Image </h2>
            

        </div>
    </div>
</section>








	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.2/gsap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.2/ScrollTrigger.min.js"></script>
	<script src="js/script.js"></script>

</body>
</html>