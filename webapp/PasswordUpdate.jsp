<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Password Updated</title>
    <style>
        /* Video background settings */
        .video-background {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            z-index: -1;
        }

        #bg-video {
            min-width: 100%;
            min-height: 100%;
            object-fit: cover;
        }

        /* Form container styling */
        .form-container {
            width: 30%;
            margin: 80px auto;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 10px;
            font-family: 'Arial', sans-serif;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        h2 {
            color: green;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .info {
            font-size: 18px;
            margin: 15px 0;
            color: #333;
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 25px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            transition: background-color 0.3s ease;
        }

        .back-link:hover {
            background-color: red;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .form-container {
                width: 90%;
            }

            h2, .info, .back-link {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

    <!-- Background video -->
    <div class="video-background">
        <video autoplay muted loop id="bg-video">
            <source src="Hotel Background Video.mp4" type="video/mp4">
        </video>
    </div>

    <!-- Form content -->
    <div class="form-container">
        <h2>${message}</h2>

        <div class="info">
            <strong>Email:</strong> ${email} <br>
            <strong>New Password:</strong> ${password}
        </div>

        <a href="Login.jsp" class="back-link">Go to Login</a>
    </div>

</body>
</html>
