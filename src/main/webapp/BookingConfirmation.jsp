<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*, java.util.*, java.sql.*"%>
<html>
<head>
    <title>Booking Confirmation</title>
    <style>
        body{
            padding: 0%;
            margin: 0%;
        }
    .apnav{
            display: flex;
            justify-content: center;
            background-color: rgb(117, 176, 248);
        }
        .apnav h1{
            margin: 0;
            padding: 5px 0px;
        }
        .box{
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            line-height: 0.5;
            height: 90vh;
            background-color: antiquewhite;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .box a{
            font-family: Georgia, 'Times New Roman', Times, serif;
            font-size: 25px;
            text-decoration: none;
            background-color:  rgb(117, 176, 248);
            border: 2px solid black;
            padding: 6px 20px;
            color: black;
        }
        .box a:hover{
            background-color: azure;
        }
        .box h3{
            color: red;
        }
        .box p{
            font-size: larger;
        }
    </style>
</head>
<body>
<div class="apnav">
        <h1>MyCars.com</h1>
    </div>
    <div class="box">
        <h2>BOOKING RECEIPT</h2>
    <p>Car: <%= request.getParameter("carnumber") %></p>
    <p>Customer: <%= request.getParameter("customerName") %></p>
    <p>Email: <%= request.getParameter("customerEmail") %></p>
    <p>Mobile: <%= request.getParameter("customerMobile") %></p>
    <p>Date Needed: <%= request.getParameter("dateNeeded") %></p>
    <p>Days Needed: <%= request.getParameter("daysNeeded") %></p>
    
    <h2>Pay money and collect car in our garage at Kphb,beside Mehfil Restaurant</h2>
    <h3>(TAKE THE RECEIPT SCREENSHOT)</h3>
    <a href="CustomerProfilePage.jsp">Done</a>
    </div>
</body>
</html>