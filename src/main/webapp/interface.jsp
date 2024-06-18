<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyCars.com</title>
    
    <style>
        body{
            padding: 0;
            margin: 0;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-family: Verdana, Geneva, Tahoma, sans-seri;
        }
        .nav{
            padding-left: 10px;
            display: flex;
            justify-content: space-between;
            padding-right: 10px;
            align-items: center;
            background-color:rgb(117, 176, 248);
            height: 40px;
        }
        .nav a{
            text-decoration: none;
            color: black;
            font-weight: bold;
        }.nav a:hover{
            color: aliceblue;
        }

        /* .nav img{
            width: 60px;
            height: 50px;
        } */
        .nav h1{
           padding: 4px;
    font-size: x-large;
    font-family: cursive;
        }
        .car img{
            width: 100%;
        }

        .btn a{
            margin-top: 10px;
            padding: 5px;
            /* background-color: rgb(246, 77, 77); */
            background-color:rgb(117, 176, 248);
            border: 2px solid black;
            font-size: 20px;
            border-radius: 4px;
            color: white;
            text-decoration: none;
        }
        .btn a:hover{
            background-color:white;
            border:2px solid rgb(117, 176, 248);
            color: rgb(117, 176, 248);
        }
        .btn{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .box{
        margin-top:10px
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="nav">
            <div><h1>MyCars.com</h1></div>
            <div><a href="AdminLoginPage.jsp">Adminlogin</a></div>
    
        </div>
        <div class="car"><img src="car_rent.jpg" alt=""></div>
        <div class="btn"><a href="CustomerLoginPage.jsp">Rent a car</a></div>
        <div class="box">
            <h1>About Us</h1>
            <p>MyCars.com is the leading marketplace for car sharing in emerging markets,with over 100 cars on its technology-driven platform across Hyderabad.  empowers host entrepreneurs to safely and easily share their cars to earn additional passive income. Guests in the Mycar.com community enjoy a diverse, affordable selection of cars to unlock memorable driving experiences with friends and family. Founded in 2023 and headquartered in Hyderabad,Telangana, Mycars.com employs over 20 people and operates across Hyderabad</p></div>
    </div>

</body>
</html>