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
            height: 100vh;
        }
        .logincontainer{
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            text-align: center;
            
        }
        .login{
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height:300px;
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
        <h1>MyCars.com</h1>
        <h1>Admin Login</h3>
        <div class="login">
            <form action="admser" method="post" class="loginform"> 
                <input type="email" name="email" placeholder="Enter Email" required>
                <input type="password" name="password" placeholder="Enter password" required>
                <input class="subl" type="submit" value="Login">
            </form>
        </div>
    </div>

</body>
</html>