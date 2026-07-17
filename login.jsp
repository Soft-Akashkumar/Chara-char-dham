<%-- 
    Document   : login
    Created on : 21-May-2025, 6:44:02 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    background:
        linear-gradient(rgba(0,0,0,.45),rgba(0,0,0,.45)),
        url("image/login_bg.jpg");
    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;
    min-height:100vh;
}

.login-section{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.login-card{

    width:100%;
    max-width:450px;

    background:rgba(255,255,255,.93);

    backdrop-filter:blur(15px);

    border-radius:20px;

    padding:35px;

    box-shadow:0 20px 45px rgba(0,0,0,.35);

    position:relative;

    overflow:hidden;

}

.login-card::before{

    content:"🕉";

    position:absolute;

    top:15px;

    right:20px;

    font-size:42px;

    opacity:.15;

}

.login-card h2{

    text-align:center;

    color:#E65100;

    font-weight:700;

    margin-bottom:30px;

}

.login-card p{

    text-align:center;

    color:#666;

    margin-bottom:25px;

}

.input-group{

    position:relative;

    margin-bottom:20px;

}

.input-group i{

    position:absolute;

    left:15px;

    top:17px;

    color:#FF9800;

    z-index:10;

}

.form-control{

    height:50px;

    border-radius:12px;

    padding-left:45px;

    border:1px solid #ddd;

}

.form-control:focus{

    border-color:#FF9800;

    box-shadow:0 0 10px rgba(255,152,0,.3);

}

.btn-login{

    width:100%;

    height:50px;

    border:none;

    border-radius:12px;

    background:linear-gradient(45deg,#FF9800,#E65100);

    color:#fff;

    font-size:17px;

    font-weight:600;

    transition:.3s;

}

.btn-login:hover{

    transform:translateY(-3px);

    box-shadow:0 10px 20px rgba(230,81,0,.3);

}

.register-link{

    text-align:center;

    margin-top:20px;

}

.register-link a{

    color:#E65100;

    font-weight:600;

    text-decoration:none;

}

.register-link a:hover{

    text-decoration:underline;

}
        </style>
    </head>
    <body>
       <!--%@ include file="includes/header.jsp" %-->

<div class="login-section">

    <div class="login-card">

        <h2>🚩 Char Dham Yatra</h2>

        <p>Login to continue your spiritual journey.</p>

        <form action="loginProcess.jsp" method="post">

            <div class="input-group">
                <i class="fa-solid fa-envelope"></i>
                <input type="email" name="email" class="form-control" placeholder="Enter Email Address" required>
            </div>

            <div class="input-group">
                <i class="fa-solid fa-lock"></i>
                <input type="password" name="password" class="form-control" placeholder="Enter Password" required>
            </div>

            <button class="btn btn-login">
                <i class="fa-solid fa-right-to-bracket"></i>
                Login
            </button>

        </form>

        <div class="register-link">
            Don't have an account?
            <a href="register.jsp">Create Account</a>
        </div>

    </div>

</div>


    </body>
</html>
