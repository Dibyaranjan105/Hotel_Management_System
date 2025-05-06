<%@ page import="java.util.*, UserModel.UserModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registered Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3;
            text-align: center;
        }
        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
            background-color: #fff;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 12px;
        }
        th {
            background-color: #28a745;
            color: white;
        }
        h2 {
            color: #333;
        }
    </style>
</head>
<body>
    <h2>Registered Users</h2>
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Phone Number</th>
            <th>Email</th>
            <th>Age</th>
            <th>Gender</th>
        </tr>
        <%
            Object obj = request.getAttribute("userList");
            if (obj instanceof List<?>) {
                List<?> list = (List<?>) obj;
                for (Object item : list) {
                    if (item instanceof UserModel) {
                        UserModel user = (UserModel) item;
        %>
        <tr>
            <td><%= user.getFirstname() %></td>
            <td><%= user.getLastname() %></td>
            <td><%= user.getPhonenumber() %></td>
            <td><%= user.getEmail() %></td>
            <td><%= user.getAge() %></td>
            <td><%= user.getGender() %></td>
        </tr>
        <%
                    }
                }
            } else {
        %>
        <tr><td colspan="6">No registered users found.</td></tr>
        <%
            }
        %>
    </table>
</body>
</html>
