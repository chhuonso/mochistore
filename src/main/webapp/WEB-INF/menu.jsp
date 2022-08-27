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
    <title>Mochi Menu</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="images">

       <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap" rel="stylesheet">
    <title>Mochi</title>
</head>
<body class="body-img">
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
            <a href="https://buy.stripe.com/test_28o29D29CdBxfQcbII" class="navbar__link" style="color: white;">Order</a>
			<c:if test="${session_user_id == null}">
            <a href="/userLogin" class="navbar__links">Sign Up / Login</a>
        	</c:if>
        	<c:if test="${session_user_id != null}">
            <a href="/userLogin" class="navbar__links">LogOut</a>
        	</c:if>
        </div>
    </nav>
<!-- Menu Section -->
        <div class="container-menu ">
            <div class="menu-container" >
            <h1 class="text">Mochi Donuts</h1>
                <div class="each-item">
                    <div class="menu_item">
                        <img src="/images/Copy of Single-2 (1)_edited_edited_edite.webp" alt="mochi donut" class="image-item"/>
                        <!-- <button>add</button> -->
                    </div>
                    <div class="menu_item">
                        <img src="/images/Copy of Single-2 (1)_edited_edited_edite.webp" alt="mochi donut" class="image-item"/>
                        <!-- <button>add</button> -->
                    </div>
                    <div class="menu_item">
                        <img src="/images/Copy of Single-2 (1)_edited_edited_edite.webp" alt="mochi donut" class="image-item"/>
                        <!-- <button>add</button> -->
                    </div>
                    <div class="menu_item">
                        <img src="/images/Copy of Single-2 (1)_edited_edited_edite.webp" alt="mochi donut" class="image-item"/>
                        <!-- <button>add</button> -->
                    </div>
                    <!-- <div class="menu_item">
                        <img src="./mochidohnuts/Copy of Single-2 (1)_edited_edited_edite.webp" alt="mochi donut" class="image-item"/>
                        <button>add</button>
                    </div>
                    <div class="menu_item">
                        <img src="./mochidohnuts/Copy of Single-2 (1)_edited_edited_edite.webp" alt="mochi donut" class="image-item"/>
                        <button>add</button>
                    </div>
                    <div class="menu_item">
                        <img src="./mochidohnuts/Copy of Single-2 (1)_edited_edited_edite.webp" alt="mochi donut" class="image-item"/>
                        <button>add</button>
                    </div>
                    <div class="menu_item">
                        <img src="./mochidohnuts/Copy of Single-2 (1)_edited_edited_edite.webp" alt="mochi donut" class="image-item"/>
                        <button>add</button>
                    </div>
                    <div class="menu_item">
                        <img src="./mochidohnuts/Copy of Single-2 (1)_edited_edited_edite.webp" alt="mochi donut" class="image-item"/>
                        <button>add</button>
                    </div> -->
                </div>
            </div>
        </div>
        <div class="container-menu ">
            <div class="menu-container" >
            <h1 class="text">Korean Corndogs</h1>
                <div class="each-item">
                    <div class="menu_item">
                        <img src="/images/kdogs2.webp" alt="Hotdogs" class="image-item"/>
                        <!-- <button>add</button> -->
                    </div>
                    <div class="menu_item">
                        <img src="/images/kdogs2.webp" alt="hotdogs" class="image-item"/>
                        <!-- <button>add</button> -->
                    </div>
                    <div class="menu_item">
                        <img src="/images/kdogs2.webp" alt="hotdogs" class="image-item"/>
                        <!-- <button>add</button> -->
                    </div>
                    <!-- <div class="menu_item">
                        <img src="./mochidohnuts/kdogs2.webp" alt="hotdogs" class="image-item"/>
                        <button>add</button>
                    </div>
                    <div class="menu_item">
                        <img src="./mochidohnuts/kdogs2.webp" alt="hotdogs" class="image-item"/>
                        <button>add</button>
                    </div>
                    <div class="menu_item">
                        <img src="./mochidohnuts/kdogs2.webp" alt="hotdogs" class="image-item"/>
                        <button>add</button>
                    </div> -->
                </div>
            </div>
        </div>
        <div class="container-menu ">
            <div class="menu-container" >
            <h1 class="text">Boba Drinks</h1>
                <div class="each-item">
                    <div class="menu_item">
                        <img src="/images/boba1.webp" alt="boba drink" class="image-item"/>
                        <!-- <button>add</button> -->
                    </div>
                    <div class="menu_item">
                        <img src="/images/boba1.webp" alt="boba drink" class="image-item"/>
                        <!-- <button>add</button> -->
                    </div>
                    <div class="menu_item">
                        <img src="/images/boba1.webp" alt="boba drink" class="image-item"/>
                        <!-- <button>add</button> -->
                    </div>
                    <!-- <div class="menu_item">
                        <img src="./mochidohnuts/boba1.webp" alt="boba drink" class="image-item"/>
                        <button>add</button>
                    </div>
                    <div class="menu_item">
                        <img src="./mochidohnuts/boba1.webp" alt="boba drink" class="image-item"/>
                        <button>add</button>
                    </div>
                    <div class="menu_item">
                        <img src="./mochidohnuts/boba1.webp" alt="boba drink" class="image-item"/>
                        <button>add</button>
                    </div> -->
                </div>
            </div>
        </div>
</body>
</html>