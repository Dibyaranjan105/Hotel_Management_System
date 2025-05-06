<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="UserModel.UserModel" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Result</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            padding: 60px;
        }

        .message-box {
            background-color: #e6ffe6;
            border: 2px solid #4CAF50;
            padding: 25px;
            border-radius: 12px;
            display: inline-block;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        h2 {
            color: #4CAF50;
            font-size: 26px;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            color: #333;
            margin: 10px 0;
        }

        .back-link {
            margin-top: 20px;
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 50px;
            font-size: 18px;
        }

        .back-link:hover {
            background-color: red;
        }
    </style>
</head>
<body>

    <div class="message-box">
        <h2>Registration Successful!</h2>

        <%
            UserModel user = (UserModel) request.getAttribute("user");
            if (user != null) {
        %>
            <p><strong>First Name:</strong> <%= user.getFirstname() %></p>
            <p><strong>Last Name:</strong> <%= user.getLastname() %></p>
            <p><strong>Phone Number:</strong> <%= user.getPhonenumber() %></p>
            <p><strong>Email:</strong> <%= user.getEmail() %></p>
            <p><strong>Age:</strong> <%= user.getAge() %></p>
            <p><strong>Gender:</strong> <%= user.getGender() %></p>
        <%
            } else {
        %>
            <p style="color:red;">No user details available to display.</p>
        <%
            }
        %>

        <a class="back-link" href="Login.jsp">Go Back</a>
    </div>

</body>
</html>
