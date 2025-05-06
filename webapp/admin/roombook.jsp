<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Administrator</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
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
                <a class="navbar-brand" href="home.jsp"></a>
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

        <!-- NAV SIDE -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li><a href="home.jsp"><i class="fa fa-dashboard"></i> Status</a></li>
                    <li><a href="messages.jsp"><i class="fa fa-desktop"></i> News Letters</a></li>
                    <li><a class="active-menu" href="roombook.jsp"><i class="fa fa-bar-chart-o"></i> Room Booking</a></li>
                    <li><a href="payment.jsp"><i class="fa fa-qrcode"></i> Payment</a></li>
                    <li><a href="profit.jsp"><i class="fa fa-qrcode"></i> Profit</a></li>
                    <li><a href="logout.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
                </ul>
            </div>
        </nav>

        <!-- PAGE WRAPPER -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">Room Booking</h1>
                    </div>      
                    <div class="col-md-8 col-sm-8">
                        <div class="panel panel-info">
                            <div class="panel-heading">Booking Confirmation</div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr><th>DESCRIPTION</th><th>INFORMATION</th></tr>
                                        <tr><th>Name</th><td><!-- Name Data --></td></tr>
                                        <tr><th>Email</th><td><!-- Email Data --></td></tr>
                                        <tr><th>Nationality</th><td><!-- Nationality Data --></td></tr>
                                        <tr><th>Country</th><td><!-- Country Data --></td></tr>
                                        <tr><th>Phone No</th><td><!-- Phone No Data --></td></tr>
                                        <tr><th>Type Of Room</th><td><!-- Room Type Data --></td></tr>
                                        <tr><th>No Of Room</th><td><!-- Room No Data --></td></tr>
                                        <tr><th>Meal Plan</th><td><!-- Meal Plan Data --></td></tr>
                                        <tr><th>Bedding</th><td><!-- Bedding Data --></td></tr>
                                        <tr><th>Check-in Date</th><td><!-- Check-in Date Data --></td></tr>
                                        <tr><th>Check-out Date</th><td><!-- Check-out Date Data --></td></tr>
                                        <tr><th>No of Days</th><td><!-- Days Data --></td></tr>
                                        <tr><th>Status Level</th><td><!-- Status Level Data --></td></tr>
                                    </table>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <form method="post">
                                    <div class="form-group">
                                        <label>Select Confirmation</label>
                                        <select name="conf" class="form-control">
                                            <option value selected></option>
                                            <option value="Confirm">Confirm</option>
                                        </select>
                                    </div>
                                    <input type="submit" name="co" value="Confirm" class="btn btn-success">
                                </form>
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
    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
    <script src="assets/js/custom-scripts.js"></script>
</body>
</html>
