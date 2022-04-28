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
    <title>Gym Bois'</title>
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
    <div class= "body-title"><h3>Gym Bois' Deals</h3></div>
        <!--image row start-->
        <div class="row">
          <!--image card start-->
          <div class="image">
            <img class="img" src="static/home-gym-setup.jpg" alt="">
            <div class="details">
              <h2>Fitness Equipment</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
              <div class="more">
                <a href="#" class="read-more">View <span>Deals</span></a>
              </div>
            </div>
          </div>
          <!--image card end-->
          <!--image card start-->
          <div class="image">
            <img class="img2" src="static/training.jpg" alt="">
            <div class="details">
              <h2>Training Programs</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
              <div class="more">
                <a href="#" class="read-more">View <span>Deals</span></a>
              </div>
            </div>
          </div>
          <!--image card end-->
          <!--image card start-->
          <div class="image">
            <img class="img3" src="static/alpha-brain.jpg" alt="">
            <div class="details">
              <h2>Supplements</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
              <div class="more">
                <a href="#" class="read-more">View <span>Deals</span></a>
              </div>
            </div>
          </div>
          <!--image card end-->
        </div>
        <!--image row end-->
        <!--image row start-->
        <div class="row">
          <!--image card start-->
          <div class="image">
            <img class="img4" src="static/womens.jpg" alt="">
            <div class="details">
              <h2>Women's Apparel</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
              <div class="more">
                <a href="#" class="read-more">View <span>Deals</span></a>
              </div>
            </div>
          </div>
          <!--image card end-->
          <!--image card start-->
          <div class="image">
            <img class="img5" src="static/gymgear.jpg" alt="">
            <div class="details">
              <h2>GYM GEAR</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
              <div class="more">
                <a href="#" class="read-more">View <span>Deals</span></a>
              </div>
            </div>
          </div>
          <!--image card end-->
          <!--image card start-->
          <div class="image">
            <img class="img6" src="static/mens.jpg" alt="">
            <div class="details">
              <h2>Men's Apparel</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
              <div class="more">
                <a href="#" class="read-more">View <span>Deals</span></a>
              </div>
            </div>
          </div>
          <!--image card end-->
        </div>
        <!--image row end-->
      </div>
      <!--image card layout end-->
    <div class="bottom-box">
        <a href="contact.html" class="btn-area">Become an affiliate</a>
        <a href="contact.html" class="btn-area">Contact Us</a>
        <a href="login_reg.html" class="btn-area">Register </a>
    </div>
      <!-- email link -->
        <!-- <form 
          action="https://formspree.io/f/moqrplqv" method="POST">
            <label class = "email">
                Your email: <input type="email" name="email">
            </label>
            <label class= "email">
                Your message:<textarea name="message"></textarea>
            </label>
          <button type="submit">Send</button>
        </form>  -->
        <!-- icons -->
        <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"> -->
        <!-- <div class="icon-links">
            <a href="#"><i class="fas fa-heart"></i></a>
            <a href="#"><i class="fas fa-eye"></i></a>
            <a href="#"><i class="fas fa-paperclip"></i></a>
          </div> -->
    
</body>
</html>