<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="AdminModel.pk.AdminModel" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Update Result</title>
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
        <h2>
            <%= request.getAttribute("message") != null ? request.getAttribute("message") : "No message!" %>
        </h2>

        <%
            AdminModel admin = (AdminModel) request.getAttribute("admin");
            if (admin != null) {
        %>
            <p><strong>First Name:</strong> <%= admin.getFirstname() %></p>
            <p><strong>Last Name:</strong> <%= admin.getLastname() %></p>
            <p><strong>Phone Number:</strong> <%= admin.getPhonenumber() %></p>
            <p><strong>Email:</strong> <%= admin.getEmail() %></p>
        <%
            } else {
        %>
            <p style="color:red;">No admin details available to display.</p>
        <%
            }
        %>

        <a class="back-link" href="AdminUpdate.jsp">Go Back</a>
    </div>

</body>
</html>
