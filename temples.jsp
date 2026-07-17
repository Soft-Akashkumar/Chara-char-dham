
<%@page import="java.sql.*"%>
<%@include file="includes/dbconnect.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Temple Gallery</title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <style>
            body{
                    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#FDC830,#F37335);
    overflow:hidden;
            }

            .card{
                border:none;
                border-radius:15px;
                overflow:hidden;
                transition:.3s;
                box-shadow:0 5px 15px rgba(0,0,0,.1);
            }

            .card:hover{
                transform:translateY(-8px);
            }

            .card img{
                height:250px;
                object-fit:cover;
            }

            .btn-view{
                background:#0d6efd;
                color:#fff;
            }

            .btn-view:hover{
                background:#084298;
                color:white;
            }
        </style>
    </head>

    <body>

        <div class="container py-5">

            <h2 class="text-center mb-5">
                ? Famous Temples of India
            </h2>

            <div class="row">

                <%    try {

                        PreparedStatement ps = con.prepareStatement("SELECT * FROM temples");
                        ResultSet rs = ps.executeQuery();

                        while (rs.next()) {
                %>

                <div class="col-lg-4 col-md-6 mb-4">

                    <div class="card h-100">

                        <img src="<%=rs.getString("image")%>" class="card-img-top">

                        <div class="card-body">

                            <h4><%=rs.getString("temple_name")%></h4>

                            <p>
                                <strong>? Location :</strong>
                                <%=rs.getString("location")%>,
                                <%=rs.getString("state")%>
                            </p>

                            <p>
                                <strong>? Deity :</strong>
                                <%=rs.getString("deity")%>
                            </p>

                            <p>
                                <%=rs.getString("description")%>
                            </p>

                            <a href="temples.jsp?id=<%=rs.getInt("id")%>"
                               class="btn btn-view">
                                View Details
                            </a>

                        </div>

                    </div>

                </div>

                <%
                        }

                    } catch (Exception e) {
                        out.println(e);
                    }
                %>

            </div>

        </div>

    </body>
</html>

