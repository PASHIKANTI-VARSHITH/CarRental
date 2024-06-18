<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        .al{
            display: flex;
            justify-content: center;
            text-align: center;
            background-color: yellow;
        }
        .al h1{
            margin: 0;
            padding: 5px 0px;
        }
        .li{
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            background-color: rgb(117, 176, 248);
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
    <div class="apnav">
        <h1>MyCars.com</h1>
    </div>
    <div class="al">
        <h1>-----Customer Profie-----</h1>
    </div>
    <div class="li">
        <a href="AvailableCars.jsp">Available Cars</a>
        <a href="interface.jsp">Log out</a>
    </div>
    <div class="wm">
        <h1>Customer Profile</h1>
    </div>
</body>
</html>