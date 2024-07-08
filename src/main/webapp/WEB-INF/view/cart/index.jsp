<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cart</title>
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
            'wght' 400,
            'GRAD' 0,
            'opsz' 24
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
            flex: 1 1 300px;
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
        .quantity {
            width: 30px;
        }
        .product-price {
            width: 150px;
        }
        .sort-price-container {
            display: inline-block;
            position: relative;
        }

        .sort-price-container select {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            background-color: #f5f5f5;
            color: #333;
            padding: 8px 30px 8px 10px;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
            outline: none;
        }

        .sort-price-container select::-ms-expand {
            display: none;
        }

        .sort-price-container select option {
            background-color: #fff;
            color: #333;
        }

        .sort-price-container select:hover {
            background-color: #e0e0e0;
        }

        .sort-price-container select:focus {
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }

    </style>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"/>
    <script>

        // Hàm giảm số lượng
        function decreaseNumber(button) {
            let input = button.parentNode.querySelector('.quantityInput'); // Tìm input số lượng trong cùng hàng
            let newValue = parseInt(input.value) - 1;
            if (newValue >= 1) {
                input.value = newValue;
                updateTotalPrice(input);
            }
        }

        // Hàm tăng số lượng
        function increaseNumber(button) {
            let input = button.parentNode.querySelector('.quantityInput'); // Tìm input số lượng trong cùng hàng
            let newValue = parseInt(input.value) + 1;
            input.value = newValue;
            updateTotalPrice(input);

        }

        // Hàm cập nhật giá tiền khi thay đổi số lượng
        function updateTotalPrice(input) {
            let quantity = parseInt(input.value);
            let pricePerItem = parseFloat(input.getAttribute('data-price'));
            let totalPriceElement = input.parentNode.previousElementSibling; // Ô chứa giá tiền

            let totalPrice = quantity * pricePerItem;
            totalPriceElement.textContent = totalPrice.toFixed(2); // Cập nhật giá tiền với hai chữ số thập phân
            calculateTotalPrice();
            calculateTotalPrice1();
        }

        function calculateTotalPrice() {
            let totalPrice = 0; // Đặt lại tổng tiền về 0 trước khi tính lại
            let priceElements = document.querySelectorAll('.product-price'); // Chọn tất cả các ô hiển thị giá tiền

            priceElements.forEach(function(element) {
                totalPrice += parseFloat(element.textContent); // Cộng dồn giá tiền từng sản phẩm vào tổng tiền
            });

            document.getElementById('totalPrice').textContent = totalPrice.toFixed(2); // Hiển thị tổng tiền với hai chữ số thập phân
        }

        function calculateTotalPrice1() {
            let totalPrice1 = 0; // Đặt lại tổng tiền về 0 trước khi tính lại
            let priceElements = document.querySelectorAll('.product-price'); // Chọn tất cả các ô hiển thị giá tiền

            priceElements.forEach(function(element) {
                totalPrice1 += parseFloat(element.textContent); // Cộng dồn giá tiền từng sản phẩm vào tổng tiền
            });

            document.getElementById('totalPrice1').textContent = totalPrice1.toFixed(2); // Hiển thị tổng tiền với hai chữ số thập phân
        }

        document.addEventListener('DOMContentLoaded', function() {
            calculateTotalPrice();
            calculateTotalPrice1();
        });


        function selectPaymentMethod(paymentMethod) {
            document.getElementById('dropdownMenuLink').innerText = paymentMethod;
        }

        function sortProducts() {
            let sortDirection = document.getElementById("sortPrice").value;
            let rows = Array.from(document.querySelectorAll("#productTableBody tr"));

            rows.sort(function(rowA, rowB) {
                let priceA = parseFloat(rowA.querySelector(".product-price").textContent);
                let priceB = parseFloat(rowB.querySelector(".product-price").textContent);

                if (sortDirection === "asc") {
                    return priceA - priceB;
                } else {
                    return priceB - priceA;
                }
            });

            // Xóa tất cả các hàng hiện có trong bảng
            let tbody = document.getElementById("productTableBody");
            tbody.innerHTML = "";

            // Thêm lại các hàng đã sắp xếp vào bảng
            rows.forEach(function(row) {
                tbody.appendChild(row);
            });
        }



    </script>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<body>
