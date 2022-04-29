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
    <link rel="stylesheet" href="/css/account.css">
</head>
<body>
    <header>
 		<a href="/"><img src="/img/logo1.jpg" alt="logo" class="logo"></a>
        <nav>
            <ul class="nav-area">
                <li><a href="/">Home</a></li>
                <li><a href="/browse">Browse</a></li>
                <li>
                    <input class="search-bar" placeholder="Search" type="text"></input>
                    <button>SEARCH</button>
                </li>
            </ul>
        </nav>
        <a href="/logout" class="btn-area">Logout</a>
    </header>
    <div id="account_info">
        <div id="left_container">
            <h1>My Account</h1>
            <div id="wish_list">
                <div id="top_box">
                    <h1>Wish List</h1>
                </div>
               		 
                    	 <c:forEach var="product" items="${products}">		
                    	 <div class="item_list">								
						 <p><a href="/products/${product.id}"><c:out value="${product.name }"/> </a></p>
						 <p>$<c:out value="${product.price }"></c:out></p>
						 <p><c:out value="${product.description }"/></p>
						 </div>			
						</c:forEach>            
                    
            </div>
        </div>
        <div id="right_container">
            <div id="account_buttons">
                <img src="img/gif.jfif" alt="profile picture">
                <h3>Erick Molina</h3>
                <a class="user_button" href="/logout">Switch User</a>
                <a class="user_button" href="/logout">Log Out</a>
                <a class="user_button" href="/delete_account">Delete Account</a>
            </div>
            <div id="logo_name">
                <img src="img/logo.png" alt="logo">
                <h1>Deal Bois</h1>
            </div>
        </div>
    </div>
</body>
</html>