<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Room Booking</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
        }

        #bg-video {
            position: fixed;
            right: 0;
            bottom: 0;
            min-width: 100%;
            min-height: 100%;
            z-index: -1;
            object-fit: cover;
        }

        .full-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
     
        .form-container {
            background-color: transparent;
            padding: 30px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 0 15px rgba(1, 1, 1, 4);
            width: 350px;
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            text-align: center;
            margin-top: 6px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .form-container button {
            width: 80%;
            padding: 10px;
            background-color: green;
            color: white;
            border: none;
            border-radius: 30px;
            font-size: 16px;
            margin-top: 16px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: red;
        }
    </style>
</head>
<body>
    <video autoplay muted loop id="bg-video">
        <source src="Hotel Background Video.mp4" type="video/mp4">
    </video>

    <div class="full-container">
        <form class="form-container" action="BookingServlet" method="post">
            <input type="text" name="name" placeholder="Enter your full name" required>
            <input type="email" name="email" placeholder="Enter your email" required>
            <input type="text" name="phone" placeholder="Enter your phone number" required>
            <input type="text" name="aadhar" placeholder="Enter your Aadhar number" required>
            <input type="date" name="check_in" required>
            <input type="date" name="check_out" required>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
