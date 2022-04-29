<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Item</title>
    <link rel="stylesheet" href="/css/browse.css">
</head>
<body>
    <header>
       <a href="/"><img src="/img/logo1.jpg" alt="logo" class="logo"></a>
        <nav>
            <ul class="nav-area">
                <li><a href="/">Home</a></li>
                <li><a href="/browse">Browse</a></li>
                <li><a href="/account">Account</a></li>
                <li>
                    <input class="search-bar" placeholder="Search" type="text"></input>
                    <button>SEARCH</button>
                </li>
            </ul>
        </nav>
        <a href="login_reg.html" class="btn-area">Login</a>
    </header>
    <div id="main_content">
    
	 <div class="body-box">
            <h2> <c:out value="${user.firstName }"/></h2>  
		    <c:forEach var="product" items="${products}">
		        <div class="item_list">
		            <p class ="last-p"><a href="https://www.titan.fitness/racks/power-racks/t-3-series/t-3-series-power-rack/T3-SERIES-RACK.html"><c:out value="${product.name }" /> </a></p>
		            <p> <c:out value="${product.description }" /></p>
		            <p>$<c:out value="${product.price }"></c:out></p>
		    
		        </div>
		    </c:forEach>      
        </div>
    </div>   
</body>
</html>