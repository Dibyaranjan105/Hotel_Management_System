<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Room Book</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/css/lightbox.min.css" rel="stylesheet">
<style>
  /*room price and book */
          /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        /* Container styling */
        .container {
            text-align: center;
            margin: 30px;
        }

        /* Title styling */
        .container h1 {
            font-size: 2em;
            color: #333;
            margin-bottom: 20px;
        }

        /* Room cards layout */
        .room-cards {
            display: flex;
            justify-content: center;
            gap: 15px;
            flex-wrap: wrap;
        }

        /* Individual room card styling */
        .room-card {
            width: 220px;
            border: 1px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            text-align: left;
            background-color: #fff;
        }

        /* Room image styling */
        .room-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
        }

        /* Room title styling */
        .room-title {
            font-size: 1.2em;
            color: #fff;
            background-color: #003366;
            padding: 8px;
            text-align: center;
        }

        /* Rating stars styling */
        .rating {
            color: #f8c324;
            padding: 10px 15px;
        }

        /* Price styling */
        .price {
            font-size: 1.5em;
            color: #d32f2f;
            padding: 10px 15px;
            display: inline-block;
        }

        /* Book Now button styling */
        .book-now {
            display: inline-block;
            background-color: #ffd600;
            color: #333;
            padding: 8px 20px;
            border-radius: 4px;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            margin-left: 15px;
        }

        .book-now:hover {
            background-color: #ffc107;
        }
        
      <style>
  body {
    font-family: Arial, sans-serif;
  }
  
  #gallery {
    text-align: center;
    padding: 50px 20px;
  }
  
  .title-black-wthree {
    font-size: 2em;
    color: #333;
    margin-bottom: 20px;
  }

  .gallery-container {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 15px;
    padding: 0 20px;
  }

  .gallery-item {
    overflow: hidden;
    position: relative;
  }
  
  .gallery-item img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.3s ease;
    border-radius: 8px;
  }

  .gallery-item:hover img {
    transform: scale(1.05);
  }
       /* Styling for the Room Reservation Bar */
        .reservation-bar {
            background-color: #FFD700; /* Yellow background color */
            color: white;
            text-align: center;
            padding: 30px 0; /* Adjust height */
            font-size: 2em;
            font-weight: bold;
            font-family: Arial, sans-serif;
            cursor: pointer;
            text-decoration: none;
            display: block;
        }

        /* Remove link styling on hover */
        .reservation-bar:hover {
            text-decoration: none;
        }
</style>

</head>
<body>

 <div class="container">
 
        <h1>Rooms and Rates</h1>

        <!-- Room cards container -->
        <div class="room-cards">
            <!-- Room card example -->
            <div class="room-card">
                <img src="r1.jpg" alt="Deluxe Room">
                <div class="room-title">Deluxe Room</div>
                <div class="rating">★★★★☆</div>
                <div class="price">Rs.2000</div>
                <a href="*" class="book-now">Book Now</a>
            </div>

            <div class="room-card">
                <img src="r2.jpg" alt="Luxury Room">
                <div class="room-title">Luxury Room</div>
                <div class="rating">★★★★☆</div>
                <div class="price">Rs.1800 </div>
                 <a href="*" class="book-now">Book Now</a>
            </div>

            <div class="room-card">
                <img src="r3.jpg" alt="Guest House">
                <div class="room-title">Guest House</div>
                <div class="rating">★★★☆☆</div>
                <div class="price">Rs. 1500</div>
                <a href="*" class="book-now">Book Now</a>
            </div>

            <div class="room-card">
                <img src="r4.jpg" alt="Single Room">
                <div class="room-title">Single Room</div>
                <div class="rating">★★☆☆☆</div>
                <div class="price">Rs. 1200</div>
                <a href="*" class="book-now">Book Now</a>
            </div>
            
             <div class="room-card">
                <img src="r4.jpg" alt="Single Room">
                <div class="room-title">Single Room</div>
                <div class="rating">★★☆☆☆</div>
                <div class="price">Rs. 1000</div>
                 <a href="*" class="book-now">Book Now</a>
            </div>
            <div class="room-card">
                <img src="r4.jpg" alt="Single Room">
                <div class="room-title">Single Room</div>
                <div class="rating">★★☆☆☆</div>
                <div class="price">Rs. 1000</div>
                 <a href="*" class="book-now">Book Now</a>
            </div>
            <div class="room-card">
                <img src="r4.jpg" alt="Single Room">
                <div class="room-title">Single Room</div>
                <div class="rating">★★☆☆☆</div>
                <div class="price">Rs. 1000</div>
               <a href="*" class="book-now">Book Now</a>
            </div>
            <div class="room-card">
                <img src="r4.jpg" alt="Single Room">
                <div class="room-title">Single Room</div>
                <div class="rating">★★☆☆☆</div>
                <div class="price">Rs. 1000</div>
               <a href="*" class="book-now">Book Now</a>
            </div>
            <div class="room-card">
                <img src="r4.jpg" alt="Single Room">
                <div class="room-title">Single Room</div>
                <div class="rating">★★☆☆☆</div>
                <div class="price">Rs. 1000</div>
                <a href="*" class="book-now">Book Now</a>
            </div>
            <div class="room-card">
                <img src="r4.jpg" alt="Single Room">
                <div class="room-title">Single Room</div>
                <div class="rating">★★☆☆☆</div>
                <div class="price">Rs. 1000</div>
                <a href="*" class="book-now">Book Now</a>
            </div>
        </div>
    </div>
    
  <!-- Gallery Section -->
