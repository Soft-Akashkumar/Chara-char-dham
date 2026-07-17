<%-- 
    Document   : editPackage
    Created on : 22-May-2025, 12:15:16 am
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edit package</title>
    </head>
    <body>
        <%@ page import="java.sql.*" %>
        <%@ include file="includes/dbconnect.jsp" %>

        <%
            int id = Integer.parseInt(request.getParameter("id"));
            String name = "", desc = "";
            double price = 0;

            if ("POST".equalsIgnoreCase(request.getMethod())) {
                name = request.getParameter("name");
                desc = request.getParameter("description");
                price = Double.parseDouble(request.getParameter("price"));

                PreparedStatement ps = con.prepareStatement("UPDATE packages SET name=?, description=?, price=? WHERE id=?");
                ps.setString(1, name);
                ps.setString(2, desc);
                ps.setDouble(3, price);
                ps.setInt(4, id);
                ps.executeUpdate();
                response.sendRedirect("adminPackages.jsp");
                return;
            }

            PreparedStatement ps = con.prepareStatement("SELECT * FROM packages WHERE id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                name = rs.getString("name");
                desc = rs.getString("description");
                price = rs.getDouble("price");
            }
        %>

        <div class="container mt-5" style="max-width: 600px;">
            <h3>Edit Package</h3>
            <form method="post">
                <div class="mb-3">
                    <label>Package Name</label>
                    <input type="text" name="name" value="<%= name%>" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label>Description</label>
                    <input type="text" name="description" value="<%= desc%>" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label>Price (INR)</label>
                    <input type="number" step="0.01" name="price" value="<%= price%>" class="form-control" required>
                </div>
                <button class="btn btn-success">Update Package</button>
                <a href="adminPackages.jsp" class="btn btn-secondary">Cancel</a>
            </form>
        </div>

    </body>
</html>
