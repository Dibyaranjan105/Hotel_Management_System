<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Room</title>
    
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
            background-color: transparent; /* Increased transparency */
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
            font-family: 'Arial', sans-serif;
        }

        /* Input fields styling */
        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 10px;
            margin: 5px ; 
            text-align: center;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            outline: none;
            background-color: rgba(255, 255, 255, 0.8);
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        select:focus {
            border-color: #FF5722;
            box-shadow: 0 0 5px rgba(255, 87, 34, 0.5); 
        }

        /* Placeholder styling for input fields */
        input::placeholder {
            color: #888;
        }

        /* Submit button styling */
        button.add-room {
            margin-top: 15px; /* Adjusted for closer placement */
            padding: 12px;
            width: 70%;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 30px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button.add-room:hover {
            background-color: red;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            form {
                width: 90%;
            }

            input,
            select,
            button.add-room {
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
        <form action="AddRoom" method="post">
            <label for="roomNumber"></label>
            <input type="text" id="roomNumber" name="roomNumber" placeholder="Enter room number" required> <br>

            <label for="available"></label>
            <select id="available" name="available" required>
                <option value="">Check availability</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>  <br>

            <label for="cleaningStatus"></label>
            <select id="cleaningStatus" name="cleaningStatus" required>
                <option value="">Check cleaning status</option>
                <option value="clean">Clean</option>
                <option value="dirty">Dirty</option>
            </select>  <br>

            <label for="bedType"></label>
            <select id="bedType" name="bedType" onchange="setPrice()" required>
                <option value="">Select bed type</option>
                <option value="single">Single</option>
                <option value="double">Double</option>
                <option value="queen">Queen</option>
                <option value="king">King</option>
            </select>  <br>

            <label for="price"></label>
            <input type="number" id="price" name="price" placeholder="Enter price" required readonly>  <br>
            
            <button type="submit" class="add-room">Add Room</button>
        </form>
    </div>

    <script>
        function setPrice() {
            var bedType = document.getElementById("bedType").value;
            var priceField = document.getElementById("price");

            // Set price based on selected bed type
            if (bedType === "single") {
                priceField.value = "1000";
            } else if (bedType === "double") {
                priceField.value = "1500";
            } else if (bedType === "queen") {
                priceField.value = "2000";
            } else if (bedType === "king") {
                priceField.value = "2500";
            } else {
                priceField.value = "";
            }
        }
    </script>

</body>
</html>
