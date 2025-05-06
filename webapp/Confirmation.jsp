<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h2>Confirm Booking</h2>
<p>Guest Name: ${name}</p>
<p>Room Type: ${roomType}</p>
<p>Check-in: ${checkin}</p>
<p>Check-out: ${checkout}</p>
<form action="ConfirmBookingServlet" method="post">
    <input type="hidden" name="roomType" value="${roomType}">
    <input type="submit" value="Confirm Booking">
</form>


</body>
</html>