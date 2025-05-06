<%@ page import="java.sql.*" errorPage="error.jsp" %>
<%
    // Attempt to get 'user' from the session or request parameters
    String user = (String) session.getAttribute("user");
    if (user == null) {
        user = "Guest"; // Default to "Guest" if not available
    }
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SUNRISE HOTEL</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css" />
    <!-- TABLE STYLES-->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home.jsp"><%= user %> </a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="usersetting.jsp"><i class="fa fa-user fa-fw"></i> User Profile</a></li>
                        <li><a href="settings.jsp"><i class="fa fa-gear fa-fw"></i> Settings</a></li>
                        <li class="divider"></li>
                        <li><a href="logout.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>

        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li><a href="home.jsp"><i class="fa fa-dashboard"></i> Status</a></li>
                    <li><a href="messages.jsp"><i class="fa fa-desktop"></i> News Letters</a></li>
                    <li><a href="roombook.jsp"><i class="fa fa-bar-chart-o"></i>Room Booking</a></li>
                    <li><a class="active-menu" href="payment.jsp"><i class="fa fa-qrcode"></i> Payment</a></li>
                    <li><a href="profit.jsp"><i class="fa fa-qrcode"></i> Profit</a></li>
                    <li><a href="logout.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
                </ul>
            </div>
        </nav>

        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">Payment Details<small> </small></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Room Type</th>
                                                <th>Bed Type</th>
                                                <th>Check In</th>
                                                <th>Check Out</th>
                                                <th>No of Rooms</th>
                                                <th>Meal Type</th>
                                                <th>Room Rent</th>
                                                <th>Bed Rent</th>
                                                <th>Meals</th>
                                                <th>Gr.Total</th>
                                                <th>Print</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% 
                                            // Simulate data fetching and output rows
                                            for (int i = 0; i < 1; i++) { 
                                            %>
                                            <tr>
                                                <td>John Doe</td>
                                                <td>Deluxe</td>
                                                <td>Single</td>
                                                <td>2023-01-01</td>
                                                <td>2023-01-05</td>
                                                <td>2</td>
                                                <td>Full Board</td>
                                                <td>500</td>
                                                <td>50</td>
                                                <td>100</td>
                                                <td>650</td>
                                                <td>
                                                    <a href="print.jsp?pid=<%= i %>">
                                                        <button class="btn btn-primary"><i class="fa fa-print"></i> Print</button>
                                                    </a>
                                                </td>
                                            </tr>
                                            <% } %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- JS Scripts-->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.metisMenu.js"></script>
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
    <script>
        $(document).ready(function () {
            $('#dataTables-example').dataTable();
        });
    </script>
    <script src="assets/js/custom-scripts.js"></script>
</body>
</html>