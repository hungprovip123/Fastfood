<%-- 
    Document   : verifyEmail.jsp
    Created on : Oct 7, 2024, 5:32:30 PM
    Author     : tvhun
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Verify Email</title>
    </head>
    <body>
        <form action="VerifyEmail" method="post">
            <h2>Verify Your Email</h2>
            <label for="verificationCode">Enter Verification Code:</label>
            <input type="text" id="verificationCode" name="verificationCode" required><br>
            <button type="submit">Verify</button>
        </form>
    </body>
</html>
