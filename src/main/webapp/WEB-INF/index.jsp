<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/account.css">
<title>Insert title here</title>
</head>
<body>
	<header>
        <a href="index.html"><img src="images/logo.png" alt="logo" class="logo"></a>
        <nav>
            <ul class="nav-area">
                <li><a href="index.html">Home</a></li>
                <li><a href="browse.html">Browse</a></li>
                <li><a href="account.html">Account</a></li>
                <li>
                    <input class="search-bar" placeholder="Search" type="text"></input>
                    <button>SEARCH</button>
                </li>
            </ul>
        </nav>
        <a href="login_reg.html" class="btn-area">Login</a>
    </header>
    <div id="account_info">
        <div id="left_container">
            <h1>My Account</h1>
            <div id="wish_list">
                <div id="top_box">
                    <h1>Wish List</h1>
                </div>
            </div>
        </div>
        <div id="right_container">
            <div id="account_buttons">
                <img src="images/download.jfif" alt="profile picture">
                <h3>Erick Molina</h3>
                <a class="user_button" href="#">Switch User</a>
                <a class="user_button" href="$">Log Out</a>
                <a class="user_button" href="!">Delete Account</a>
            </div>
            <div id="logo_name">
                <img src="images/logo.png" alt="logo">
                <h1>Deal Bois</h1>
            </div>
        </div>
    </div>
</body>
</html>