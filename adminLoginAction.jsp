<%@ page import="java.sql.*" %>
<%@ include file="includes/dbconnect.jsp" %>

<%
    String username  = request.getParameter("username");
    String password = request.getParameter("password");

    try {
        PreparedStatement ps = con.prepareStatement("SELECT * FROM admin WHERE username =? AND password=?");
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            session.setAttribute("admin", username);
            response.sendRedirect("adminDashboard.jsp");
        } else {
            out.println("<script>alert('Invalid credentials!'); window.location='adminLogin.jsp';</script>");
        }
    } catch (Exception e) {
        out.println("Error: " + e);
    }
%>
