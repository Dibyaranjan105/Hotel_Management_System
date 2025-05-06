<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #e3f2fd;
            padding: 20px;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            width: 400px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }
        h2 {
            text-align: center;
            color: #2c3e50;
        }
        p {
            font-size: 16px;
            margin: 10px 0;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Booking Confirmed!</h2>
    <p><strong>Name:</strong> ${name}</p>
    <p><strong>Email:</strong> ${email}</p>
    <p><strong>Phone:</strong> ${phone}</p>
    <p><strong>Aadhar:</strong> ${aadhar}</p>
    <p><strong>Check-in Date:</strong> ${checkIn}</p>
    <p><strong>Check-out Date:</strong> ${checkOut}</p>
</div>
</body>
</html>
