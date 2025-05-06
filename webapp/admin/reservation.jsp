<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Reservation Swosti Premium Hotel</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li><a href="../index.jsp"><i class="fa fa-home"></i> Homepage</a></li>
                </ul>
            </div>
        </nav>
       
        <div id="page-wrapper">
            <div id="page-inner">
                <h1 class="page-header">Reservation</h1>
                
                <div class="panel panel-primary">
                    <div class="panel-heading">Personal Information</div>
                    <div class="panel-body">
                        <form name="form" method="post" action="reservation.jsp">
                            <div class="form-group">
                                <label>Title*</label>
                                <select name="title" class="form-control" required>
                                    <option value selected></option>
                                    <option value="Dr.">Dr.</option>
                                    <option value="Miss.">Miss.</option>
                                    <option value="Mr.">Mr.</option>
                                    <option value="Mrs.">Mrs.</option>
                                    <option value="Prof.">Prof.</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>First Name</label>
                                <input name="fname" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <input name="lname" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Passport Country*</label>
                                <select name="country" class="form-control" required>
                                    <option value selected></option>
                                    <%
                                    String[] countries = {"Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra"};
                                    for(String value : countries) { %>
                                        <option value="<%= value %>"><%= value %></option>
                                    <% } %>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Phone Number</label>
                                <input name="phone" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Check-In</label>
                                <input name="cin" type="date" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Check-Out</label>
                                <input name="cout" type="date" class="form-control" required>
                            </div>

                            <!-- Human Verification -->
                            <div class="well">
                                <h4>Human Verification</h4>
                                <% long random_code = (long) (Math.random() * 10000); %>
                                <p>Type this code: <b><%= random_code %></b></p>
                                <input type="text" name="code1" title="random code" required />
                                <input type="hidden" name="code" value="<%= random_code %>" />
                                <input type="submit" name="submit" value="Submit" class="btn btn-primary">
                                
                                <% if (request.getParameter("submit") != null) {
                                    try {
                                        int code1 = Integer.parseInt(request.getParameter("code1"));
                                        int code = Integer.parseInt(request.getParameter("code"));
                                        if (code1 != code) { %>
                                            <script>alert('Invalid Human Verification Code'); history.back();</script>
                                        <% } else { %>
                                            <script>alert('Your Booking application has been sent');</script>
                                        <% }
                                    } catch (NumberFormatException e) { %>
                                        <script>alert('Error in code verification input.');</script>
                                    <% }
                                } %>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="assets/js/jquery-1.10.2.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
