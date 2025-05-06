<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    
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
        width: 300px;
        margin: 70px auto;
        padding: 40px;
        background-color: transparent;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        font-family: 'Arial', sans-serif;
        position: relative;
        z-index: 1;
    }

    /* Styling the form inputs, selects, and buttons */
    form {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }

    h2 {
        color: white;
        background-color: black;
        padding: 12px 25px;
        width:270px;
        margin-bottom: 10px;
        text-align: center;
        font-size: 22px;
    }

    input[type="password"] {
        padding: 10px;
        border-radius: 10px;
        border: 1px solid #ccc;
        text-align:center;
        font-size: 16px;
        outline: none;
        background-color: #fff;
        width: 100%;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    input[type="password"]:focus {
        border-color: #4CAF50;
    }

    button[type="submit"] {
        padding: 12px 25px;
        background-color: #4CAF50;
        width: 60%;
        color: white;
        border: none;
        border-radius: 30px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    button[type="submit"]:hover {
        background-color: red;
    }

    /* Responsive design for smaller screens */
    @media (max-width: 768px) {
        .form-container {
            width: 90%;
            margin: 30px auto;
            padding: 30px;
        }

        h2 {
            font-size: 20px;
        }

        input[type="password"],
        button[type="submit"] {
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
        <form action="ResetPasswordServlet" method="post">
            <h2>Reset Your Password</h2>
            <input type="hidden" name="email" value="${param.email}">
            <label for="password"></label>
            <input type="password" id="password" name="password" placeholder="Enter New Password" required>
            <center> <<button type="submit"> Reset Password </button> </center>
        </form>
    </div>

</body>
</html>
