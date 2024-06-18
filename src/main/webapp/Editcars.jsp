<%@ page import="java.io.*,java.util.*,java.sql.*"%>
 <html>
<head>
    <title>Display Available Cars</title>
</head>
<style>
    body{
       font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
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
        .li{
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            background-color:  rgb(163, 153, 153);
            padding: 3px 0px;
        }
        .li a{
            padding: 2px;
            color: black;
            text-decoration: none;
            font-size:larger;
            font-weight: bold;
            background-color:white;
            border-radius: 10px;

        }
    .available{
        background-color: rgb(180, 244, 120);
        display: flex;
        justify-content: center;
    }
    .table{
        width: 100%;
        background-color: antiquewhite;
    }
    .th{
        height: 8vh;
        background-color:black;
        color: white;
    }
    #Edit{
        background-color:rgb(219, 68, 68);
        text-align: center;
        width: 140px;
    }
    #Edit a{
        color: black;
        text-decoration: none;
        padding: 7px 30px;
        font-weight: bold;
        font-size: 20px;
    }
    #book a:hover{
        color: white;
       
    }
    .td{
        height: 7vh;
    }
    .links{
            display: flex;
            justify-content: space-evenly;
            background-color: rgb(117, 176, 248);
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
</style>
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
   

<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mycars", "root", "123456");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from carsdetails");
%>

    <div class="available"><h2>Available Cars</h2></div>
    <table border='1' class="table">
        <tr>
            <th class="th">Car Name</th>
            <th class="th">Car Model</th>
            <th class="th">Fuel</th>
            <th class="th">Price</th>
            <th class="th">Car Number</th>
            <th class="th">Active</th>
            <th class="th">Book Car</th>
        </tr>

<%
        while (rs.next()) {
%>
            <tr>
                <td class="td"><%= rs.getString("carname") %></td>
                <td class="td"><%= rs.getString("carmodel") %></td>
                <td class="td"><%= rs.getString("fuel") %></td>
                <td class="td"><%= rs.getString("price") %></td>
                <td class="td"><%= rs.getString("carnumber") %></td>
                <td class="td"><%= rs.getString("active") %></td>
                <td class="td" id="Edit"><a href='EditCarForm.jsp?carnumber=<%= rs.getString("carnumber")%>'>Edit</a></td>
            </tr>
<%
        }
%>

    </table>

<%
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
%> 
    <h3 style='color:red'><%= e.getMessage() %></h3>

<%
    }
%>

</body>
</html>


