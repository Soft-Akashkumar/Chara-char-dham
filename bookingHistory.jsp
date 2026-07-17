<%@ page import="java.sql.*" %>
<%@ page session="true" %>
<%@ include file="includes/dbconnect.jsp" %>
<%@ include file="includes/header.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking HIstory</title>
    </head>
    <body>
     

        <%
            if (session.getAttribute("user") == null) {
                response.sendRedirect("login.jsp");
                return;
            }

            String userEmail = ""; // Replace with session-stored email when you store it at login

        %>

        <div class="container mt-5">
            <h2 class="text-center mb-4">Your Booking History</h2>
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>Package Name</th>
                        <th>Travel Date</th>
                        <th>Members</th>
                        <th>Booking Date</th>
                    </tr>
                </thead>
                <tbody>
                    <%            try {
                            String query = "SELECT p.name, b.travel_date, b.members, b.booking_date "
                                    + "FROM bookings b JOIN packages p ON b.package_id = p.id "
                                    + "WHERE b.user_email = ?";
                            PreparedStatement ps = con.prepareStatement(query);
                            ps.setString(1, userEmail); // Set actual user email here
                            ResultSet rs = ps.executeQuery();

                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString("name")%></td>
                        <td><%= rs.getDate("travel_date")%></td>
                        <td><%= rs.getInt("members")%></td>
                        <td><%= rs.getTimestamp("booking_date")%></td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            out.println("<tr><td colspan='4'>Error loading bookings: " + e + "</td></tr>");
                        }
                    %>
                </tbody>
            </table>
        </div>

        <%@ include file="includes/footer.jsp" %>

    </body>
</html>
