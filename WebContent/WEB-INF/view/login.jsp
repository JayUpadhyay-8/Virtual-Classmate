<html>

<head>
   <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/adminResources/assets/images/logo-light-icon.png">
      
    <title> VirtualClassmate </title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/adminResources/css/style.css">
    <meta charset="utf-8" />
    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
</head>

<body background="<%=request.getContextPath()%>/adminResources/assets/images/image.jsp">
    <script src="<%=request.getContextPath()%>/adminResources/js/common.js"></script>
        <div class="login-box">
        <img src="<%=request.getContextPath()%>/adminResources/assets/images/avatar.png" class="avatar">
        <h1>Login Here</h1>
        <form action="j_spring_security_check" method="post">
            <p>Email Address</p>
            <input type="email" name="username" placeholder="Enter Email Address" required>
            <p>Password</p>
            <input type="password" name="password" id="password" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
            <input type="submit" name="submit" value="Login">
            <a href="forget.html">Forgot Password?</a><br/>
            
            
            <br/>
         <!--    <small>
                <a href="register.html">Don't have an account?Sign up</a>
            </small>
         --></form>
        </div>
        
       
        
</body>
</html>