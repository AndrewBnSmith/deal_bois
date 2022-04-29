<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <header>
        <a href="index.html"><img src="img/logo1.jpg" alt="logo" class="logo"></a>
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
        <c:if test = "${user != null}">
        	<a href="/logout" class="btn-area2">Log Out</a>
        </c:if>
    <!-- email link -->
    </header>
    <div class="account-body">
        <div class="contact-box">
            <h3>Contact Us! Gym Bois would love to get your feed back!</h3>
        </div>
     	 <div class="email-text">
           <form
		  action="https://formspree.io/f/xeqnplrl"
		  method="POST"
			>
		  <label>
		    Your email:
		    <input type="email" name="email">
		  </label>
		  <label>
		    Your message:
		    <textarea name="message"></textarea>
		  </label>
		  <!-- your other form fields go here -->
		  <button type="submit">Send</button>
		</form>
		</div>
	</div>
    <div class="bottom-box">
        <a href="/affiliatePage" class="btn-area">Become an affiliate</a>
        <a href="/contact" class="btn-area">Contact Us</a>
        <a href="/login" class="btn-area">Register </a>
    </div>
</body>
</html>