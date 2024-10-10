<%-- 
    Document   : register
    Created on : Oct 7, 2024, 5:20:32 PM
    Author     : tvhun
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
        <link rel="stylesheet" type="text/css" href="assets/css/register.css">
        <script src="assets/js/register.js"></script>
    </head>
    <body>
        <form name="registerForm" action="Register" method="post" onsubmit="return validateForm()">
            <h2>Register by Form</h2>
            <label for="username">Tên đăng nhập:</label>
            <input type="text" id="username" name="username" required><br>

            <label for="password">Mật Khẩu:</label>
            <input type="password" id="password" name="password" required><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>

            <label for="phone">Số điện thoại:</label>
            <input type="tel" id="phone" name="phone" required><br>

            <label for="address">Địa chỉ:</label>
            <input type="text" id="address" name="address" required><br>

            <button type="submit">Đăng kí</button>
    </body>
</html>