<jsp:include page="/WEB-INF/view/common/navbar.jsp"></jsp:include>
<br>
<table style="margin-top: 50px; margin-bottom: 50px; text-align: center; vertical-align: middle" class="table table-striped table-hover">
    <thead>
    <tr>
        <th scope="col">STT</th>
        <th scope="col">image</th>
        <th scope="col">Product Name</th>
        <th scope="col">Producer</th>
        <th scope="col">Ram</th>
        <th scope="col">Rom</th>
        <th scope="col">Color</th>
        <th scope="col">Price
            <span class="sort-price-container">
                <select id="sortPrice" onchange="sortProducts()">
                    <option value="asc">Up</option>
                    <option value="desc">Down</option>
                </select>
            </span>
        </th>
<%--        <th scope="col">User Name</th>--%>
<%--        <th scope="col">User Phone</th>--%>
<%--        <th scope="col">User Address</th>--%>
        <th scope="col">Quantily</th>

    </tr>
    </thead>
    <tbody  id="productTableBody">
    <c:forEach var="cart" items="${cartDetailDTOS}" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td><img src="${cart.image}" width="100px" height="100px" alt=""/></td>
            <td>${cart.nameProduct}</td>
            <td>${cart.producer}</td>
            <td>${cart.ram}</td>
            <td>${cart.rom}</td>
            <td>${cart.color}</td>
            <td class="product-price">${cart.price}</td>
            <td>
                <button class="quantity btn-outline-dark" onclick="decreaseNumber(this)">-</button>
                <input style="width: 40px; padding-left: 10px" type="text" class="quantityInput" value="1" data-price="${cart.price}">
                <button class="quantity btn-outline-dark" onclick="increaseNumber(this)">+</button>
            </td>
            <td>
                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete${cart.id}">
                    <span class="material-symbols-outlined">delete</span>
                </button>
            </td>
        </tr>
        <div class="modal fade" id="delete${cart.id}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
             aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Delete </h4>
                        </div>
                        <div class="modal-body">
                            <span class="material-symbols-outlined" style="color: #ffc800">warning</span>
                            <p>Are you sure you want to delete the product?</p>
                            <img src="${cart.image}" width="500px" height="400px" alt=""/>
                            <p class="text-warning"><small>This action cannot be undone!</small></p>
                        </div>


                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <form action="i-store?action=deleteCustomer" method="post" >
                                <input type="hidden" value="${cart.id}" name="productId"/>
                                <button type="submit" class="btn btn-outline-danger">Delete</button>
                            </form>
                        </div>
                </div>
            </div>
        </div>

    </c:forEach>
    <div>
        <h4>Total Price: <span id="totalPrice">0.00</span>$</h4> <!-- Hiển thị tổng tiền -->
    </div>
    </tbody>
</table>

<form  action="i-store?action=pay" method="post" >
    <div>
        <button style="display: block;margin-left: auto; background: #2a8e2a" type="button" class="btn btn-primary"
                data-bs-toggle="modal" data-bs-target="#exampleModal">
            <span class="material-symbols-outlined">payments<p>Pay</p></span>
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Payment Confirmation</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="paymentForm" action="#" method="post" novalidate>
                            <div class="mb-3">
                                <label for="exampleInputName" class="form-label">First and last name</label>
                                <input type="text" name="name" class="form-control" id="exampleInputName" aria-describedby="nameHelp" required>
                                <div id="nameHelp" class="form-text">We'll never share your info with anyone else.</div>
                                <div class="invalid-feedback">Please enter your name.</div>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPhone" class="form-label">Phone number</label>
                                <input type="tel" name="phone" class="form-control" id="exampleInputPhone" pattern="[0-9]{10}" required>
                                <div class="invalid-feedback">Please enter a valid 10-digit phone number.</div>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputAddress" class="form-label">Delivery address</label>
                                <input type="text" name="address" class="form-control" id="exampleInputAddress" required>
                                <div class="invalid-feedback">Please enter your delivery address.</div>
                            </div>
                            <div class="dropdown mb-3">
                                <a id="dropdownMenuLink" name="method" class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Payment methods
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#" onclick="selectPaymentMethod('Domestic bank card')" style="color: black">Domestic bank card</a></li>
                                    <li><a class="dropdown-item" href="#" onclick="selectPaymentMethod('Visa card')" style="color: black">Visa card</a></li>
                                </ul>
                            </div>
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
                                <label class="form-check-label" for="exampleCheck1">Agree to store policies</label>
                                <div class="invalid-feedback">You must agree to the store policies.</div>
                            </div>
                            <div><h4>Total price: <span id="totalPrice1">$</span></h4></div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">
                                    Complete Payment
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <span class="material-symbols-outlined">
</span>
    </div>
</form>
<jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

</html>