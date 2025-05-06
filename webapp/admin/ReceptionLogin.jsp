<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reception Login</title>
</head>
<body>
    <h2>Reception Login</h2>
    <form action="ReceptionLogin" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <button type="submit">Login</button>
    </form>
    <p style="color: red;">
        <%= session.getAttribute("failedMsg") != null ? session.getAttribute("failedMsg") : "" %>
        <% session.removeAttribute("failedMsg"); %>
    </p>
</body>
</html>
