<%@include file="AdminProfileHeader.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
         body{
            padding: 0%;
            margin: 0%;
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
        .wm{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 70vh;
        }
        .wm h1{
            font-size: 60px;
            opacity: 0.5;
        }
    </style>
</head>
<body>
    <div class="links">
        <a href="AddCars.jsp">Add Cars</a>
        <a href="Editcars.jsp">Edit Cars</a>
        <a href="BookingsReceived.jsp">check booked Cars</a>
        <a href="interface.jsp">logout</a>
    </div>
    <div class="wm">
        <h1>Admin Profile</h1>
    </div>
</body>
</html>