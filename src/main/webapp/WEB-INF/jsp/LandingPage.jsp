<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
    <title>Music Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="menu-bar">
        <div class="container">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"><img src="../img/kids-2321161_960_720.webp"/></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ml-auto text-right">
                            <li class="nav-item active">
                                <a class="nav-link active" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Menu.html">(Insert Here)</a>
                            </li>
                            <li class="nav-item">
                               <a class="nav-link" href="Contact.html">(Insert Here)</a><!--  nav bar links -->

                            </li>

                            
                    </ul>
                </div>
        </div>
        </nav>

    </div>
    </div>
    
<div id="mySidebar" class="sidebar">
<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
 <h5>(insert shopping cart table code here</h5>
</div>

<div id="main">
  <button class="openbtn" onclick="openNav()"><i class="bi bi-cart2"></i></button>  
</div>

<script>
function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
    

    <div class="container banner text-center">
        <br>
        <div class="row">
            <div class="col-md-6">
                <br>
                <img src="img/vinyl-records-945396_960_720.jpg">
            </div>
            <div class="col-md-6">
                <div class="info">
                    <h1>Open Since blah blah blah</h1>
                    <br>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    </p>
                    <br>
                    <a href="#">View Music</a>
                    <a href="login.jsp" class="second-btn">Sign In</a>

                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3 footer-widget">
            <i class="fa fa-phone"></i>
            <div class="footer-text">
                <h5>0 123-4567</h5>
                <p>Ming Diner</p>
            </div>
        </div>
        <div class="col-md-3 footer-widget">
            <i class="fa fa-clock-o"></i>
            <div class="footer-text">
                <h5>Monday - Friday</h5>
                <p>Ming Diner</p>
            </div>
        </div>
        <div class="col-md-3 footer-widget">
            <i class="fa fa-map-marker"></i>
            <div class="footer-text">
                <h5>123 Sesame Street.</h5>
                <p>Ming Diner</p>
            </div>
        </div>
        <div class="col-md-3 footer-widget">
            <div class="social-icons">
                <h5>FOLLOW US ON</h5>
                <i class="fa fa-facebook"></i>
                <i class="fa fa-twitter"></i>
                <i class="fa fa-instagram"></i>
            </div>
        </div>
    </div>


</body>

</html>