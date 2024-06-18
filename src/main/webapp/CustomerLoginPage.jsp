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
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }
        .logincontainer{
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            flex-direction: column;
            
        }
        .login{
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height:350px;
            width: 300px;
        }
        .login h1{
            padding: 5px;
        }
        .loginform{
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
           
            
        }
        .login input{
            padding: 5px;
            margin: 10px 0px;
            font-size: 15px;
             width: 250px;
             /* border: 2px solid black; */
             border-radius: 5px;
        }
        .login a{
            text-decoration: none;
            color: black;
        }
        .subl{
            background-color:  rgb(117, 176, 248);
        }
        .subl:hover{
            background-color: white;
        }
    </style>
</head>
<body>
    <div class="logincontainer">
        <div class="heading">
            <h1>MyCars.com</h1>
        </div>
        <div class="login">
            <h1>Customer Login</h1>
            <form action="cloginform" method="post" class="loginform"> 
                <input type="email" name="cemail" placeholder="Enter Email" required>
                <input type="password" name="cpassword" placeholder="Enter password">
                <input class="subl" type="submit" value="Login">
            </form>
            <h3><a href="CustomerRegistrationPage.jsp">Signup</a></h3>
        </div>
    </div>

</body>
</html>