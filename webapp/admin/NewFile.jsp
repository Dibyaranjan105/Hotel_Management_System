<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reception Login</title>
    <style>
        /* General reset */
        *{
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        
        /* Background and container styling */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #1f3c70, #1b2d54);
        }

        .login-container {
            width: 400px;
            padding: 20px;
            background-color: #1e2a38;
            border-radius: 8px;
            color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Title and labels */
        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #f47920;
        }

        .login-container label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
            color: #f47920;
        }

        /* Input fields */
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 4px;
            border: none;
            outline: none;
            background-color: #2b3e50;
            color: #fff;
        }

        /* Buttons */
        .login-container .btn {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            margin-top: 15px;
        }

        .btn-login {
            background-color: #0a73ed;
            color: #fff;
        }

        .btn-register {
            background-color: #28a745;
            color: #fff;
        }

        /* Additional links */
        .login-container .forgot-password,
        .login-container .register-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #f47920;
            font-size: 0.9em;
            text-decoration: none;
        }

        .login-container .forgot-password:hover,
        .login-container .register-link:hover {
            text-decoration: underline;
        }

        /* Divider */
        .divider {
            display: flex;
            align-items: center;
            color: #f47920;
            margin: 20px 0;
        }

        .divider::before,
        .divider::after {
            content: "";
            flex: 1;
            height: 1px;
            background: #f47920;
            margin: 0 10px;
        }

        /* Help Button */
        .help-btn {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #1e2a38;
            color: #f47920;
            padding: 10px;
            border-radius: 4px;
            font-size: 0.9em;
            margin-top: 15px;
            text-decoration: none;
            font-weight: bold;
        }
        
        .help-btn:hover {
            background-color: #2b3e50;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Reception Login</h2>
    <form action="Receptionlogin" method="post">
    
        <label for="Reception ID">Reception Id:</label>
        <input type="text" id="Reception ID" name="ReceptionID" placeholder="Enter your ReceptionID" required>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter your Name" required>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>

        <button type="submit" class="btn btn-login">Register Login</button>

        <button type="button" class="btn btn-register" onclick="window.location.href='register.jsp'">Register</button>
    </form>

    <a href="forgotPassword.jsp" class="forgot-password">Forgot Password?</a>
    <a href="help.jsp" class="help-btn">Help</a>
</div>
</body>
</html>
