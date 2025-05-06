<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
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
            filter: brightness(0.5);
        }

        /* General form container styling */
        .form-container {
            width: 250px;
            margin: 70px auto;
            margin-top: 20px;
            padding: 50px;
            background-color: transparent;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            font-family: 'Arial', sans-serif;
            z-index: 1;
            position: relative;
        }

        /* Styling the form inputs, selects, and buttons */
        form {
            display: flex;
            flex-direction: column;
        }

        h2 {
           color: white;
           background-color: black;
           padding: 11px 6px;
           width:245px;
           margin-bottom: 12px;
           text-align: center;
        }

        .input-box {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        input[type="email"] {
            padding: 10px 10px 10px 20px;
            margin-top: 20px;
            border-radius: 10px;
            border: 1px solid #ccc;
            text-align: center;
            font-size: 16px;
            outline: none;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
            width: 100%;
        }

        button[type="submit"] {
            margin-top: 30px;
            padding: 10px 20px;
            background-color: #4CAF50;
            width: 180px;
            color: white;
            border: none;
            border-radius: 60px;
            font-size: 15px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button[type="submit"]:hover {
            background-color: red;
        }

        /* Link styling */
        .links {
            text-align: center;
            margin-top: 20px;
            font-size: 12px;
            display: flex;
            justify-content: center;
            gap: 28px;
        }

        .links a {
            padding: 10px 20px;
            background-color: #c1fdc1;
            color: #2C2D2D;
            border-radius: 40px;
            text-decoration: none;
            font-weight: bold;
        }

        .links a:hover {
            background-color: #ff9999;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .form-container {
                width: 90%;
                margin: 50px auto;
            }

            label,
            input,
            button {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <div class="video-background">
        <video autoplay muted loop id="bg-video">
            <source src="Hotel Background Video.mp4" type="video/mp4">
        </video>
    </div>

    <div class="form-container">
        <form action="ForgotPasswordServlet" method="post">
            <h2>Forgot Password</h2>
            <div class="input-box">
                <input type="email" id="email" name="email" placeholder="Enter your registered email" required>
            </div>
            <center><button type="submit">Send Reset Link</button></center>
            <div class="links">
                <a href="Login.jsp">Back to Login</a>
            </div>
        </form>
    </div>

</body>
</html>

