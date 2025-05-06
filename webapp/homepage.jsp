<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>HomePage</title>
<%@include file="Component/allcss.jsp"%>
</head>

<body>
<%@include file="Component/NavBar.jsp"%>
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
	<div class="carousel-indicators">
		<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
		<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
	</div>
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img src="images/1.jpg" class="d-block w-100" alt="...">
			<div class="carousel-caption d-none d-md-block">
				<h5>First Slide Label</h5>
				<p>Some representative placeholder content for the first slide.</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="images/2.jpg" class="d-block w-100" alt="...">
			<div class="carousel-caption d-none d-md-block">
				<h5>Second Slide Label</h5>
				<p>Some representative placeholder content for the second slide.</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="images/3.jpg" class="d-block w-100" alt="...">
			<div class="carousel-caption d-none d-md-block">
				<h5>Third Slide Label</h5>
				<p>Some representative placeholder content for the third slide.</p>
			</div>
		</div>
	</div>
	<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		<span class="visually-hidden">Previous</span>
	</button>
	<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span>
		<span class="visually-hidden">Next</span>
	</button>
</div>

<!-- About Section -->
<div class="about-wthree" id="about">
    <div class="container">
        <div class="row text-center mb-5">
            <h3 class="title-w3-agileits title-black-wthree">About Our Hotel</h3>
        </div>

        <div class="row align-items-center">
            <div class="col-lg-6">
                <p class="about-para-w3ls">
                    Permits the clients globally to reserve the rooms in the hotel at any time. It will provide a unique search and book functionally for the customers anywhere in the world. This project can be used by the clients and the travel agencies who will help them to reserve the hotel of their choice. Sometimes people face problem in reserving the hotels in the places where they want to visit. In that situation, this project can be of great relief to them. The user interface must be simple and easy to understand even by the common man.
                </p>
                <div class="w3ls-info-about text-center p-4 mt-4">
                    <h4>You'll love all the amenities we offer!</h4>
                    <p>100% Sure that you will love it.</p>
                </div>
            </div>

            <!-- Image Section -->
            <div class="col-lg-6">
                <div class="about-images">
                    <img src="images/about.jpg" class="img-fluid main-image mb-3" alt="Hotel Image">
                    <div class="w3l-slider-img">
                        <img src="images/a1.jpg" class="img-fluid secondary-image" alt="Amenities">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Our Services Section -->
<div class="services py-5 text-center" id="services">
    <div class="container">
        <!-- Section Title -->
        <h3 class="mb-5">Our Services</h3>
        
        <!-- Services Row -->
        <div class="row">
            <!-- Service 1: Stay First, Pay After -->
            <div class="col-md-6 mb-4">
                <div class="card h-100 shadow border-0">
                    <div class="card-body">
                        <div class="icon mb-3">
                            <i class="fa fa-credit-card fa-2x text-warning"></i>
                        </div>
                        <h4 class="card-title">Stay First, Pay After!</h4>
                        <p class="card-text">
                            We have the very new and exclusive facility of Pay Later. Pay later facility has some terms and conditions. Please do notice.
                        </p>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-check text-success me-2"></i>Decorated room, proper air conditioned</li>
                            <li><i class="fa fa-check text-success me-2"></i>Private balcony</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Service 2: 24 Hour Restaurant -->
            <div class="col-md-6 mb-4">
                <div class="card h-100 shadow border-0">
                    <div class="card-body">
                        <div class="icon mb-3">
                            <i class="fa fa-clock-o fa-2x text-warning"></i>
                        </div>
                        <h4 class="card-title">24 Hour Restaurant</h4>
                        <p class="card-text">
                            We are providing 24 hours of service without any question. Ask for service and you will be offered with no single question.
                        </p>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-check text-success me-2"></i>24 hours room service</li>
                            <li><i class="fa fa-check text-success me-2"></i>24-hour Concierge service</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Offer Section -->
