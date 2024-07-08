<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie.=edge">
    <title>Home</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <style>
        .material-symbols-outlined {
            font-variation-settings: 'FILL' 0,
            'wght' 600,
            'GRAD' 00,
            'opsz' 48;
            width: 40px;
            color: black;
        }

        .material-symbols-outlined:hover {
            font-variation-settings: 'FILL' 0,
            'wght' 600,
            'GRAD' 00,
            'opsz' 48;
            width: 40px;
            color: gray;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            outline: none;
            font-family: 'Merriweather', serif;
        }

        #tag_menu {
            color: #0c0c0b;
        }

        /* top navbar */
        .top-navbar {
            display: flex;
            justify-content: space-between;
        }

        .top-navbar p {
            margin-top: 13px;
            margin-left: 15px;
        }

        .top-navbar .icons {
            margin-top: 13px;
            margin-right: 15px;
        }

        .top-navbar a {
            text-decoration: none;
            color: black;
            margin-left: 10px;
        }

        .top-navbar a img {
            margin-bottom: 3px;
        }

        .top-navbar a:hover {
            color: black;
        }

        @media screen and (max-width: 400px) {
            .top-navbar a {
                font-size: 13px;
            }

            .top-navbar a img {
                width: 15px;
            }

            .top-navbar p {
                font-size: 13px;
            }
        }

        @media screen and (max-width: 320px) {
            .top-navbar a {
                font-size: 10px;
            }

            .top-navbar a img {
                width: 13px;
            }

            .top-navbar p {
                font-size: 10px;
            }
        }

        @media screen and (max-width: 318px) {
            .top-navbar a {
                font-size: 8px;
                margin-left: 0;
            }

            .top-navbar a img {
                width: 10px;
                margin-left: 0;
            }

            .top-navbar p {
                font-size: 10px;
                margin-top: 20px;
            }
        }

        /* top navbar */

        /* navbar */
        #navbar {
            background-color: rgb(213, 209, 214);
        }

        #logo {
            margin-left: 15px;
            color: black;
            font-size: 25px;
            font-weight: bold;
            margin-bottom: 6px;
        }

        #logo span {
            color: #231e0a;
        }

        #logo #span1 {
            font-size: 30px;
        }

        .navbar-nav {
            margin-left: 20px;
        }

        .nav-item {
            margin-left: 10px;
        }

        .nav-item .nav-link {
            color: #171414;
            margin-left: 2px;
            text-shadow: 0px 0px 1px black;
            transition: 0.5s ease;
        }

        .nav-item .nav-link:hover {
            color: #0c0c0b;
        }

        .dropdown-menu li a {
            color: white;
            transition: 0.5s ease;
        }

        .dropdown-menu li a:hover {
            background-color: rgb(213, 209, 214);
            color: #0c0c0b;
        }

        #search input {
            border-radius: 50px;
            border: none;
        }

        #search button {
            border-radius: 50px;
            color: #150e0e;
            border: 1px solid #15140e;
            background-color: rgb(213, 209, 214);
        }

        #search button:hover {
            background-color: #181b18;
            color: white;
        }

        /* navbar */


        /* home content */
        .home {
            width: 100%;
            height: 80vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
            position: relative;
            background-color: #a9a9a92b;
            z-index: 0;
        }

        .home .img {
            flex: 1 1 10%;
            margin-right: 100px;
        }

        .home .img img {
            margin-top: 30px;
            width: 80%;
            height: 70%;
        }

        .home .content {
            flex: 1 1 400px;
            margin-top: 20px;
        }

        .content h1 {
            color: rgb(24, 23, 25);
            font-weight: bold;
            margin-left: 23px;
            font-size: 55px;
            text-shadow: -1px 1px 1px black;
        }

        .content h1 span {
            color: rgb(22, 18, 23);
            text-shadow: 1px 1px 1px black;
        }

        #span2 {
            color: #0e0d07;
        }

        .content p {
            margin-left: 23px;
        }

        .btn {
            margin-left: 13px;

        }

        .btn button {
        !important;
            width: 150px;
            height: 32px;
            letter-spacing: 3px;
            background-color: #231e0a;
            color: white;
            border-radius: 5px;
            border: none;
            transition: 0.5s ease;
            cursor: pointer;
        }

        .btn button:hover {
            background-color: white;
            color: #0c0c0b;
            border: 1px solid #0c0c0b;
        }

        @media screen and (max-width: 1200px) {
            .home {
                height: 90vh;
            }
        }

        @media screen and (max-width: 799px) {
            .home {
                height: 140vh;
            }
        }

        @media screen and (max-width: 550px) {
            .home {
                height: 110vh;
            }
        }

        @media screen and (max-width: 420px) {
            .content h1 {
                font-size: 45px;
            }
        }

        @media screen and (max-width: 320px) {
            .content h1 {
                font-size: 36px;
            }
        }

        /* home content */


        /* product cards */
        #product-cards {
            margin-top: 100px;
        }

        #product-cards h1 {
            color: #bcbab4;
            text-shadow: 1px 1px 1px black;
            border-bottom: 2px solid #9e9c95;
        }

        #product-cards .card h3 {
            font-size: 20px;
            color: black;
        }

        #product-cards .card p {
            font-size: 12px;
            margin-top: 5px;
            color: black;
        }

        .star i {
            margin-left: 5px;
            font-size: 13px;
        }

        .checked {
            color: #1c1c1b;
        }

        #product-cards .card h2 {
            font-size: 20px;
            color: black;
            margin-top: 20px;
        }

        #product-cards .card h2 span {
            float: right;
            color: black;
            cursor: pointer;
        }

        @media screen and (max-width: 1000px) {
            #product-cards .card h3 {
                font-size: 15px;
            }
        }

        /* product cards */


        /* other cards */
        #other-cards {
            margin-top: 30px;
        }

        #other-cards .card {
            background-color: #a9a9a92b;
        }

        #other-cards .card h3 {
            margin-top: 30px;
            color: black;
            margin-left: 10px;
            letter-spacing: 3px;
        }

        #other-cards .card h5 {
            margin-top: 15px;
            font-weight: 100;
            font-size: 18px;
            color: black;
            margin-left: 10px;
            letter-spacing: 3px;
            border-bottom: 2px solid black;
            width: 220px;
        }

        #other-cards .card p {
            margin-top: 10px;
            font-weight: 100;
            font-size: 15px;
            color: black;
            margin-left: 10px;
            letter-spacing: 3px;
        }

        #shopnow {
            width: 130px;
            height: 30px;
            margin-top: 10px;
            margin-left: 10px;
            letter-spacing: 3px;
            color: white;
            background-color: black;
            font-weight: bold;
            border: none;
            cursor: pointer;
        }

        @media screen and (max-width: 1000px) {
            #other-cards .card h3 {
                margin-top: 5px;
                font-size: 20px;
            }

            #other-cards .card h5 {
                margin-top: 5px;
                font-size: 15px;
            }

            #other-cards .card p {
                margin-top: 0px;
            }

            #shopnow {
                margin-top: 0px;
                width: 120px;
                height: 30px;
                font-size: 16px;
            }
        }

        /* other cards */


        /* banner */
        .banner {
            margin-top: 60px;
            width: 100%;
            height: 80vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
            position: relative;
            background-color: #a9a9a92b;
            z-index: 0;
        }

        .banner .img {
            flex: 1 1 300px;
        }

        .banner .img img {
            margin-top: 30px;
            width: 100%;
        }

        .banner .content {
            flex: 1 1 400px;
            margin-top: 20px;
        }

        .banner .content h1 {
            color: rgb(197, 193, 198);
            font-weight: bold;
            margin-left: 23px;
            font-size: 55px;
            text-shadow: -1px 1px 1px black;
        }

        .banner .content h1 span {
            color: rgb(197, 193, 198);
            text-shadow: 1px 1px 1px black;
        }

        #span {
            color: #151207;
        }

        .banner .content p {
            margin-left: 23px;
        }

        .btn1 {
            margin-left: 13px;
        }

        .btn1 button {
        !important;
            width: 150px;
            height: 32px;
            letter-spacing: 3px;
            background-color: rgb(243, 243, 243);
            color: white;
            border-radius: 5px;
            border: none;
            transition: 0.5s ease;
            cursor: pointer;
        }

        .btn1 button:hover {
            color: black;

            border: none;
        }

        @media screen and (max-width: 1200px) {
            .banner {
                height: 90vh;
            }
        }

        @media screen and (max-width: 799px) {
            .banner {
                height: 140vh;
            }
        }

        @media screen and (max-width: 550px) {
            .banner {
                height: 110vh;
            }
        }

        @media screen and (max-width: 420px) {
            .banner .content h1 {
                font-size: 45px;
            }
        }

        @media screen and (max-width: 320px) {
            .banner .content h1 {
                font-size: 36px;
            }
        }

        /* banner */


        /* other cards */
        #other {
            margin-top: 50px;
        }

        #other .card {
            box-shadow: rgba(17, 12, 46, 0.15) 0px 48px 100px 0px;
        }

        #other .card h3 {
            margin-top: 10px;
            color: white;
            text-shadow: 1px 1px 1px black;
            letter-spacing: 3px;
            font-weight: bold;
        }

        #other .card p {
            margin-top: 10px;
            color: white;
            text-shadow: 0px 1px 1px black;
            letter-spacing: 3px;
            font-weight: bold;
        }

        /* other cards */


        /* offer */
        #offer {
            margin-top: 100px;
        }

        #offer i {
            font-size: 32px;
            color: black;
        }

        /* offer */


        /* newslater */
        #newslater {
            margin-top: 100px;
        }

        #newslater h3 {
            font-size: 25px;
            letter-spacing: 3px;
        }

        .input {
            margin-top: 30px;
        }

        .input input {
            width: 350px;
            height: 36px;
            letter-spacing: 2px;
            border-radius: 3px;
            border: 1px solid black;
            padding-left: 5px;
        }

        #subscribe {
            width: 200px;
            height: 36px;
            margin-left: 10px;
            border-radius: 3px;
            border: none;
            background-color: rgb(197, 193, 198);
            color: black;
            letter-spacing: 3px;
            font-weight: bold;
            text-shadow: 0px 0px 1px black;
        }

        @media screen and (max-width: 465px) {
            .input input {
                width: 280px;
            }

            #subscribe {
                margin-top: 10px;
            }
        }

        @media screen and (max-width: 250px) {
            .input input {
                width: 150px;
            }

            #subscribe {
                width: 150px;
            }
        }

        /* newslater */


        /* footer */
        #footer {

            padding: 0 0 30px 0px;
            color: white;
            font-size: 14px;
            background-color: rgb(197, 193, 198);
            margin-top: 300px;
        }

        #footer .footer-top {
            padding: 60px 0 30px 0;
            background-color: rgb(197, 193, 198);
            color: white;
        }

        #footer .footer-top .footer-contact {
            margin-bottom: 30px;
        }

        #footer .footer-top .footer-contact h3 {
            color: white;
        }

        #footer .footer-top .footer-contact h4 {
            font-size: 22px;
            margin: 0 0 30px 0;
            padding: 2px 0 2px 0;
            line-height: 1;
            font-weight: 700;
        }

        #footer .footer-top .footer-contact p {
            font-size: 14px;
            line-height: 24px;
            margin-bottom: 0;
            color: white;
        }

        #footer .footer-top h4 {
            font-size: 16px;
            font-weight: bold;
            position: relative;
            padding-bottom: 12px;
        }

        #footer .footer-top .footer-links {
            margin-bottom: 30px;
            margin-top: 10px;
        }

        #footer .footer-top .footer-links h4 {
            color: black;
        }

        #footer .footer-top .footer-links ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        #footer .footer-top .footer-links ul li {
            padding: 10px 0;
            display: flex;
            align-items: center;
        }

        #footer .footer-top .footer-links ul li a {
            text-decoration: none;
            color: white;
            display: inline-block;
            line-height: 1;
            font-weight: bold;
            transition: 0.5s ease;
        }

        #footer .footer-top .footer-links ul li a:hover {
            color: black;
        }

        #footer .footer-top .socail-links a {
            font-size: 18px;
            display: inline-block;
            text-decoration: none;
            background-color: #373737;
            color: white;
            line-height: 1;
            padding: 8px 0;
            margin-right: 4px;
            border-radius: 50%;
            text-align: center;
            width: 36px;
            transition: 0.5s ease;
        }

        #footer .footer-top .socail-links a:hover {
            background-color: rgb(197, 193, 198);
            color: white;
        }

        #footer .copyright {
            text-align: center;
            float: left;
        }

        #footer .credits {
            float: right;
            text-align: center;
            font-size: 13px;
        }

        #footer .credits a {
            color: #ffc800;
        }

        /* footer */


        html {
            scroll-behavior: smooth;
        }

        .arrow {
            position: fixed;
            width: 50px;
            height: 50px;
            bottom: 50px;
            right: 50px;
            text-decoration: none;
            text-align: center;
            line-height: 50px;
        }


        /* login */
        #login {
            width: 65%;
            height: 70vh;
            background-color: rgb(197, 193, 198);
            margin-top: 35px;
            border-radius: 10px;
            box-shadow: rgba(17, 12, 46, 0.15) 0px 48px 100px 0px;
        }

        #side1 h3 {
            color: #ffc800;
            font-weight: bold;
            margin-top: 200px;
        }

        #side2 {
            background-color: white;
            height: 70vh;
            border-radius: 10px;
        }

        #side2 h3 {
            margin-top: 30px;
            color: #ffc800;
            font-weight: bold;
            text-shadow: 0px 1px 1px black;
        }

        .input2 input {
            margin-top: 15px;
            width: 300px;
            border: none;
            border-bottom: 2px solid #ffc800;
        }

        .input2 input ::placeholder {
            font-weight: bold;
        }

        #btnlogin {
            padding-top: 10px;
        }

        #btnlogin a {
            padding: 10px;
            text-decoration: none;
            border-radius: 15px;
            background-color: rgb(197, 193, 198);
            color: white;
            font-weight: bold;
            border: none;
            text-shadow: 0px 0px 1px black;
        }

        #side2 p {
            margin-top: 10px;
        }

        @media screen and (max-width: 991px) {
            .input2 input {
                width: 250px;
            }
        }

        @media screen and (max-width: 765px) {
            .input2 input {
                width: 260px;
            }

            #side2 {
                height: 60vh;
            }
        }

        /* login */


        /* about */
        #about {
            margin-top: 30px;
        }

        #about h3 {
            font-weight: bold;
            color: #10100f;
            text-shadow: 0px 1px 1px black;
        }

        #about button {
            width: 150px;
            height: 36px;
            color: black;
            background-color: rgb(197, 193, 198);
            border-radius: 5px;
            cursor: pointer;
        }

        /* about */


        /* contact */
        #contact {
            margin-top: 50px;
        }

        #contact .card {
            height: 80px;
            margin-top: 20px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        }

        #contact .card i {
            margin-top: 10px;
            margin-left: 10px;
            font-size: 15px;
            color: rgb(197, 193, 198);
            font-weight: bold;
            letter-spacing: 3px;
        }

        #contact .card h6 {
            margin-left: 10px;
            margin-top: 10px;
            letter-spacing: 3px;
            font-weight: bold;
            color: rgb(197, 193, 198);
        }

        .messagebtn button {
            margin-top: 30px;
            width: 200px;
            height: 33px;
            background: transparent;
            border: 2px solid rgb(197, 193, 198);
            font-weight: bold;
            letter-spacing: 3px;
            transition: 0.5s ease;
            cursor: pointer;
        }

        .messagebtn button:hover {
            background-color: rgb(197, 193, 198);
            color: black;
        }

        /* contact */
        .iphone {
            width : 50%;
            height: 70%;
        }
        .iconbuy {
            background: white;
            height: 35px;
        }
        .iconbuy:hover {
            background: #9f9e9e;
        }
    </style>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>

