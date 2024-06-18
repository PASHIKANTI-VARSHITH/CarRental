<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<html>
<head>
    <title>Received Bookings</title>
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
        .links{
            display: flex;
            justify-content: space-evenly;
            background-color: rgb(143, 143, 138);
            border-top: 2px solid black;
            border-bottom: 2px solid black;
            padding: 8px 0px;
            font-size:large;
        }
        .links a{
            background-color:white;
            color: black;
            padding: 3px;
            font-weight: bold;
            text-decoration: none;
            cursor: pointer;
            border-radius: 5px;
        }
        .heading{
            display: flex;
            justify-content: center;
            background-color: aliceblue;
        }
        .table{
            width: 100%;
        }
        .th{
            background-color: black;
            color: white;
            height: 35px;
            padding: 5px 0px;
        }
        .td{
            background-color: antiquewhite;
        }
    </style>
</head>
<body>
    <div class="apnav">
        <h1>MyCars.com</h1>
    </div>
    <div class="links">
        <a href="AddCars.jsp">Add Cars</a>
        <a href="Editcars.jsp">Edit Cars</a>
        <a href="BookingsReceived.jsp">check booked Cars</a>
        <a href="interface.jsp">logout</a>
    </div>

<!-- <%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mycars", "root", "123456");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from bookingdetail");
%> -->

    <div class="heading"><h2>BOOKINGS RECEIVED</h2></div>
    <table border='1' class="table">
        <tr>
            <th class="th">Car Number</th>
            <th class="th">Customer Name</th>
            <th class="th">Customer Email</th>
            <th class="th">Customer Mobile</th>
            <th class="th">Date of car neeeded</th>
            <th class="th">Number of days</th>
        </tr>
<!-- 
<%
        while (rs.next()) {
%> -->
            <tr>
                <td class="td"><%= rs.getString("carnumber") %></td>
                <td class="td"><%= rs.getString("customerName") %></td>
                <td class="td"><%= rs.getString("customerEmail") %></td>
                <td class="td"><%= rs.getString("customerMobile") %></td>
                <td class="td"><%= rs.getString("dateNeeded") %></td>
                <td class="td"><%= rs.getString("daysNeeded") %></td>
            </tr>
<!-- <%
        }
%> -->

    </table>

<!-- <%
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
%> -->

    <h3 style='color:red'><%= e.getMessage() %></h3>
<!-- 
<%
    }
%> -->

</body>
</html>