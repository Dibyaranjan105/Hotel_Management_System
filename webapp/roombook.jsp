<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Room Book</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/css/lightbox.min.css" rel="stylesheet">
<style>
    /* Reset and global styles */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        background-color: #f4f4f4;
        color: #333;
    }

    .container {
        text-align: center;
        margin: 50px auto;
        max-width: 1200px;
    }

    .container h1 {
        font-size: 2.5em;
        margin-bottom: 30px;
        color: #003366;
        border-bottom: 3px solid #ffd700;
        display: inline-block;
        padding-bottom: 5px;
    }

    .room-cards {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 50px;
        margin-top: 20px;
    }

    .room-card {
        background-color: #fff;
        width: 250px;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 5px 15px rgba(0,0,0,0.15);
        transition: transform 0.3s ease;
    }

    .room-card:hover {
        transform: translateY(-5px);
    }

    .room-card img {
        width: 100%;
        height: 160px;
        object-fit: cover;
    }

    .room-title {
        font-size: 1.3em;
        color: #fff;
        background-color: #003366;
        padding: 10px;
        text-align: center;
    }

    .rating, .price {
        padding: 10px 15px;
    }

    .rating {
        color: #f8c324;
        font-size: 1.1em;
    }

    .price {
        color: #d32f2f;
        font-weight: bold;
        font-size: 1.3em;
    }

    .book-now {
        background-color: #ffd600;
        color: #003366;
        padding: 10px 20px;
        margin: 10px 15px;
        display: inline-block;
        border-radius: 5px;
        font-weight: bold;
        text-decoration: none;
        transition: background-color 0.3s;
    }

    .book-now:hover {
        background-color: #ffc107;
    }

    /* Gallery Section */
    #gallery {
        background-color: #fff;
        padding: 60px 20px;
        margin-top: 50px;
    }

    .title-black-wthree {
        font-size: 2.2em;
        margin-bottom: 30px;
        color: #003366;
        border-bottom: 2px solid #ffd700;
        display: inline-block;
        padding-bottom: 8px;
    }

    .gallery-container {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
        gap: 20px;
        padding: 0 20px;
    }

    .gallery-item {
        overflow: hidden;
        border-radius: 8px;
        transition: transform 0.3s ease;
    }

    .gallery-item img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.3s ease;
        border-radius: 8px;
    }

    .gallery-item:hover img {
        transform: scale(1.08);
    }

    /* Reservation Bar */
    .reservation-bar {
        background-color: #ffd700;
        color: #003366;
        text-align: center;
        padding: 25px;
        font-size: 1.8em;
        font-weight: bold;
        display: block;
        text-decoration: none;
        transition: background-color 0.3s;
    }

    .reservation-bar:hover {
        background-color: #ffc107;
        text-decoration: none;
    }
</style>
</head>
<body>

<!-- Rooms Section -->
<div class="container">
    <h1>Rooms and Rates</h1>
    <div class="room-cards">
        <div class="room-card">
            <img src="r1.jpg" alt="Deluxe Room">
            <div class="room-title">Deluxe Room</div>
            <div class="rating">★★★★☆</div>
            <div class="price">Rs. 2000</div>
            <a href="RoomBooking.jsp" class="book-now">Book Now</a>
        </div>

        <div class="room-card">
            <img src="r2.jpg" alt="Luxury Room">
            <div class="room-title">Luxury Room</div>
            <div class="rating">★★★★☆</div>
            <div class="price">Rs. 1800</div>
            <a href="RoomBooking.jsp" class="book-now">Book Now</a>
        </div>

        <div class="room-card">
            <img src="r3.jpg" alt="Guest House">
            <div class="room-title">Guest House</div>
            <div class="rating">★★★☆☆</div>
            <div class="price">Rs. 1500</div>
            <a href="RoomBooking.jsp" class="book-now">Book Now</a>
        </div>

        <div class="room-card">
            <img src="r4.jpg" alt="Single Room">
            <div class="room-title">Single Room</div>
            <div class="rating">★★☆☆☆</div>
            <div class="price">Rs. 1200</div>
            <a href="RoomBooking.jsp" class="book-now">Book Now</a>
        </div>

        <!-- Additional copies of Single Room -->
        <% for(int i=0; i<6; i++) { %>
        <div class="room-card">
            <img src="r4.jpg" alt="Single Room">
            <div class="room-title">Single Room</div>
            <div class="rating">★★☆☆☆</div>
            <div class="price">Rs. 1000</div>
            <a href="RoomBooking.jsp" class="book-now">Book Now</a>
        </div>
        <% } %>
    </div>
</div>

<!-- Gallery Section -->
<section class="portfolio-w3ls" id="gallery">
    <h3 class="title-black-wthree">Our Gallery</h3>
    <div class="gallery-container">
        <% for(int i=1; i<=10; i++) { %>
            <div class="gallery-item">
                <a href="g<%=i%>.jpg" data-lightbox="gallery" data-title="Gallery Image <%=i%>">
                    <img src="g<%=i%>.jpg" alt="Gallery Image <%=i%>">
                </a>
            </div>
        <% } %>
    </div>
</section>

<!-- Room Reservation Link -->
<a href="roombook.jsp" class="reservation-bar">Room Reservation</a>

<!-- Lightbox Script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/js/lightbox.min.js"></script>

</body>
</html>
