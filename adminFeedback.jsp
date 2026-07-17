<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@ page import="java.sql.*" %>
<%@ include file="includes/dbconnect.jsp" %>
<%@ include file="includes/header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin Feedback</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>


        <%            if (session.getAttribute("admin") == null) {
                response.sendRedirect("adminLogin.jsp");
                return;
            }
        %>

        <div class="container mt-5">
            <h3 class="mb-4 text-center">User Feedback</h3>
            <table class="table table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Message</th>
                        <th>Submitted On</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        PreparedStatement ps = con.prepareStatement(
                                "SELECT u.name, u.email, f.message, f.submitted_at "
                                + "FROM feedback f JOIN users u ON f.user_id = u.id ORDER BY f.submitted_at DESC"
                        );

                        ResultSet rs = ps.executeQuery();
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString("name")%></td>
                        <td><%= rs.getString("email")%></td>
                        <td><%= rs.getString("message")%></td>
                        <td><%= rs.getTimestamp("submitted_at")%></td>

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
