<%@include file="AdminProfileHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    body{
        background-color: rgb(243, 223, 197);
        font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    }
    .lrboxes{
            display: flex;
            flex-direction: row;
            justify-content: space-around;
        }
    .sbtn{
            display: flex;
            justify-content: center;
            
            
    }
    .sbtn input{
        font-size: large;
        position: relative;
            top: 20px;
            width: 300px;
            padding: 5px 2px;
            background-color: rgb(191, 182, 182);
            border: 2px solid black;
            font-weight: bold;
    }
    .lrboxes h2{
        position: relative;
        top: 15px;
    }
    .lrboxes input{
        padding: 5px 2px;
        width: 300px;
        border: 2px solid black;
    }
    .lrboxes select{
        width: 310px;
        padding: 7px 2px;
        border: 2px solid black;
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
<div class="links">
        <a href="AddCars.jsp">Add Cars</a>
        <a href="Editcars.jsp">Edit Cars</a>
        <a href="BookingsReceived.jsp">check booked Cars</a>
        <a href="interface.jsp">logout</a>
    </div>

<form action="addcarform" method="post">
    <div class="lrboxes">
        <div class="left">
            <h2>Name</h2>
            <input type="text" name="carname" placeholder="Enter car name" required>
            <h2>Model Number</h2>
            <input type="number" name="carmodel" placeholder="Enter Car Model" required>
            <h2>Fuel Type</h2>
            <select name="fuel" id="">
                <option value="petrol">Petrol</option>
                <option value="diesel">Diesel</option>
            </select>
        </div>
        <div class="right">
            <h2>Price</h2>
            <input type="number" name="price" placeholder="Enter Price" required>
            <h2>Car Number</h2>
            <input type="text" name="carnumber" placeholder="Enter Car Number">
            <h2>Active</h2>
            <select name="active" id="">
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>
        </div>
     </div>
  <div class="sbtn"><input type="submit" value="save" required></div>
</form>
</body>
</html>