<div class="offer-section">
    <div class="container">
        <h3>EXPERIENCE A GOOD STAY, ENJOY FANTASTIC OFFERS</h3>
        <p>FIND OUR FRIENDLY WELCOMING RECEPTION</p>
        
        <!-- Offer Cards Row -->
        <div class="row text-center">
            <!-- Card 1 -->
            <div class="col-md-3">
                <div class="card offer-card">
                    <div class="offer-icon">
                        <i class="fa fa-bed"></i>
                    </div>
                    <h4 class="offer-title">MASTER BEDROOMS</h4>
                    <div class="highlight-line"></div>
                </div>
            </div>
            
            <!-- Card 2 -->
            <div class="col-md-3">
                <div class="card offer-card">
                    <div class="offer-icon">
                        <i class="fa fa-building"></i>
                    </div>
                    <h4 class="offer-title">SEA VIEW BALCONY</h4>
                    <div class="highlight-line"></div>
                </div>
            </div>
            
            <!-- Card 3 -->
            <div class="col-md-3">
                <div class="card offer-card">
                    <div class="offer-icon">
                        <i class="fa fa-coffee"></i>
                    </div>
                    <h4 class="offer-title">LARGE CAFE</h4>
                    <div class="highlight-line"></div>
                </div>
            </div>
            
            <!-- Card 4 -->
            <div class="col-md-3">
                <div class="card offer-card">
                    <div class="offer-icon">
                        <i class="fa fa-wifi"></i>
                    </div>
                    <h4 class="offer-title">WIFI COVERAGE</h4>
                    <div class="highlight-line"></div>
                </div>
            </div>
        </div>
    </div>
</div>

  <div class="container">
        <h1>Meet Our Team</h1>

        <!-- Row of circular profile pictures with onclick events -->
        <div class="profile-pics">
            <img src="images/t1.jpg" alt="Dibya Ranjan Giri" onclick="showProfile('Dibya Ranjan Giri', 'Manager', 'Dibya is responsible for managing employees and for planning, marketing, coordinating and administering hotel services such as catering and accommodation facilities.', 'images/t1.jpg')">
            <img src="images/t2.jpg" alt="Soumya Ranjan Mohapatra" onclick="showProfile('Soumya Ranjan Mohapatra', 'Assistant Manager', 'Soumya oversees operations, ensuring a seamless experience for guests.', 'images/t2.jpg')">
            <img src="images/t3.jpg" alt="Kumar Debasish Jena" onclick="showProfile('Kumar Debasish Jena', 'HR Manager', 'Debasish handles recruitment and employee engagement activities.', 'images/t3.jpg')">
            <img src="images/t4.jpg" alt="Ayushman Priyadarshi" onclick="showProfile('Ayushman Priyadarshi', 'Marketing Head', 'Ayushman leads marketing strategies to enhance brand visibility.', 'images/t4.jpg')">
            <img src="images/AkashImage.jpg" alt="Akash Kumar Parida" onclick="showProfile('Akash Kumar Parida', 'Web Head', 'Akash leads marketing strategies to enhance brand visibility.', 'images/AkashImage.jpg')">
        </div>

        <!-- Detailed profile section -->
        <div id="profile-detail" class="profile-detail">
            <img id="profile-img" src="images/t1.jpg" alt="Profile Picture" style="width: 150px; border-radius: 8px; box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);">
            <h2 id="profile-name">Dibya Ranjan Giri</h2>
            <div id="profile-position" class="position">Manager</div>
            <p id="profile-description">Dibya is responsible for managing employees and for planning, marketing, coordinating and administering hotel services such as catering and accommodation facilities.</p>
            
            <!-- Social media icons -->
            <div class="social-icons">
                <a href="#" class="facebook">FaceBook</a>
                <a href="#" class="twitter">Twitter</a>
                <a href="#" class="google">Google</a>
            </div>
        </div>
    </div>
      <section class="contact-section" id="contact">
    <div class="container">
        <div class="contact-info">
            <div>
                <h4>Contact Us</h4>
                <p>Sign Up For Our News Letters</p>
                <form class="contactform" method="post" action="index.jsp">
                    <label>Full Name:</label>
                    <input type="text" name="name" required>
                    <label>Phone Number:</label>
                    <input type="tel" name="phone" required>
                    <label>Email Address:</label>
                    <input type="email" name="email" required>
                    <label>Reason:</label>
                    <input type="text" name="text" required>
                    <input type="submit" value="Send Now">
                </form>
            </div>
            <div>
                <h4>Connect With Us</h4>
                <p><strong>Phone:</strong> +91 9337397810</p>
                <p><strong>Email:</strong> <a href="mailto:info@hotelmanagement.com" style="color: #3498db;">INFO@hotelmanagement.COM</a></p>
                <p><strong>Address:</strong> JayDevBihar, Bhubaneswar, Odisha, India, Pin-751013</p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3074.7905052320443!2d-77.84987248482734!3d39.586871613613056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c9f6a80ccf0661%3A0x7210426c67abc40!2sVirginia+Welcome+Center%2FSafety+Rest+Area!5e0!3m2!1sen!2sin!4v1485760915662" style="width:100%; height:200px; border:none; margin-top:20px;"></iframe>
            </div>
        </div>
    </div>
</section>

<div class="footer">
    <p>© 2024-2025 HotelManagement. All Rights Reserved | Design by <a href="Homepage.jsp" style="color: #3498db;">HotelManagement</a></p>
</div>
</body>
</html>