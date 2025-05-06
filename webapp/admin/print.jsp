<%@ page import="java.sql.*" errorPage="error.jsp" %>
<%!
    // Declare all variables used in the JSP
    String title, fname, lname, troom, bed, cin, cout, meal;
    int id, nroom, days, ttot, mepr, btot, fintot;

    // Define variables to prevent compilation errors
    String type_of_room = "Standard"; // Default or sample value for room type
    String type_of_bed = "Queen";     // Default or sample value for bed type
    String type_of_meal = "Breakfast"; // Default or sample value for meal type

    PreparedStatement ps;
    ResultSet rs;
%>

<html>
    <head>
        <meta charset="utf-8">
        <title>Invoice</title>
        <link rel="stylesheet" href="style.css">
        <style>
            /* Your CSS styling here */
        </style>
    </head>
    <body>
        <header>
            <h1>Invoice</h1>
            <address>
                <p>SWOSTI PREMIUM HOTEL,</p>
                <p>JayDevBihar<br>Bhubaneswar,<br>Odisha <br>Pin-751013</p>
                <p>(+91) 93373 97810</p>
            </address>
            <span><img alt="" src="assets/img/swosti1.png"></span>
        </header>
        <article>
            <h1>Recipient</h1>
            <address>
                <p><%= title %> <%= fname %> <%= lname %><br></p>
            </address>
            <table class="meta">
                <tr>
                    <th><span>Invoice #</span></th>
                    <td><span><%= id %></span></td>
                </tr>
                <tr>
                    <th><span>Date</span></th>
                    <td><span><%= cout %></span></td>
                </tr>
            </table>
            <table class="inventory">
                <thead>
                    <tr>
                        <th><span>Item</span></th>
                        <th><span>No of Days</span></th>
                        <th><span>Rate</span></th>
                        <th><span>Quantity</span></th>
                        <th><span>Price</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><span><%= troom %></span></td>
                        <td><span><%= days %></span></td>
                        <td><span data-prefix>Rs.</span><span><%= type_of_room %></span></td>
                        <td><span><%= nroom %></span></td>
                        <td><span data-prefix>Rs.</span><span><%= ttot %></span></td>
                    </tr>
                    <tr>
                        <td><span><%= bed %> Bed</span></td>
                        <td><span><%= days %></span></td>
                        <td><span data-prefix>Rs.</span><span><%= type_of_bed %></span></td>
                        <td><span><%= nroom %></span></td>
                        <td><span data-prefix>Rs.</span><span><%= btot %></span></td>
                    </tr>
                    <tr>
                        <td><span><%= meal %></span></td>
                        <td><span><%= days %></span></td>
                        <td><span data-prefix>Rs.</span><span><%= type_of_meal %></span></td>
                        <td><span><%= nroom %></span></td>
                        <td><span data-prefix>Rs.</span><span><%= mepr %></span></td>
                    </tr>
                </tbody>
            </table>
            <table class="balance">
                <tr>
                    <th><span>Total</span></th>
                    <td><span data-prefix>Rs.</span><span><%= fintot %></span></td>
                </tr>
                <tr>
                    <th><span>Amount Paid</span></th>
                    <td><span data-prefix>Rs.</span><span>0.00</span></td>
                </tr>
                <tr>
                    <th><span>Balance Due</span></th>
                    <td><span data-prefix>Rs.</span><span><%= fintot %></span></td>
                </tr>
            </table>
        </article>
        <aside>
            <h1><span>Contact us</span></h1>
            <div>
                <p align="center">Email :- info@SWOSTIPREMIUM.com || Web :- www.swostipremium.com || Phone :- +91 9337397810 </p>
            </div>
        </aside>
    </body>
</html>
