function checkBookingStatus() {
    fetch('GetBookingStatusServlet?id=USER_BOOKING_ID')
        .then(response => response.json())
        .then(data => {
            document.getElementById("statusDisplay").innerText = "Booking Status: " + data.status;
        })
        .catch(error => console.error('Error:', error));
}

// Call checkBookingStatus every 5 seconds
setInterval(checkBookingStatus, 5000);

/**
 * 
 */