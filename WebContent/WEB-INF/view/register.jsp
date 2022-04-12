<html>
<head>
    <title> Transparent Login Form Design </title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/adminResources/css/style.css">  
    <meta charset="utf-8" />
    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" /> 
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />

</head>
    <body>
        <script src="<%=request.getContextPath()%>/adminResources/js/common.js"></script>
        <div class="register-box">
        <img src="<%=request.getContextPath()%>/adminResources/assets/images/avatar.png" class="avatar">
        <h1>Register Here</h1>
            <form action="/login.html" method="POST">
             <p>Name</p>
            <input type="text" name="name" placeholder="Enter Name" required>   
             <p>Email Address</p>
            <input type="email" name="emailaddress" placeholder="Enter Email Address" required>
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
            <p>Confirm Password</p>
            <input type="password" name="confirmpassword" placeholder="Enter Confirm Password" id="confirmpassword" required>
            <input type="submit" name="submit"  value="Register" onclick="validatePassword()" >
            <small>
                <a href="login.html">Already have an account?Sign in</a>
            </small><br/>
            </form>
         </div>
    </body>
</html>