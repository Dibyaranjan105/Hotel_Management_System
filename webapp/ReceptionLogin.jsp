<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reception Login</title>
    <style>
        /* Reset default margins and paddings */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Background Video Styling */
        .video-background {
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            overflow: hidden;
            z-index: -1;
        }

        .video-background video {
            min-width: 100%;
            min-height: 100%;
            object-fit: cover;
        }

        /* Centered Login Box */
        .login-container {
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-box {
            background: rgba(255, 255, 255, 0.1);
            border: 2px solid rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(8px);
            padding: 40px;
            border-radius: 30px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
            width: 380px;
            text-align: center;
        }

        .login-box h2 {
            color: white;
            margin-bottom: 40px;
        }

        .login-box label {
            color: black;
            display: block;
            text-align: center;
            margin-bottom: 9px;
        }

        .login-box input[type="text"],
        .login-box input[type="password"] {
            width: 100%;
            padding: 18px;
            margin-bottom: 16px;
            border: none;
            border-radius: 16px;
            text-align: center;
            color: black;
            outline: none;
        }

        .login-box button {
            background-color: #4CAF50;
            color: white;
            border: none;
            width: 140px;
            padding: 12px 20px;
            border-radius: 100px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            transition: 0.3s ease;
        }

        .login-box button:hover {
            background-color: red;
        }

        .error-message {
            color: red;
            margin-top: 10px;
            font-weight: bold;
        }

    </style>
</head>
<body>

    <div class="video-background">
        <video autoplay muted loop>
            <source src="Hotel Background Video.mp4" type="video/mp4">
        </video>
    </div>


    <div class="login-container">
        <div class="login-box">
            <h2>Reception Login</h2>
            <form action="ReceptionLogin" method="post">
                <label for="username"> </label>
                <input type="text" id="username" name="username" placeholder="Enter Username" required>

                <label for="password"> </label>
                <input type="password" id="password" name="password" placeholder="Enter Password" required>

                <button type="submit">Login</button>
            </form>

            <div class="error-message">
                <%= session.getAttribute("failedMsg") != null ? session.getAttribute("failedMsg") : "" %>
                <% session.removeAttribute("failedMsg"); %>
            </div>
        </div>
    </div>

</body>
</html>