<jsp:include page="/WEB-INF/view/common/navbar.jsp"></jsp:include>
<section class="home">
    <div class="content" style="position: relative">
        <h1><span>Iphone </span>
            <br>
            Up To 50% Off
        </h1>
        <p>The Event only takes play for 5 das
            <br>From 15/05/2024 to 20/05/2024
        </p>
        <div class="btn">
            <button onclick="window.location.href='/i-store?action=product'">Shop Now</button>
        </div>

    </div>
    <div class="img">
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://firebasestorage.googleapis.com/v0/b/case-3c600.appspot.com/o/iphone13abc.png?alt=media&token=9bd055d0-bc42-4955-9923-6f5309ec15be" class="d-block w-100" alt="..."/>
                </div>
                <div class="carousel-item">
                    <img src="https://firebasestorage.googleapis.com/v0/b/case-3c600.appspot.com/o/mac15.png?alt=media&token=145ce37e-d88c-4c8c-8eab-7136079d9377" class="d-block w-100" alt="..."/>
                </div>
                <div class="carousel-item">
                    <img src="https://firebasestorage.googleapis.com/v0/b/case-3c600.appspot.com/o/w1.png?alt=media&token=e0a77b51-70c8-4f69-82ce-67dc7e1f5e89" class="d-block w-100" alt="..."/>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
