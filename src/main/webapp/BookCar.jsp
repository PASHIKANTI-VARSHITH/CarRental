<%@ page import="java.io.*, java.util.*, java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Book Car</title>
    <style>
        body{
            padding: 0%;
            margin: 0%;
            background-color: rgb(225, 198, 162);
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
        .he{
            display: flex;
            justify-content: center;
            background-color:yellow;
            padding: 5px 0px;
            font-size: 20px;
        }
        .box{
            display: flex;
            justify-content: center;
            margin-top: 30px;
            
        }
        .box input{
           margin-top: 10px;
           font-size: 20px;
        }
        .sub{
            display: flex;
            justify-content: center;

        }
        .msg{
            display: flex;
            justify-content: center;
            color: red;
            font-weight: bold;
            margin-top: 10px;
        }
        .li{
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            background-color:rgb(148, 142, 142);
            padding: 5px 0px;
        }
        .li a{
            padding: 2px;
            color: black;
            text-decoration: none;
            font-size:larger;
            font-weight: bold;
            background-color:white;
            border-radius: 4px;

        }
    </style>
</head>
<body>

<%
    
    String carnumber = request.getParameter("carnumber");
%>
<div class="apnav">
    <h1>MyCars.com</h1>
</div>
<div class="li">
    <a href="AvailableCars.jsp">Available Cars</a>
    <a href="interface.jsp">Log out</a>
</div>
<div class="he">BOOK CAR FORM</div>
<div class="msg">( ENTER THE DETAILS CORRECTLY.YOU CAN'T RECORRECT AGAIN )</div>

<div class="box">
    <form action="bookcarform" method="post">
        <input type="hidden" name="carnumber" value="<%= carnumber %>">
      
        <div>
            <label>Name:</label>
            <input type="text" name="customerName" required>
        </div>
        <div>
            <label>Email:</label>
            <input type="email" name="customerEmail" required>
        </div>
        <div>
            <label>Mobile Number:</label>
            <input type="text" name="customerMobile" required>
        </div>
        <div>
            <label>Date of Car Needed:</label>
            <input type="date" name="dateNeeded" required>
        </div>
        <div>
            <label>Number of Days:</label>
            <input type="number" name="daysNeeded" required>
        </div>
        <div class="sub">
            <input type="submit" value="Book Car">
        </div>
    </form>
</div>

</body>
</html>


