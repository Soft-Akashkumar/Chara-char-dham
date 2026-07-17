<%@ page import="java.sql.*" %>
<%@ page session="true" %>
<%@ include file="includes/dbconnect.jsp" %>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    try {
        PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
        ps.setString(1, email);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            // Set session attributes
            session.setAttribute("user_id", rs.getInt("id"));
            session.setAttribute("name", rs.getString("name"));
            session.setAttribute("email", rs.getString("email"));

            // Redirect to user dashboard
            response.sendRedirect("userDashboard.jsp");
        } else {
%>
            <script>
                alert("Invalid email or password. Please try again.");
                window.location = "login.jsp";
            </script>
<%
        }
    } catch (Exception e) {
%>
        <script>
            alert("Error: <%= e.getMessage() %>");
            window.location = "login.jsp";
        </script>
<%
    }
%>
