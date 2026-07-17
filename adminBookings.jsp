<html>
    <head>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Bookings</title>
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
%>

<div class="container mt-5">
    <h3 class="mb-4">All User Bookings</h3>
    <table class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th>User Email</th>
                <th>Package Name</th>
                <th>Travel Date</th>
                <th>Members</th>
                <th>Booking Time</th>
            </tr>
        </thead>
        <tbody>
            <%
                try {
                    PreparedStatement ps = con.prepareStatement(
                        "SELECT b.*, p.name FROM bookings b JOIN packages p ON b.package_id = p.id"
                    );
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
            %>
                <tr>
                    <td><%= rs.getString("user_email") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getDate("travel_date") %></td>
                    <td><%= rs.getInt("members") %></td>
                    <td><%= rs.getTimestamp("booking_date") %></td>
                </tr>
            <%
                    }
                } catch (Exception e) {
                    out.println("<tr><td colspan='5'>Error: " + e + "</td></tr>");
                }
            %>
        </tbody>
    </table>
</div>

<%@ include file="includes/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


    </body>
</html>
