<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Deleted</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            text-align: center;
            margin-top: 100px;
            background-color: #f9f9f9;
        }

        .success-message {
            font-size: 24px;
            color: green;
            padding: 20px;
            border: 2px solid #4CAF50;
            display: inline-block;
            border-radius: 10px;
            background-color: #e8f5e9;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        .admin-details {
            margin-top: 20px;
            font-size: 18px;
            color: #333;
        }

        .home-link {
            display: block;
            margin-top: 30px;
            font-size: 18px;
            color: #007BFF;
            text-decoration: none;
        }

        .home-link:hover {
            text-decoration: underline;
            color:red;
        }
    </style>
</head>
<body>

    <div class="success-message">
        ✅ Admin deleted successfully!
    </div>

    <div class="admin-details">
        <p><strong>First Name:</strong> <%= request.getAttribute("firstname") %></p>
        <p><strong>Last Name:</strong> <%= request.getAttribute("lastname") %></p>
        <p><strong>Email:</strong> <%= request.getAttribute("email") %></p>
    </div>

    <a class="home-link" href="AdminPage.jsp">Go back to Admin Dashboard</a>

</body>
</html>
