<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>User Registration</title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
        <style>
            /* ===============================
            CHAR DHAM YATRA THEME
            ==================================*/

            body{
            font-family:'Poppins',sans-serif;
            min-height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            overflow:hidden;

            background:
            linear-gradient(rgba(255,255,255,.15),rgba(255,255,255,.15)),
            linear-gradient(to bottom,#87CEEB 0%,#CFEFFF 35%,#FFF4D6 70%,#E8F5E9 100%);

            position:relative;
            }

            /* Floating Clouds */

            body::before{
            content:"☁ ☁ ☁";
            position:absolute;
            top:40px;
            left:-250px;
            font-size:90px;
            color:rgba(255,255,255,.75);
            animation:cloudMove 35s linear infinite;
            }

            body::after{
            content:"☁ ☁";
            position:absolute;
            top:120px;
            left:-180px;
            font-size:70px;
            color:rgba(255,255,255,.65);
            animation:cloudMove 45s linear infinite;
            }

            @keyframes cloudMove{

            from{
            transform:translateX(0);
            }

            to{
            transform:translateX(1800px);
            }

            }

            /* Registration Card */

            .register-card{

            width:100%;
            max-width:520px;
            padding:35px;

            background:rgba(255,255,255,.92);

            border-radius:25px;

            border-top:6px solid #FF9933;

            box-shadow:0 15px 40px rgba(0,0,0,.18);

            backdrop-filter:blur(8px);

            position:relative;

            overflow:hidden;

            }

            /* OM Symbol */

            .register-card::before{

            content:"🕉";

            position:absolute;

            top:15px;

            right:20px;

            font-size:45px;

            color:rgba(255,153,51,.25);

            }

            /* Temple Flag */

            .register-card::after{

            content:"🚩";

            position:absolute;

            top:15px;

            left:20px;

            font-size:30px;

            }

            /* Heading */

            .register-card h2{

            color:#D35400;

            text-align:center;

            font-weight:700;

            margin-bottom:25px;

            }

            /* Inputs */

            .form-control{

            height:52px;

            border-radius:12px;

            border:1px solid #ddd;

            padding-left:45px;

            }

            .form-control:focus{

            border-color:#FF9933;

            box-shadow:0 0 10px rgba(255,153,51,.35);

            }

            /* Icons */

            .input-group{

            position:relative;

            margin-bottom:18px;

            }

            .input-group i{

            position:absolute;

            top:17px;

            left:15px;

            color:#E67E22;

            z-index:10;

            }

            /* Register Button */

            .btn-register{

            width:100%;

            height:52px;

            border:none;

            border-radius:12px;

            color:#fff;

            font-weight:600;

            background:linear-gradient(45deg,#FF9933,#E65100);

            transition:.3s;

            }

            .btn-register:hover{

            transform:translateY(-3px);

            box-shadow:0 10px 25px rgba(230,81,0,.35);

            }

            /* Login */

            .login-link{

            text-align:center;

            margin-top:20px;

            }

            .login-link a{

            color:#E65100;

            font-weight:600;

            text-decoration:none;

            }

            .login-link a:hover{

            text-decoration:underline;

            }
    </style>
</head>

<body>

    <div class="register-card">

    <h2><i class="fa-solid fa-user-plus"></i> Create Account</h2>

    <form action="registerProcess.jsp" method="post">

    <div class="input-group">
    <i class="fa fa-user"></i>
    <input type="text" name="name" class="form-control" placeholder="Full Name" required>
    </div>

    <div class="input-group">
    <i class="fa fa-envelope"></i>
    <input type="email" name="email" class="form-control" placeholder="Email Address" required>
    </div>

    <div class="input-group">
    <i class="fa fa-lock"></i>
    <input type="password" name="password" class="form-control" placeholder="Password" required>
    </div>

    <div class="input-group">
    <i class="fa fa-phone"></i>
    <input type="text" name="mobile" class="form-control" placeholder="Mobile Number" required>
    </div>

    <div class="input-group">
    <i class="fa fa-location-dot"></i>
    <input type="text" name="address" class="form-control" placeholder="Address" required>
    </div>

    <button class="btn btn-register">
    <i class="fa-solid fa-user-check"></i> Register
    </button>

    </form>

    <div class="login-link">
    Already have an account?
    <a href="login.jsp">Login Here</a>
    </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    </body>
    </html>