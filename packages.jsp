<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@ page import="java.sql.*" %>
<%@ include file="includes/dbconnect.jsp" %>
<%@ include file="includes/header.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>


        <div class="container mt-5">
            <h2 class="text-center mb-4">Chardham Yatra Packages</h2>
            <div class="row">
                <%            try {
                        PreparedStatement ps = con.prepareStatement("SELECT * FROM packages");
                        ResultSet rs = ps.executeQuery();
                        while (rs.next()) {
                %>
                <div class="col-md-3 mb-4">
                    <div class="card h-100 shadow">
                        <img src="image/<%= rs.getString("image")%>" class="card-img-top" style="height: 180px; object-fit: cover;" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%= rs.getString("name")%></h5>
                            <p class="card-text"><%= rs.getString("description")%></p>
                            <p class="fw-bold">Price: ?<%= rs.getDouble("price")%></p>
                            <a href="booking.jsp?packageId=<%= rs.getInt("id")%>" class="btn btn-primary w-100">Book Now</a>
                        </div>
                    </div>
                </div>
                <%
                        }
                    } catch (Exception e) {
                        out.println("Error: " + e);
                    }
                %>
            </div>
        </div>

        <%@ include file="includes/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