</section>

<div class="container" id="product-cards1">
    <h1 class="text-center">IPhones</h1>
    <div class="row" style="margin-top: 30px;">
        <c:forEach var="product" items="${listProduct}">
            <div class="col-md-3 py-3 py-md-0">
                <div class="card">
                    <img src="${product.image}" alt="">
                    <div class="card-body">
                        <h3 class="text-center">${product.productName}</h3>
                        <p class="text-center">${product.producer}</p>
                        <div class="star text-center">
                            <i class="fa-solid fa-star checked"></i>
                            <i class="fa-solid fa-star checked"></i>
                            <i class="fa-solid fa-star checked"></i>
                            <i class="fa-solid fa-star checked"></i>
                            <i class="fa-solid fa-star checked"></i>
                        </div>
                        <h2 style="font-size: 20px">${product.price}$
                            <button style="display: flex;margin-left: auto" type="button" class="btn btn-success iconbuy"  data-bs-toggle="modal"
                                    data-bs-target="#buyProduct${product.productId}">
                                <span class="material-symbols-outlined ">add_shopping_cart</span>
                            </button>
                        </h2>

                    </div>
                </div>
            </div>
            <div class="modal fade" id="buyProduct${product.productId}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                 aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                            <%--          form nằm đây      --%>
                        <form action="i-store?action=buy" method="post"  >
                            <input type="hidden" name="productId" value="${product.productId}"/>
                            <div class="modal-header">
                                <h4 class="modal-title">Buy product</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container" id="product-cards2">
                                    <h1 class="text-center"></h1>
                                    <div class="col-12" style="text-align: center; ">
                                        <div class="row">
                                            <img src="${product.image}" alt="">
                                            <h3 class="text-center">${product.productName}</h3>
                                            <div class="star text-center">
                                                <select name="color">
                                                    <option value="1">Grey</option>
                                                    <option value="2">Dark green</option>
                                                    <option value="3">Silver</option>
                                                    <option value="4">Black</option>
                                                </select>
                                                <select name="ram">
                                                    <option value="1">4G</option>
                                                    <option value="2">8G</option>
                                                    <option value="3">12G</option>
                                                </select>
                                                <select name="rom">
                                                    <option value="1">256G</option>
                                                    <option value="2">512G</option>
                                                    <option value="3">1T</option>
                                                </select>
                                            </div>
                                            <input type="hidden" name="display" value="6.7 inch">Display : 6.7 inch</input><br>
                                            <input type="hidden" name="battery" value="4500 mah">Battery: 4500 mah</input><br>
                                            <input type="hidden" name="camera" value="40 MP">Camera: 40 PM</input>
                                            <h2>${product.price}$<span><li class="fa-solid fa-cart-shopping"></li></span></h2>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 30px;">

                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-success iconbuy"  data-bs-toggle="modal"
                                        data-bs-target="#staticBackdrop">
                                    <span class="material-symbols-outlined ">add_shopping_cart</span>
                                </button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>

        </c:forEach>
    </div>
