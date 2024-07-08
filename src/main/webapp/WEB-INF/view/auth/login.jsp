<%--
  Created by IntelliJ IDEA.
  User: tonthathoangphong
  Date: 03/07/2024
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <style>
        .material-symbols-outlined {
            font-variation-settings: 'FILL' 0,
            'wght' 400,
            'GRAD' 0,
            'opsz' 24
        }
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            outline: none;
            font-family: 'Merriweather', serif;
        }
        #tag_menu{
            color: #0c0c0b;
        }
        /* top navbar */
        .top-navbar{
            display: flex;
            justify-content: space-between;
        }
        .top-navbar p{
            margin-top: 13px;
            margin-left: 15px;
        }
        .top-navbar .icons{
            margin-top: 13px;
            margin-right: 15px;
        }
        .top-navbar a{
            text-decoration: none;
            color: black;
            margin-left: 10px;
        }
        .top-navbar a img{
            margin-bottom: 3px;
        }
        .top-navbar a:hover{
            color: black;
        }
        @media screen and (max-width:400px){
            .top-navbar a{
                font-size: 13px;
            }
            .top-navbar a img{
                width: 15px;
            }
            .top-navbar p{
                font-size: 13px;
            }
        }
        @media screen and (max-width:320px){
            .top-navbar a{
                font-size: 10px;
            }
            .top-navbar a img{
                width: 13px;
            }
            .top-navbar p{
                font-size: 10px;
            }
        }
        @media screen and (max-width:318px){
            .top-navbar a{
                font-size: 8px;
                margin-left: 0;
            }
            .top-navbar a img{
                width: 10px;
                margin-left: 0;
            }
            .top-navbar p{
                font-size: 10px;
                margin-top: 20px;
            }
        }
        /* top navbar */

        /* navbar */
        #navbar{
            background-color: rgb(213, 209, 214);
        }
        #logo{
            margin-left: 15px;
            color: black;
            font-size: 25px;
            font-weight: bold;
            margin-bottom: 6px;
        }
        #logo span{
            color: #231e0a;
        }
        #logo #span1{
            font-size: 30px;
        }
        .navbar-nav{
            margin-left: 20px;
        }
        .nav-item{
            margin-left: 10px;
        }
        .nav-item .nav-link{
            color: #171414;
            margin-left: 2px;
            text-shadow: 0px 0px 1px black;
            transition: 0.5s ease;
        }
        .nav-item .nav-link:hover{
            color: #0c0c0b;
        }
        .dropdown-menu li a{
            color: white;
            transition: 0.5s ease;
        }
        .dropdown-menu li a:hover{
            background-color: rgb(213, 209, 214);
            color: #0c0c0b;
        }
        #search input{
            border-radius: 50px;
            border: none;
        }
        #search button{
            border-radius: 50px;
            color: #150e0e;
            border: 1px solid #15140e;
            background-color: rgb(213, 209, 214);
        }
        #search button:hover{
            background-color: #181b18;
            color: white;
        }
        /* navbar */




        /* home content */
        .home{
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
        .home .img{
            flex: 1 1 300px;
        }
        .home .img img{
            margin-top: 30px;
            width: 80%;
            height: 70%;
        }
        .home .content{
            flex: 1 1 400px;
            margin-top: 20px;
        }
        .content h1{
            color: rgb(24, 23, 25);
            font-weight: bold;
            margin-left: 23px;
            font-size: 55px;
            text-shadow: -1px 1px 1px black;
        }
        .content h1 span{
            color: rgb(22, 18, 23);
            text-shadow: 1px 1px 1px black;
        }
        #span2{
            color: #0e0d07;
        }
        .content p{
            margin-left: 23px;
        }
        .btn{
            margin-left: 13px;

        }
        .btn button{
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
        .btn button:hover{
            background-color: white;
            color: #0c0c0b;
            border: 1px solid #0c0c0b;
        }
        @media screen and (max-width:1200px){
            .home{
                height: 90vh;
            }
        }
        @media screen and (max-width:799px){
            .home{
                height: 140vh;
            }
        }
        @media screen and (max-width:550px){
            .home{
                height: 110vh;
            }
        }
        @media screen and (max-width:420px){
            .content h1{
                font-size: 45px;
            }
        }
        @media screen and (max-width:320px){
            .content h1{
                font-size: 36px;
            }
        }
        /* home content */








        /* product cards */
        #product-cards{
            margin-top: 100px;
        }
        #product-cards h1{
            color: #bcbab4;
            text-shadow: 1px 1px 1px black;
            border-bottom: 2px solid #9e9c95;
        }
        #product-cards .card h3{
            font-size: 20px;
            color: black;
        }
        #product-cards .card p{
            font-size: 12px;
            margin-top: 5px;
            color: black;
        }
        .star i{
            margin-left: 5px;
            font-size: 13px;
        }
        .checked{
            color: #1c1c1b;
        }
        #product-cards .card h2{
            font-size: 20px;
            color: black;
            margin-top: 20px;
        }
        #product-cards .card h2 span{
            float: right;
            color: black;
            cursor: pointer;
        }
        @media screen and (max-width:1000px){
            #product-cards .card h3{
                font-size: 15px;
            }
        }
        /* product cards */








        /* other cards */
        #other-cards{
            margin-top: 30px;
        }
        #other-cards .card{
            background-color: #a9a9a92b;
        }
        #other-cards .card h3{
            margin-top: 30px;
            color: black;
            margin-left: 10px;
            letter-spacing: 3px;
        }
        #other-cards .card h5{
            margin-top: 15px;
            font-weight: 100;
            font-size: 18px;
            color: black;
            margin-left: 10px;
            letter-spacing: 3px;
            border-bottom: 2px solid black;
            width: 220px;
        }
        #other-cards .card p{
            margin-top: 10px;
            font-weight: 100;
            font-size: 15px;
            color: black;
            margin-left: 10px;
            letter-spacing: 3px;
        }
        #shopnow{
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

        @media screen and (max-width:1000px){
            #other-cards .card h3{
                margin-top: 5px;
                font-size: 20px;
            }
            #other-cards .card h5{
                margin-top: 5px;
                font-size: 15px;
            }
            #other-cards .card p{
                margin-top: 0px;
            }
            #shopnow{
                margin-top: 0px;
                width: 120px;
                height: 30px;
                font-size: 16px;
            }
        }
        /* other cards */






        /* banner */
        .banner{
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
        .banner .img{
            flex: 1 1 300px;
        }
        .banner .img img{
            margin-top: 30px;
            width: 100%;
        }
        .banner .content{
            flex: 1 1 400px;
            margin-top: 20px;
        }
        .banner .content h1{
            color: rgb(197, 193, 198);
            font-weight: bold;
            margin-left: 23px;
            font-size: 55px;
            text-shadow: -1px 1px 1px black;
        }
        .banner .content h1 span{
            color: rgb(197, 193, 198);
            text-shadow: 1px 1px 1px black;
        }
        #span{
            color: #151207;
        }
        .banner .content p{
            margin-left: 23px;
        }
        .btn1{
            margin-left: 13px;
        }
        .btn1 button{
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
        .btn1 button:hover{
            color: black;

            border: none;
        }
        @media screen and (max-width:1200px){
            .banner{
                height: 90vh;
            }
        }
        @media screen and (max-width:799px){
            .banner{
                height: 140vh;
            }
        }
        @media screen and (max-width:550px){
            .banner{
                height: 110vh;
            }
        }
        @media screen and (max-width:420px){
            .banner .content h1{
                font-size: 45px;
            }
        }
        @media screen and (max-width:320px){
            .banner .content h1{
                font-size: 36px;
            }
        }
        /* banner */









        /* other cards */
        #other{
            margin-top: 50px;
        }
        #other .card{
            box-shadow: rgba(17,12,46, 0.15) 0px 48px 100px 0px;
        }
        #other .card h3{
            margin-top: 10px;
            color: white;
            text-shadow: 1px 1px 1px black;
            letter-spacing: 3px;
            font-weight: bold;
        }
        #other .card p{
            margin-top: 10px;
            color: white;
            text-shadow: 0px 1px 1px black;
            letter-spacing: 3px;
            font-weight: bold;
        }
        /* other cards */




        /* offer */
        #offer{
            margin-top: 100px;
        }
        #offer i{
            font-size: 32px;
            color: black;
        }
        /* offer */




        /* newslater */
        #newslater{
            margin-top: 100px;
        }
        #newslater h3{
            font-size: 25px;
            letter-spacing: 3px;
        }
        .input{
            margin-top: 30px;
        }
        .input input{
            width: 350px;
            height: 36px;
            letter-spacing: 2px;
            border-radius: 3px;
            border:  1px solid black;
            padding-left: 5px;
        }
        #subscribe{
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
        @media screen and (max-width:465px){
            .input input{
                width: 280px;
            }
            #subscribe{
                margin-top: 10px;
            }
        }
        @media screen and (max-width:250px){
            .input input{
                width: 150px;
            }
            #subscribe{
                width: 150px;
            }
        }
        /* newslater */




        /* footer */
        #footer{

            padding: 0 0 30px 0px;
            color: white;
            font-size: 14px;
            background-color: rgb(197, 193, 198);
            margin-top: 300px;
        }
        #footer .footer-top{
            padding: 60px 0 30px 0;
            background-color: rgb(197, 193, 198);
            color: white;
        }
        #footer .footer-top .footer-contact{
            margin-bottom: 30px;
        }
        #footer .footer-top .footer-contact h3{
            color: white;
        }
        #footer .footer-top .footer-contact h4{
            font-size: 22px;
            margin: 0 0 30px 0;
            padding: 2px 0 2px 0;
            line-height: 1;
            font-weight: 700;
        }
        #footer .footer-top .footer-contact p{
            font-size: 14px;
            line-height: 24px;
            margin-bottom: 0;
            color: white;
        }
        #footer .footer-top h4{
            font-size: 16px;
            font-weight: bold;
            position: relative;
            padding-bottom: 12px;
        }
        #footer .footer-top .footer-links{
            margin-bottom: 30px;
            margin-top: 10px;
        }
        #footer .footer-top .footer-links h4{
            color: black;
        }
        #footer .footer-top .footer-links ul{
            list-style: none;
            padding: 0;
            margin: 0;
        }
        #footer .footer-top .footer-links ul li{
            padding: 10px 0;
            display: flex;
            align-items: center;
        }
        #footer .footer-top .footer-links ul li a{
            text-decoration: none;
            color: white;
            display: inline-block;
            line-height: 1;
            font-weight: bold;
            transition: 0.5s ease;
        }
        #footer .footer-top .footer-links ul li a:hover{
            color: black;
        }
        #footer .footer-top .socail-links a{
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
        #footer .footer-top .socail-links a:hover{
            background-color: rgb(197, 193, 198);
            color: white;
        }
        #footer .copyright{
            text-align: center;
            float: left;
        }
        #footer .credits{
            float: right;
            text-align: center;
            font-size: 13px;
        }
        #footer .credits a{
            color: #ffc800;
        }
        /* footer */




        html{
            scroll-behavior: smooth;
        }
        .arrow{
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
        #login{
            width: 65%;
            height: 70vh;
            background-color: rgb(197, 193, 198);
            margin-top: 35px;
            border-radius: 10px;
            box-shadow: rgba(17,12, 46, 0.15) 0px 48px 100px 0px;
        }
        #side1 h3{
            color: #ffc800;
            font-weight: bold;
            margin-top: 200px;
        }
        #side2{
            background-color: white;
            height: 70vh;
            border-radius: 10px;
        }
        #side2 h3{
            margin-top: 30px;
            color: #ffc800;
            font-weight: bold;
            text-shadow: 0px 1px 1px black;
        }
        .input2 input{
            margin-top: 15px;
            width: 300px;
            border: none;
            border-bottom: 2px solid #ffc800;
        }
        .input2 input ::placeholder{
            font-weight: bold;
        }
        #btnlogin{
            padding-top: 10px;
        }
        #btnlogin a{
            padding: 10px;
            text-decoration: none;
            border-radius: 15px;
            background-color: rgb(197, 193, 198);
            color: white;
            font-weight: bold;
            border: none;
            text-shadow: 0px 0px 1px black;
        }
        #side2 p{
            margin-top: 10px;
        }
        @media screen and (max-width:991px){
            .input2 input{
                width: 250px;
            }
        }
        @media screen and (max-width:765px){
            .input2 input{
                width: 260px;
            }
            #side2{
                height: 60vh;
            }
        }
        /* login */




        /* about */
        #about{
            margin-top: 30px;
        }
        #about h3{
            font-weight: bold;
            color: #10100f;
            text-shadow: 0px 1px 1px black;
        }
        #about button{
            width: 150px;
            height: 36px;
            color: black;
            background-color: rgb(197, 193, 198);
            border-radius: 5px;
            cursor: pointer;
        }
        /* about */





        /* contact */
        #contact{
            margin-top: 50px;
        }
        #contact .card{
            height: 80px;
            margin-top: 20px;
            box-shadow: rgba(100, 100, 111 ,0.2) 0px 7px 29px 0px;
        }
        #contact .card i{
            margin-top: 10px;
            margin-left: 10px;
            font-size: 15px;
            color: rgb(197, 193, 198);
            font-weight: bold;
            letter-spacing: 3px;
        }
        #contact .card h6{
            margin-left: 10px;
            margin-top: 10px;
            letter-spacing: 3px;
            font-weight: bold;
            color: rgb(197, 193, 198);
        }
        .messagebtn button{
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
        .messagebtn button:hover{
            background-color: rgb(197, 193, 198);
            color: black;
        }
        /* contact */

    </style>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"/>
</head>
<body>
<section class="text-center text-lg-start">
    <style>
        .cascading-right {
            margin-right: -50px;
        }

        @media (max-width: 991.98px) {
            .cascading-right {
                margin-right: 0;
            }
        }
    </style>

    <nav class="navbar navbar-expand-lg" id="navbar" >
        <div class="container-fluid">
            <a class="navbar-brand" id="logo">
                <svg xmlns="http://www.w3.org/2000/svg" height="48px" viewBox="0 -960 960 960" width="48px" fill="#black">
                    <path d="M480-120q-117 0-198.5-81.5T200-400q0-100 61.5-176.5T420-674q-26-5-50-14.5T327-717q-28-29-37.5-67t-9.5-78v-18q86-2 148 56.5T489-680q14-43 39.5-80t57.5-69q9-9 21-9t21 9q9 9 9 21t-9 21q-25 25-45 54t-34 61q94 24 152.5 99.5T760-400q0 117-81.5 198.5T480-120Zm0-60q92 0 156-64t64-156q0-92-64-156t-156-64q-92 0-156 64t-64 156q0 92 64 156t156 64Zm0-220Z"/>
                </svg>
                <span>ORANGE SHOP</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span><img id="tag_menu" src="https://firebasestorage.googleapis.com/v0/b/case-3c600.appspot.com/o/menu.png?alt=media&token=cd32e243-04a1-4299-a044-ee2a11f9fdf5" alt="" width="30px"></span>
            </button>

        </div>
    </nav>

    <div class="container py-4">
        <div class="row g-0 align-items-center">
            <div class="col-lg-6 mb-5 mb-lg-0">
                <div class="card cascading-right bg-body-tertiary" style="
            backdrop-filter: blur(30px);
            ">
                    <div class="card-body p-5 shadow-5 text-center">
                        <h2 class="fw-bold mb-5">Sign in now</h2>
                        <form action="${pageContext.request.contextPath}/auth?action=login" method="post" >
                            <p class="text-danger">${mess}</p>
                            <div data-mdb-input-init class="form-outline mb-4">
                                <input name="username" type="text" id="form3Example3" class="form-control" />
                                <label class="form-label" for="form3Example3">Username</label>
                            </div>
                            <div data-mdb-input-init class="form-outline mb-4">
                                <input name="password" type="password" id="form3Example4" class="form-control" />
                                <label class="form-label" for="form3Example4">Password</label>
                            </div>
                            <div class="form-check d-flex justify-content-center mb-4">
                                <p>Don't have an account?<a href="${pageContext.request.contextPath}/auth?action=register"> Sign Up</a></p>
                            </div>
                           <button type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-block mb-4">
                                Sign in
                           </button>

                        </form>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 mb-5 mb-lg-0">
                <img src="https://mdbootstrap.com/img/new/ecommerce/vertical/004.jpg" class="w-100 rounded-4 shadow-4" alt=""/>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>
