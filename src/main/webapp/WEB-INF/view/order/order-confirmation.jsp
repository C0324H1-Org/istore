<%--
  Created by IntelliJ IDEA.
  User: Laptop K1
  Date: 06/07/2024
  Time: 5:16 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Success</title>
    <style>
        /* Reset default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Basic styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .notification {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .notification h2 {
            color: #4caf50;
            margin-bottom: 10px;
        }

        .notification p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .abc {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4caf50;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .abc:hover {
            background-color: #45a049;
        }

    </style>
</head>
<body>
<div class="container">
    <div class="notification">
        <h2>Đặt hàng thành công!</h2>
        <p>Cảm ơn bạn đã đặt hàng của chúng tôi.</p>
        <a href="i-store" class="abc">Quay lại trang chủ</a>
    </div>
</div>
</body>
</html>

