<%-- 
    Document   : adminPackages
    Created on : 22-May-2025, 12:11:07 am
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin Packages</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>
        <%@ page import="java.sql.*" %>
        <%@ include file="includes/dbconnect.jsp" %>
        <%@ include file="includes/header.jsp" %>

        <%
            if (session.getAttribute("admin") == null) {
                response.sendRedirect("adminLogin.jsp");
                return;
            }

            // Handle delete action
            String deleteId = request.getParameter("delete");
            if (deleteId != null) {
                PreparedStatement ps = con.prepareStatement("DELETE FROM packages WHERE id=?");
                ps.setInt(1, Integer.parseInt(deleteId));
                ps.executeUpdate();
                response.sendRedirect("adminPackages.jsp");
            }
        %>

        <div class="container mt-5">
            <h3 class="mb-4 text-center">Manage Travel Packages</h3>

            <form action="addPackage.jsp" method="post" class="mb-5" style="max-width: 600px; margin:auto;">
                <h5>Add New Package</h5>
                <div class="mb-2">
                    <input type="text" name="name" class="form-control" placeholder="Package Name" required>
                </div>
                <div class="mb-2">
                    <input type="text" name="description" class="form-control" placeholder="Short Description" required>
                </div>
                <div class="mb-2">
                    <input type="file" name="image" class="form-control" placeholder="Short Description" required>
                </div>
                <div class="mb-2">
                    <input type="number" step="0.01" name="price" class="form-control" placeholder="Price (INR)" required>
                </div>
                <button class="btn btn-primary">Add Package</button>
            </form>

            <hr>

            <h5 class="mb-3">All Packages</h5>
            <table class="table table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price (₹)</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        PreparedStatement ps = con.prepareStatement("SELECT * FROM packages");
                        ResultSet rs = ps.executeQuery();
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getInt("id")%></td>
                        <td><%= rs.getString("name")%></td>
                        <td><%= rs.getString("description")%></td>
                        <td><%= rs.getDouble("price")%></td>
                        <td>
                            <a href="editPackage.jsp?id=<%= rs.getInt("id")%>" class="btn btn-warning btn-sm">Edit</a>
                            <a href="adminPackages.jsp?delete=<%= rs.getInt("id")%>" class="btn btn-danger btn-sm"
                               onclick="return confirm('Are you sure you want to delete this package?')">Delete</a>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>

        <%@ include file="includes/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
