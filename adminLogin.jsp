<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Login</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

        <style>
            *{
                margin:0;
                padding:0;
                box-sizing:border-box;
                font-family:'Segoe UI',sans-serif;
            }

            body{
                    height:100vh;
                    display:flex;
                    justify-content:center;
                    align-items:center;
                    background:linear-gradient(135deg,#FF9933,#FF6A00,#D35400);
                    overflow:hidden;
            }

            body::before{
                content:'';
                position:absolute;
                width:350px;
                height:350px;
                background:#00d4ff;
                border-radius:50%;
                top:-100px;
                left:-100px;
                filter:blur(100px);
            }

            body::after{
                content:'';
                position:absolute;
                width:300px;
                height:300px;
                background:#7b2ff7;
                border-radius:50%;
                bottom:-100px;
                right:-80px;
                filter:blur(120px);
            }

            .login-card{
                position:relative;
                width:380px;
                padding:40px;
                border-radius:20px;
                backdrop-filter:blur(18px);
                background:rgba(255,255,255,.12);
                border:1px solid rgba(255,255,255,.2);
                box-shadow:0 15px 40px rgba(0,0,0,.35);
                z-index:1;
            }

            .login-card h2{
                color:#fff;
                text-align:center;
                margin-bottom:10px;
                font-weight:bold;
            }

            .login-card p{
                color:#ddd;
                text-align:center;
                margin-bottom:30px;
            }

            .input-group-text{
                background:#ffffff20;
                border:none;
                color:white;
            }

            .form-control{
                background:#ffffff15;
                border:none;
                color:white;
                height:50px;
            }

            .form-control::placeholder{
                color:#ddd;
            }

            .form-control:focus{
                background:#ffffff20;
                color:#fff;
                box-shadow:none;
            }

            .btn-login{
                height:50px;
                background:linear-gradient(45deg,#00c6ff,#0072ff);
                border:none;
                border-radius:10px;
                color:white;
                font-size:18px;
                font-weight:600;
                transition:.4s;
            }

            .btn-login:hover{
                transform:translateY(-3px);
                box-shadow:0 10px 20px rgba(0,114,255,.5);
            }

            .logo{
                width:80px;
                height:80px;
                background:white;
                color:#0072ff;
                border-radius:50%;
                display:flex;
                align-items:center;
                justify-content:center;
                font-size:35px;
                margin:auto;
                margin-bottom:20px;
            }

            .footer-text{
                text-align:center;
                color:#ccc;
                margin-top:20px;
                font-size:14px;
            }
        </style>

    </head>
    <body>
        <%@ page import="java.sql.*" %>
        <%@ include file="includes/dbconnect.jsp" %>

        <%    if ("POST".equalsIgnoreCase(request.getMethod())) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                try {
                    PreparedStatement ps = con.prepareStatement("SELECT * FROM admin_users WHERE username=? AND password=?");
                    ps.setString(1, username);
                    ps.setString(2, password);
                    ResultSet rs = ps.executeQuery();

                    if (rs.next()) {
                        session.setAttribute("admin", rs.getString("username"));
                        response.sendRedirect("adminDashboard.jsp");
                        return;
                    } else {
                        out.println("<script>alert('Invalid credentials!'); window.location='adminLogin.jsp';</script>");
                    }

                } catch (Exception e) {
                    out.println("<script>alert('Database error: " + e.getMessage() + "');</script>");
                }
            }
        %>

        <div class="login-card">

            <div class="logo">
                <i class="fas fa-user-shield"></i>
            </div>

            <h2>Admin Login</h2>
            <p>Welcome Back! Please Login</p>

            <form method="post" action="adminLoginAction.jsp">

                <div class="input-group mb-3">
                    <span class="input-group-text">
                        <i class="fas fa-user"></i>
                    </span>
                    <input type="text"
                           name="username"
                           class="form-control"
                           placeholder="Username"
                           required>
                </div>

                <div class="input-group mb-4">
                    <span class="input-group-text">
                        <i class="fas fa-lock"></i>
                    </span>
                    <input type="password"
                           name="password"
                           class="form-control"
                           placeholder="Password"
                           required>
                </div>

                <button class="btn btn-login w-100">
                    <i class="fas fa-sign-in-alt"></i> Login
                </button>

            </form>

            <div class="footer-text">
                Secure Admin Panel
            </div>

        </div>

    </body>
</html>