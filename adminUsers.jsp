
 <%@ page import="java.sql.*" %>
        <%@ include file="includes/dbconnect.jsp" %>
        <%@ include file="includes/header.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin users</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>
       
        <%
            if (session.getAttribute("admin") == null) {
                response.sendRedirect("adminLogin.jsp");
                return;
            }
        %>

        <div class="container mt-5">
            <h3 class="mb-4 text-center">Registered Users</h3>
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Registered On</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        PreparedStatement ps = con.prepareStatement("SELECT * FROM users");
                        ResultSet rs = ps.executeQuery();
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getInt("id")%></td>
                        <td><%= rs.getString("name")%></td>
                        <td><%= rs.getString("email")%></td>
                        <td><%= rs.getTimestamp("created_at")%></td>
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
