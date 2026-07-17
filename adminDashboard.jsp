<%-- 
    Document   : adminDashboard
    Created on : 22-May-2025, 12:02:29 am
    Author     : Admin
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@ page session="true" %>
<%@ include file="includes/header.jsp" %>
<%@ page import="java.sql.*" %>
<%@ include file="includes/dbconnect.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <style>
        body{
            background:linear-gradient(135deg,#FFF8E1,#FFE0B2,#FFCC80);
            min-height:100vh;
            font-family:'Segoe UI',sans-serif;
        }

        /* Top Heading */
        .dashboard-title{
            color:#BF360C;
            font-weight:bold;
            text-shadow:1px 1px 3px rgba(0,0,0,.15);
        }

        /* Dashboard Cards */
        .card{
            border:none!important;
            border-radius:20px;
            overflow:hidden;
            transition:.4s;
            box-shadow:0 10px 30px rgba(0,0,0,.12);
        }

        .card:hover{
            transform:translateY(-10px);
            box-shadow:0 18px 40px rgba(0,0,0,.25);
        }

        .card-body{
            padding:35px 25px;
        }

        /* Card Icons */
        .icon{
            width:75px;
            height:75px;
            margin:auto;
            border-radius:50%;
            display:flex;
            justify-content:center;
            align-items:center;
            font-size:32px;
            color:#fff;
            margin-bottom:20px;
        }

        /* Different Colors */
        .package{
            background:#F57C00;
        }
        .booking{
            background:#388E3C;
        }
        .user{
            background:#0288D1;
        }
        .feedback{
            background:#F9A825;
        }
        .contact{
            background:#6D4C41;
        }

        .card-title{
            font-weight:700;
            color:#BF360C;
        }

        .card-text{
            color:#666;
        }

        /* Buttons */
        .btn-orange{
            background:#F57C00;
            color:#fff;
            border:none;
            border-radius:30px;
            padding:10px 30px;
            transition:.3s;
        }

        .btn-orange:hover{
            background:#E65100;
            color:#fff;
        }

        .btn-success,
        .btn-info,
        .btn-warning,
        .btn-dark,
        .btn-primary{
            border-radius:30px;
            padding:10px 30px;
        }

        .btn-lg{
            border-radius:30px;
        }

        /* Logout */
        .logout-btn{
            background:#D32F2F;
            color:#fff;
            border:none;
        }

        .logout-btn:hover{
            background:#B71C1C;
        }
    </style>
    <body>


        <%    if (session.getAttribute("admin") == null) {
                response.sendRedirect("adminLogin.jsp");
                return;
            }
        %>

        <div class="container mt-5">
           <h2 class="text-center mb-5 dashboard-title">
               <b>  CHARA DHAM YATRA ADMIN DASHBOARD </b>
</h2>
            <div class="row g-4 text-center">

                <div class="col-md-4">
                    <div class="card shadow-lg border-primary">
                        <div class="card-body">
                            <h5 class="card-title"> Manage Packages</h5>
                            <p class="card-text">View, Add, Edit or Delete tour packages.</p>
                            <a href="adminPackages.jsp" class="btn btn-primary">Go</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card shadow-lg border-success">
                        <div class="card-body">
                            <h5 class="card-title"> Manage Bookings</h5>
                            <p class="card-text">See all user bookings and history.</p>
                            <a href="adminBookings.jsp" class="btn btn-success">Go</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card shadow-lg border-info">
                        <div class="card-body">
                            <h5 class="card-title"> Manage Users</h5>
                            <p class="card-text">View all registered users.</p>
                            <a href="adminUsers.jsp" class="btn btn-info">Go</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card shadow-lg border-warning">
                        <div class="card-body">
                            <h5 class="card-title">View Feedback</h5>
                            <p class="card-text">Read user feedback and suggestions.</p>
                            <a href="adminFeedback.jsp" class="btn btn-warning">Go</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card shadow-lg border-dark">
                        <div class="card-body">
                            <h5 class="card-title"> Contact Messages</h5>
                            <p class="card-text">See contact messages from visitors.</p>
                            <a href="adminContact.jsp" class="btn btn-dark">Go</a>
                        </div>
                    </div>
                </div>

                <div class="col-12">
                    <div class="text-center mt-4">
                        <a href="adminLogout.jsp" class="btn btn-danger btn-lg">Logout</a>
                    </div>
                </div>

            </div>
        </div>

        <%@ include file="includes/footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
