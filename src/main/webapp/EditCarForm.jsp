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
     .apnav{
            display: flex;
            justify-content: center;
            background-color: rgb(117, 176, 248);
        }
        .apnav h1{
            margin: 0;
            padding: 5px 0px;
        }
        .h{
            background-color: antiquewhite;
            display: flex;
            justify-content: center;
            font-size: 25px;
            font-weight: 900;
            padding: 5px 0px;
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
.box{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}
.b{
    margin-bottom: 10px;
    line-height: 0;
}
.b input{
    width: 300px;
    padding: 7px 5px;
    border: 2px solid black;
}
.b select{
    width: 314px;
    padding: 7px 5px;
    border: 2px solid black;
}
.bt input{
    background-color: beige;
    border: 2px solid black;
}
.btn{
    border: 2px solid black;
    margin-top: 18px;
    background-color: rgb(193, 185, 185);
    font-size: 20px;
    padding: 0px 2px;
    border-radius: 15px;
}
.btn:hover{
    background-color: white;
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
    
    String carnumber = request.getParameter("carnumber");
%> -->
<form action="EditCarForm" method="post">
    <div class="h">EDIT OPTIONS</div>
    <div class="box">
       <div class="b"> <h2>Car Number</h2>
        <input type="text" name="carnumber" value="<%= carnumber %>"></div>
    <div class="b"><h2>Price</h2>
        <input type="number" name="price" placeholder="Enter Price" required></div>
    <div class="b"><h2>Active</h2>
        <select name="active" id="">
           <option value="yes">Yes</option>
           <option value="no">No</option>
        </select></div>
    <div class="b" class="bt"> <input class="btn" type="submit" value="save" required></div>
    </div>
</form>
</body>
</html>