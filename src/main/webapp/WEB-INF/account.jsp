<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <header>
        <a href="index.html"><img src="/img/logo1.jpg" alt="logo" class="logo"></a>
        <nav>
            <ul class="nav-area">
                <li><a href="index.html">Home</a></li>
                <li><a href="browse.html">Browse</a></li>
                <li><a href="account.html">Account</a></li>
                <li>
                    <input class="search-bar" type="text"></input>
                    <button>SEARCH</button>
                </li>
            </ul>
        </nav>
        <a href="login_reg.html" class="btn-area">Login</a>
    </header>
    <div class="bottom-box">
        <a href="contact.html" class="btn-area">Become an affiliate</a>
        <a href="contact.html" class="btn-area">Contact Us</a>
        <a href="login_reg.html" class="btn-area">Register </a>
    </div>
</body>
</html>