<%@ page import="java.sql.*" %>
<%@ include file="includes/dbconnect.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Admin - View Feedback</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>
<%--<jsp:include page="adminNavbar.jsp" />--%>
<div class="container mt-5">
    <h2>User Feedback</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Feedback ID</th>
                <th>User ID</th>
                <th>Message</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
        <%
            try {
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM feedback ORDER BY submitted_at DESC");

                while(rs.next()) {
        %>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getInt("user_id") %></td>
                <td><%= rs.getString("message") %></td>
                <td><%= rs.getTimestamp("submitted_at") %></td>
            </tr>
        <%
                }
            } catch(Exception e) {
                out.println("Error: " + e);
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
