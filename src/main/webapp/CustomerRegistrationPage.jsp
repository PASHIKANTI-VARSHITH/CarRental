<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        body{
            margin: 0;
            padding: 0;
            background-color: rgb(117, 176, 248);
        }
        .signupcontainer{
            padding: 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            
        }
        .signup{
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height:400px;
            width: 400px;
        }
        .signupform{
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
           
            
        }
        .signup input{
            padding: 5px;
            margin: 10px 0px;
            font-size: 15px;
             width: 250px;
             /* border: 2px solid black; */
             border-radius: 5px;
        }
        .signup a{
            text-decoration: none;
            color: black;
        }
        .sub{
            background-color:  rgb(117, 176, 248);
        }
        .sub:hover{
            background-color: white;
        }
    </style>
</head>
<body>
    <div class="signupcontainer">
        <div class="head">
            <h1>MyCars.com</h1>
        </div>
        <div class="signup">
            <h1>Customer Registration</h1>
            <form action="regform" method="post" class="signupform"> 
                <input type="text" name="cname" placeholder="Enter Name" required>
                <input type="email" name="cemail" placeholder="Enter Email" required>
                <input type="number" name="cmobilenumber" placeholder="Enter Mobile Number">
                <input type="password" name="cpassword" placeholder="Enter password">
                <input class="sub" type="submit" value="signup">
            </form>
            <h3><a href="CustomerLoginPage.jsp">Login</a></h3>
        </div>
    </div>
</body>
</html>