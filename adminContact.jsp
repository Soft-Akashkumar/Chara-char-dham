<%@ page import="java.sql.*" %>

<%@ page session="true" %>
<%@ include file="includes/dbconnect.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin - Contact Messages</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>

<%
    String adminEmail = (String) session.getAttribute("admin_email");
    if (adminEmail == null) {
%>



<%@ include file="includes/header.jsp" %>

<div class="container mt-5">
    <h2>User Contact Messages</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Subject</th>
                <th>Message</th>
                <th>Sent At</th>
            </tr>
        </thead>
        <tbody>
        <%
            try {
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM contact ");

                while (rs.next()) {
        %>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("email") %></td>
                <td><%= rs.getString("subject") %></td>
                <td><%= rs.getString("message") %></td>
                <td><%= rs.getTimestamp("sent_at") %></td>
            </tr>
        <%
                }
            } catch(Exception e) {
                out.println("<tr><td colspan='6'>Error loading data: " + e.getMessage() + "</td></tr>");
            }
        %>
        </tbody>
    </table>
</div>

<%@ include file="includes/footer.jsp" %>

<%
    }
%>

</body>
</html>