</div>
<section class="home">
    <div class="content">
        <h1><span>LapTop</span>
            <br>
            Up To 50% Off
        </h1>
        <p>The Event only takes play for 5 das
            <br>From 15/05/2024 to 20/05/2024
        </p>
        <div class="btn">
            <button>Shop Now</button>
        </div>

    </div>
    <div class="img">
        <img src="https://firebasestorage.googleapis.com/v0/b/case-3c600.appspot.com/o/0025006_macbook-pro-13-inch-m2-10-core-8gb-ram-256gb-ssd-chinh-hang-cu-dep.png?alt=media&token=d75c05c7-0355-4c7b-815b-e6d7f090e56b" alt="">
    </div>
</section>
<div class="container" id="product-cards1">
    <h1 class="text-center">Laptops</h1>
    <div class="row" style="margin-top: 30px;">
        <c:forEach var="mac" items="${listProductMac}">
            <div class="col-md-3 py-3 py-md-0">
                <div class="card">
                    <img src="${mac.image}" alt="">
                    <div class="card-body">
                        <h3 class="text-center">${mac.productName}</h3>
                        <p class="text-center">${mac.producer}</p>
                        <p class="text-center">${mac.description}</p>
                        <div class="star text-center">
                            <i class="fa-solid fa-star checked"></i>
                            <i class="fa-solid fa-star checked"></i>
                            <i class="fa-solid fa-star checked"></i>
                            <i class="fa-solid fa-star checked"></i>
                            <i class="fa-solid fa-star checked"></i>
                        </div>
                        <h2 style="font-size: 20px">${mac.price}$
                            <button style="display: flex;margin-left: auto" type="button" class="btn btn-success iconbuy"  data-bs-toggle="modal"
                                    data-bs-target="#buyProductMac${mac.productId}">
                                <span class="material-symbols-outlined ">add_shopping_cart</span>
                            </button>

                        </h2>

                    </div>
                </div>
            </div>
            <div class="modal fade" id="buyProductMac${mac.productId}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                 aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                            <%--          form nằm đây      --%>
                        <form action="i-store?action=buy" method="post"  >
                            <input type="hidden" name="productId" value="${mac.productId}"/>
                            <div class="modal-header">
                                <h4 class="modal-title">Buy product</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container" id="product-cards3">
                                    <h1 class="text-center"></h1>
                                    <div class="col-12" style="text-align: center; ">
                                        <div class="row">
                                            <img src="${mac.image}" alt="">
                                            <h3 class="text-center">${mac.productName}</h3>
                                            <div class="star text-center">
                                                <select name="color">
                                                    <option value="1">Grey</option>
                                                    <option value="2">Dark green</option>
                                                    <option value="3">Silver</option>
                                                    <option value="4">Black</option>
                                                </select>
                                                <select name="ram">
                                                    <option value="1">4G</option>
                                                    <option value="2">8G</option>
                                                    <option value="3">12G</option>
                                                </select>
                                                <select name="rom">
                                                    <option value="1">256G</option>
                                                    <option value="2">512G</option>
                                                    <option value="3">1T</option>
                                                </select>
                                            </div>
                                            <input type="hidden" name="display" value="6.7 inch">Display : 2k</input><br>
                                            <input type="hidden" name="battery" value="4500 mah">Chip: M3 pro</input><br>
                                            <input type="hidden" name="camera" value="40 MP">Powerful configuration </input>
                                            <h2>${mac.price}$<span><li class="fa-solid fa-cart-shopping"></li></span></h2>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 30px;">

                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-success iconbuy"  data-bs-toggle="modal"
                                        data-bs-target="#staticBackdrop">
                                    <span class="material-symbols-outlined ">add_shopping_cart</span>
                                </button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<div class="container" id="other-cards">
    <div class="row">
        <div class="col-md-6 py-3 py-md-0">
            <div class="card">
                <img src="https://firebasestorage.googleapis.com/v0/b/case-3c600.appspot.com/o/c1.png?alt=media&token=c980ccc3-aa9c-4075-8989-2590ffea1627" alt="">
                <div class="card-img-overlay">
                    <h3>Best Laptop</h3>
                    <h5>Latest Collection</h5>
                    <p>Up To 50% Off</p>
                    <button id="shopnow1">Shop Now</button>
                </div>
            </div>
        </div>
        <div class="col-md-6 py-3 py-md-0">
            <div class="card">
                <img src="https://firebasestorage.googleapis.com/v0/b/case-3c600.appspot.com/o/c2.png?alt=media&token=5fadb522-859b-4306-979a-8d41ea417584" alt="">
                <div class="card-img-overlay">
                    <h3>Best Headphone</h3>
                    <h5>Latest Collection</h5>
                    <p>Up To 50% Off</p>
                    <button id="shopnow2">Shop Now</button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container" id="offer">
    <div class="row">
        <div class="col-md-3 py-3 py-md-0">
            <i class="fa-solid fa-cart-shopping"></i>
            <h3>Free Shipping</h3>
            <p>On order over $1000</p>
        </div>
        <div class="col-md-3 py-3 py-md-0">
            <i class="fa-solid fa-rotate-left"></i>
            <h3>Free Returns</h3>
            <p>Within 30 days</p>
        </div>
        <div class="col-md-3 py-3 py-md-0">
            <i class="fa-solid fa-truck"></i>
            <h3>Fast Delivery</h3>
            <p>World Wide</p>
        </div>
        <div class="col-md-3 py-3 py-md-0">
            <i class="fa-solid fa-thumbs-up"></i>
            <h3>Big choice</h3>
            <p>Of products</p>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
<a href="#" class="arrow"><i><img src="https://firebasestorage.googleapis.com/v0/b/case-3c600.appspot.com/o/arrow.png?alt=media&token=dcf37bf4-491c-4147-a874-8a702c958abd" alt=""></i></a>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>