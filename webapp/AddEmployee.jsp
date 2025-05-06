<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Employee</title>
    
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
}

/* General form container styling */
.form-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    z-index: 1;
    position: relative;
}

/* Form styling */
form {
    width: 27%;
    padding: 20px;
    background-color: transparent; 
    border-radius: 15px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    display: flex;
    flex-direction: column;
    align-items: center;
    font-family: 'Arial', sans-serif;
}

/* Input fields styling */
input[type="text"],
input[type="tel"],
input[type="email"],
input[type="number"],
select {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    margin-top:5px;
    border-radius: 5px;
    border: 1px solid #ccc;
    font-size: 16px;
    outline: none;
    background-color: #fff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
    text-align: center;
}

input[type="text"]:focus,
input[type="tel"]:focus,
input[type="email"]:focus,
input[type="number"]:focus,

 select:focus {
    border-color: #FF5722; /* New focus border color */
    box-shadow:  #4CAF50; 
}
 
/* Placeholder styling */
input::placeholder {
    color: #888;
}

/* Submit button styling */
button[type="submit"] {
    margin-top: 20px;
    padding: 12px;
    width: 80%;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 30px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s;
}

button[type="submit"]:hover {
    background-color: red;
}

/* Responsive design */
@media (max-width: 768px) {
    form {
        width: 90%;
    }

    input,
    select,
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
        <form action="AddEmployee" method="post">

        <input type="text" id="name" name="name" placeholder="Enter your name" required> 

             <input type="number" id="age" name="age" placeholder="Enter your age" required>  
            
              <select id="gender" name="gender" required>
                <option value="">Select your Gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="Other">Other</option>
            </select>  
            
          <select id="job" name="job" onchange="showSalary()" required>
                <option value="">Select your job</option>
                <option value="housekeeping">Housekeeping</option>
                <option value="kitchen_staff">Kitchen Staff</option>
                <option value="room_service">Room Service</option>
                <option value="waiter">Waiter</option>
                <option value="manager">Manager</option>
                <option value="accountant">Accountant</option>
                <option value="chef">Chef</option>
            </select>  
            
           <input type="text" id="salary" name="salary" placeholder="Salary will be auto-filled" readonly>  
            
            <input type="tel" id="phone" name="phone" placeholder="Enter your phone number"  required>  

            <input type="email" id="email" name="email" placeholder="Enter your email" required>

          <input type="text" id="aadhar" name="aadhar" placeholder="Enter your Aadhar number" required> 
            <button type="submit">Submit</button>
        </form>

        <script>
            function showSalary() {
                var job = document.getElementById("job").value;
                var salaryField = document.getElementById("salary");

                if (job === "housekeeping") {
                    salaryField.value = "20000";
                } else if (job === "kitchen_staff") {
                    salaryField.value = "22000";
                } else if (job === "room_service") {
                    salaryField.value = "21000";
                } else if (job === "waiter") {
                    salaryField.value = "18000";
                } else if (job === "manager") {
                    salaryField.value = "50000";
                } else if (job === "accountant") {
                    salaryField.value = "40000";
                } else if (job === "chef") {
                    salaryField.value = "35000";
                } else {
                    salaryField.value = ""; // Clear salary field if no job is selected
                }
            }
        </script>
    </div>
</body>
</html>
