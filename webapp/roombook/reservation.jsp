<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Room Reservation</title>

<!-- CSS for styling -->
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
    }

    #wrapper {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .panel {
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 60%;
        padding: 20px;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        font-size: 16px;
        margin-bottom: 5px;
    }

    .form-control {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .btn-primary {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .btn-primary:hover {
        background-color: #0056b3;
    }

    .well {
        background-color: #f9f9f9;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        margin-top: 20px;
    }

    .well h4 {
        font-size: 18px;
        color: #333;
    }

    /* Styling for the verification box */
    #verification-code-box {
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: #e9ecef;
        padding: 15px;
        border-radius: 8px;
        margin-top: 10px;
    }

    #verification-code {
        font-size: 20px;
        font-weight: bold;
        margin-right: 10px;
    }

    #code-input {
        padding: 5px 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
        margin-right: 10px;
    }

    /* For responsiveness */
    @media (max-width: 768px) {
        #wrapper {
            width: 100%;
            padding: 10px;
        }

        .panel {
            width: 100%;
        }
    }
</style>

<!-- JavaScript for Human Verification -->
<script>
    // Generate a random code when the page loads
    let randomCode = Math.floor(Math.random() * 10000);
    document.addEventListener("DOMContentLoaded", function() {
        document.getElementById("verification-code").textContent = randomCode;
        document.getElementById("hidden-code").value = randomCode;
    });

    // Validate the code when the form is submitted
    function validateCode(event) {
        event.preventDefault(); // Prevent form submission for validation

        // Get the entered code and compare it to the generated one
        const userCode = document.getElementById("code-input").value;
        const generatedCode = document.getElementById("hidden-code").value;

        if (userCode == generatedCode) {
            alert("Your Booking application has been sent.");
            document.forms["form"].submit(); // Submit the form if codes match
        } else {
            alert("Invalid Human Verification Code");
            document.getElementById("code-input").value = ''; // Clear the input for retry
        }
    }
</script>

</head>
<body>
<div id="wrapper">
    <div class="panel">
        <h1>Reservation</h1>

        <form name="form" method="post" action="reservation.jsp" onsubmit="validateCode(event)">
            <div class="form-group">
                <label for="title">Title*</label>
                <select name="title" id="title" class="form-control" required>
                    <option value="" selected></option>
                    <option value="Dr.">Dr.</option>
                    <option value="Miss.">Miss.</option>
                    <option value="Mr.">Mr.</option>
                    <option value="Mrs.">Mrs.</option>
                    <option value="Prof.">Prof.</option>
                </select>
            </div>

            <div class="form-group">
                <label for="fname">First Name</label>
                <input type="text" name="fname" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="lname">Last Name</label>
                <input type="text" name="lname" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="country">Passport Country*</label>
                <select name="country" class="form-control" required>
                    <option value="" selected></option>
                    <option value="Afghanistan">Afghanistan</option>
                    <option value="Albania">Albania</option>
                    <option value="Algeria">Algeria</option>
                    <option value="American Samoa">American Samoa</option>
                    <option value="Andorra">Andorra</option>
                </select>
            </div>

            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="text" name="phone" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="cin">Check-In</label>
                <input type="date" name="cin" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="cout">Check-Out</label>
                <input type="date" name="cout" class="form-control" required>
            </div>

            <!-- Human Verification -->
            <div class="well">
                <h4>Human Verification</h4>
                <div id="verification-code-box">
                    <span id="verification-code"></span> <!-- Display the random code here -->
                    <input type="text" id="code-input" placeholder="Enter the code" required>
                </div>
                <input type="hidden" id="hidden-code" name="verificationCode">
            </div>

            <div class="form-group">
                <input type="submit" value="Submit" class="btn-primary">
            </div>
        </form>
    </div>
</div>
</body>
</html>
