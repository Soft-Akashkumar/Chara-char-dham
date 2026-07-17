<%@ page session="true" %>
<%@ include file="includes/dbconnect.jsp" %>

<%    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String userName = (String) session.getAttribute("name");
%>

<!DOCTYPE html>
<html>
    <head>
        <title>User Dashboard - Chardham Yatra</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS and Icons -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

        <style>


            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

            *{
                margin:0;
                padding:0;
                box-sizing:border-box;
                font-family:'Poppins',sans-serif;
            }

            body{

                background:url("image/kedarnath-pack.jpg") no-repeat center center fixed;

                background-size:cover;

            }

            /* Overlay */

            body::before{

                content:"";

                position:fixed;

                inset:0;

                background:rgba(0,0,0,.45);

                z-index:-1;

            }

            /* Sidebar */

            .sidebar{

                height:100vh;

                background:linear-gradient(180deg,#FF9800,#E65100);

                color:#fff;

                box-shadow:5px 0 20px rgba(0,0,0,.25);

            }

            .sidebar h4{

                font-weight:700;

                margin:25px 0;

                text-align:center;

            }

            .sidebar img{

                width:90px;

                height:90px;

                border-radius:50%;

                border:4px solid white;

                display:block;

                margin:auto;

            }

            .sidebar a{

                display:block;

                color:white;

                text-decoration:none;

                padding:14px 25px;

                margin:8px;

                border-radius:12px;

                transition:.3s;

                font-size:16px;

            }

            .sidebar a:hover{

                background:white;

                color:#E65100;

                transform:translateX(8px);

            }

            /* Main */

            .main-content{

                padding:40px;

            }

            .welcome{

                color:white;

                font-size:34px;

                font-weight:700;

                margin-bottom:30px;

            }

            /* Cards */

            .dashboard-card{

                background:rgba(255,255,255,.95);

                border-radius:20px;

                padding:25px;

                box-shadow:0 15px 30px rgba(0,0,0,.25);

                transition:.4s;

                text-align:center;

            }

            .dashboard-card:hover{

                transform:translateY(-10px);

                box-shadow:0 20px 40px rgba(0,0,0,.35);

            }

            .dashboard-card i{

                font-size:50px;

                color:#FF9800;

                margin-bottom:15px;

            }

            .dashboard-card h4{

                color:#E65100;

                font-weight:700;

            }

            .dashboard-card p{

                color:#555;

            }

            .btn-custom{

                background:linear-gradient(45deg,#FF9800,#E65100);

                color:white;

                border:none;

                border-radius:10px;

                padding:10px 20px;

            }

            .btn-custom:hover{

                color:white;

                transform:scale(1.05);

            }

            /* Stats */

            .stat-box{

                background:rgba(255,255,255,.92);

                border-radius:15px;

                padding:20px;

                text-align:center;

                margin-bottom:20px;

            }

            .stat-box h2{

                color:#FF9800;

                font-weight:700;

            }

            .sidebar{
                background:linear-gradient(180deg,#FF9800,#E65100);
                min-height:100vh;
                padding:20px;
            }

            .sidebar a{
                display:block;
                color:#fff;
                text-decoration:none;
                padding:14px 18px;
                margin:10px 0;
                border-radius:10px;
                transition:.3s;
            }

            .sidebar a:hover{
                background:#fff;
                color:#E65100;
                transform:translateX(8px);
            }

            .dashboard-card{
                background:#fff;
                border-radius:20px;
                padding:25px;
                text-align:center;
                box-shadow:0 10px 25px rgba(0,0,0,.15);
                transition:.4s;
            }

            .dashboard-card:hover{
                transform:translateY(-10px);
            }

            .dashboard-card i{
                font-size:45px;
                color:#FF9800;
            }

            .stat-box{
                background:#fff;
                border-radius:15px;
                padding:20px;
                text-align:center;
                box-shadow:0 8px 20px rgba(0,0,0,.15);
            }

            .stat-box h2{
                color:#E65100;
                font-weight:700;
            }

            .btn-custom{
                background:linear-gradient(45deg,#FF9800,#E65100);
                color:#fff;
                border:none;
                border-radius:8px;
                padding:10px 20px;
            }

            .btn-custom:hover{
                color:#fff;
            }
        </style>

    </head>
    <body>
        <div class="container-fluid">
            <div class="row">

                <!-- Sidebar -->
                <div class="col-lg-3 col-md-4 sidebar">

                    <div class="text-center mt-4 mb-4">
                        <img src="image/user.png" class="rounded-circle shadow" width="90" height="90">
                        <h4 class="mt-3 text-white"><%= userName%></h4>
                        <small class="text-light">? Char Dham Traveller</small>
                    </div>

                    <a href="userDashboard.jsp">
                        <i class="bi bi-speedometer2"></i> Dashboard
                    </a>

                    <a href="myAccount.jsp">
                        <i class="bi bi-person-circle"></i> My Profile
                    </a>

                    <a href="bookings.jsp">
                        <i class="bi bi-calendar-check"></i> My Bookings
                    </a>

                    <a href="feedback.jsp">
                        <i class="bi bi-chat-dots"></i> Feedback
                    </a>

                    <a href="contact.jsp">
                        <i class="bi bi-envelope"></i> Contact Us
                    </a>

                    <a href="logout.jsp">
                        <i class="bi bi-box-arrow-right"></i> Logout
                    </a>

                </div>

                <!-- Main Content -->

                <div class="col-lg-9 col-md-8 p-4">

                    <h2 class="welcome">
                        ? Welcome, <%= userName%>
                    </h2>

                    <p class="text-white">
                        Manage your Char Dham Yatra bookings and profile from one place.
                    </p>

                    <!-- Statistics -->

                    <div class="row mt-4">

                        <div class="col-md-4 mb-4">

                            <div class="stat-box">

                                <h2>05</h2>

                                <p>Total Bookings</p>

                            </div>

                        </div>

                        <div class="col-md-4 mb-4">

                            <div class="stat-box">

                                <h2>02</h2>

                                <p>Completed Trips</p>

                            </div>

                        </div>

                        <div class="col-md-4 mb-4">

                            <div class="stat-box">

                                <h2>01</h2>

                                <p>Upcoming Journey</p>

                            </div>

                        </div>

                    </div>

                    <!-- Dashboard Cards -->

                    <div class="row">

                        <div class="col-md-4 mb-4">

                            <div class="dashboard-card">

                                <i class="bi bi-calendar-check-fill"></i>

                                <h4>My Bookings</h4>

                                <p>View and manage your bookings.</p>

                                <a href="booking.jsp" class="btn btn-custom">
                                    View
                                </a>

                            </div>

                        </div>

                        <div class="col-md-4 mb-4">

                            <div class="dashboard-card">

                                <i class="bi bi-person-fill"></i>

                                <h4>My Profile</h4>

                                <p>Update your personal information.</p>

                                <a href="myAccount.jsp" class="btn btn-custom">
                                    Profile
                                </a>

                            </div>

                        </div>

                        <div class="col-md-4 mb-4">

                            <div class="dashboard-card">

                                <i class="bi bi-chat-heart-fill"></i>

                                <h4>Feedback</h4>

                                <p>Share your travel experience.</p>

                                <a href="feedback.jsp" class="btn btn-custom">
                                    Feedback
                                </a>

                            </div>

                        </div>

                    </div>

                </div>

            </div>
        </div>

        <%@ include file="includes/footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
