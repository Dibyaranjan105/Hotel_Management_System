<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #3498db;
        }

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
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        h2 {
            text-align: center;
            color: white;
            margin-top: 40px;
            font-size: 36px;
            background-color: red;
            padding: 10px 30px;
            border-radius: 10px;
            display: inline-block;
        }

        .admin-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 40px;
            margin: 50px auto;
            max-width: 1200px;
        }

        .admin-box {
            background-color: #2c3e50;
            color: white;
            border-radius: 20px;
            width: 300px;
            height: 230px;
            text-align: center;
            padding: 30px 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        .admin-box:hover {
            transform: translateY(-5px);
        }

        .admin-box i {
            font-size: 36px;
            color: #f1c40f;
            margin-bottom: 15px;
        }

        .admin-box h3 {
            color: #f1c40f;
            margin-bottom: 5px;
            font-size: 22px;
        }

        .admin-box p {
            color: #ecf0f1;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .admin-box a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #e74c3c;
            color: white;
            font-weight: bold;
            text-decoration: none;
            border-radius: 30px;
            transition: background-color 0.3s;
        }

        .admin-box a:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>

    <div class="video-background">
        <video autoplay muted loop id="bg-video">
            <source src="images/video.mp4" type="video/mp4">
        </video>
    </div>

    <div class="admin-container">

        <div class="admin-box">
            <i class="fas fa-user-plus"></i>
            <h3>Add Admin</h3>
            <p>Register a new admin</p>
            <a href="Register.jsp">ADD  ADMIN</a>
        </div>


        <div class="admin-box">
            <i class="fas fa-user-tie"></i>
            <h3>Add Employee</h3>
            <p>Add a new hotel employee</p>
            <a href="AddEmployee.jsp">ADD  EMPLOYEE</a>
        </div>

       
        <div class="admin-box">
            <i class="fas fa-bed"></i>
            <h3>User Details</h3>
            <p>Show User details</p>
            <a href="UserDetails.jsp">USER DETAILS</a>
        </div>

        
        <div class="admin-box">
            <i class="fas fa-user-slash"></i>
            <h3>Delete Admin</h3>
            <p>Remove admin access</p>
            <a href="DeleteAdmin.jsp">DELETE  ADMIN</a>
        </div>

        
        <div class="admin-box">
            <i class="fas fa-user-cog"></i>
            <h3>Update Admin</h3>
            <p>Update admin details</p>
            <a href="AdminUpdate.jsp">UPDATE  ADMIN</a>
        </div>

        
        <div class="admin-box">
            <i class="fas fa-book"></i>
            <h3>Booking Details</h3>
            <p>View all booking information</p>
            <a href="Bookdetails.jsp">BOOKING  DETAILS</a>
        </div>

    </div>

</body>
</html>
