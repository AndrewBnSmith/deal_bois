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
    <link rel="stylesheet" href="/css/style.css">
    <title>Login/Register</title>
</head>
<body>
    <header>
        <a href="/index"><img src="/img/logo1.jpg" alt="logo" class="logo"></a>
        <nav>
            <ul class="nav-area">
                <li><a href="/">Home</a></li>
                <li><a href="/browse">Browse</a></li>
               
                <li>
                    <input class="search-bar" type="text"></input>
                    <button>SEARCH</button>
                </li>
            </ul>
        </nav>
        <a href="/login" class="btn-area">Login</a>
    </header>
    <div class="container-login">
      <div class="login">
        <div class="row">
            <div class="col">
                <h1>Register</h1>
                <!-- <p class="text-right"><a href="/">Home</a></p> -->
                <form:form action="/register"  method="post" modelAttribute="newUser">
                  <div class="form-group">
                    <label>First Name</label>                 
                    <form:input class  = "text-box form-control" path="firstName" />
					<form:errors path="firstName" />
                  </div>
                  <div class="form-group">
                    <label>Last Name</label>
                    <form:input class  = "text-box form-control" path="lastName" />
					<form:errors path="lastName" />
                  </div>
                  <div class="form-group">
                    <label>Email</label>
                    <form:input class  = "text-box form-control" path="email" />
					<form:errors path="email" />
                  </div>
                  <div class="form-group">
                    <label>Password</label>
                   <form:input class  = "text-box form-control" path="password" />
					<form:errors path="password" />
                  </div>
                  <div class="form-group">
                    <label>Confirm Password</label>
                     <form:input class  = "text-box form-control" path="confirm" />
					<form:errors path="confirm" />
                  </div>
                  <div class="form-check">
                    <!-- <input type="checkbox" class="form-check-input" id="exampleCheck1"> -->
                    <!-- <label class="form-check-label" for="exampleCheck1">Check me out</label> -->
                  </div>
                  <button type="submit" class="btn btn-primary">Submit</button>
                </form:form>
            </div>
            <div class="col">
                <h1>Login</h1>
                <!-- <p class="text-right"><a href="/">Home</a></p> -->
                <form:form action="/login" method="post" modelAttribute="newLogin">
                  <div class="form-group">
                    <label>Email</label>
                    <form:input class  = "text-box form-control" path="email" />
					<form:errors path="email" />
                  </div>
                  <div class="form-group">
                    <label>Password</label>
                   <form:input class  = "text-box form-control" path="password" />
					<form:errors path="password" />
                  </div>
                  <div class="form-check">
                    <!-- <input type="checkbox" class="form-check-input" id="exampleCheck1"> -->
                    <!-- <label class="form-check-label" for="exampleCheck1">Check me out</label> -->
                  </div>
                  <button type="submit" class="btn btn-primary">Submit</button>
                </form:form>
            </div>
        </div>
      </div>
    </div>
    <div class="bottom-box2">
        <a href="contact.html" class="btn-area">Become an affiliate</a>
        <a href="contact.html" class="btn-area">Contact Us</a>
        <a href="login_reg.html" class="btn-area">Register </a>
    </div>
</body>
</html>