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
    <link rel="stylesheet" href="css/account.css">
</head>
<body>
    <header>
        <a href="/index"><img src="img/logo1.jpg" alt="logo" class="logo"></a>
        <nav>
            <ul class="nav-area">
                <li><a href="/index">Home</a></li>
                <li><a href="/browse">Browse</a></li>
                <li><a href="/account">Account</a></li>
                <li>
                    <input class="search-bar" type="text"></input>
                    <button>SEARCH</button>
                </li>
            </ul>
        </nav>
        <a href="/logout" class="btn-area2">Log Out</a>
    </header>
    <div class="account-body">
        <div class="body-box">
            <h2>Welcome <c:out value="${user.firstName }"/></h2> 
            <h2>My Wish List</h2> 
		    <c:forEach var="product" items="${products}">
		        <div class="item_list">
		            <p class ="last-p"><a href="https://www.titan.fitness/racks/power-racks/t-3-series/t-3-series-power-rack/T3-SERIES-RACK.html"><c:out value="${product.name }" /> </a></p>
		            <p>$<c:out value="${product.price }"></c:out></p>
		            <p> <c:out value="${product.description }" /></p>
		        </div>
		    </c:forEach>      
        </div>
  
    </div>
    <div class="bottom-box">
        <a href="/affiliatePage" class="btn-area">Become an affiliate</a>
        <a href="/contact" class="btn-area">Contact Us</a>
        <a href="/index" class="btn-area">Delete Account </a>
    </div>
</body>
</html>