<section class="portfolio-w3ls" id="gallery">
  <h3 class="title-w3-agileits title-black-wthree">Our Gallery</h3>
  
  <!-- Gallery Container -->
  <div class="gallery-container">
    <!-- Gallery Items -->
    <div class="gallery-item">
      <a href="g1.jpg" data-lightbox="gallery" data-title="Gallery Image 1">
        <img src="g1.jpg" alt="Gallery Image 1">
      </a>
    </div>
    <div class="gallery-item">
      <a href="g2.jpg" data-lightbox="gallery" data-title="Gallery Image 2">
        <img src="g2.jpg" alt="Gallery Image 2">
      </a>
    </div>
    <div class="gallery-item">
      <a href="g3.jpg" data-lightbox="gallery" data-title="Gallery Image 3">
        <img src="g3.jpg" alt="Gallery Image 3">
      </a>
    </div>
    <div class="gallery-item">
      <a href="g4.jpg" data-lightbox="gallery" data-title="Gallery Image 4">
        <img src="g4.jpg" alt="Gallery Image 4">
      </a>
    </div>
    <div class="gallery-item">
      <a href="g5.jpg" data-lightbox="gallery" data-title="Gallery Image 5">
        <img src="g5.jpg" alt="Gallery Image 5">
      </a>
    </div>
    <div class="gallery-item">
      <a href="g6.jpg" data-lightbox="gallery" data-title="Gallery Image 6">
        <img src="g6.jpg" alt="Gallery Image 6">
      </a>
    </div>
    <div class="gallery-item">
      <a href="g7.jpg" data-lightbox="gallery" data-title="Gallery Image 7">
        <img src="g7.jpg" alt="Gallery Image 7">
      </a>
    </div>
    <div class="gallery-item">
      <a href="g8.jpg" data-lightbox="gallery" data-title="Gallery Image 8">
        <img src="g8.jpg" alt="Gallery Image 8">
      </a>
    </div>
      <div class="gallery-item">
      <a href="g8.jpg" data-lightbox="gallery" data-title="Gallery Image 8">
        <img src="g9.jpg" alt="Gallery Image 9">
      </a>
    </div>
      <div class="gallery-item">
      <a href="g8.jpg" data-lightbox="gallery" data-title="Gallery Image 8">
        <img src="g10.jpg" alt="Gallery Image 10">
      </a>
    </div>
  </div>
</section>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/js/lightbox.min.js"></script>

<!-- Room Reservation Bar -->
<a href="/roombook/reservation.jsp">Room Reservation</a>

</body>
</html>