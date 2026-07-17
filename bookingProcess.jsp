<%@ page import="java.sql.*" %>
<%@ page session="true" %>
<%@ include file="includes/dbconnect.jsp" %>

<%
    String email = ""; // Use session or database to fetch
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    int packageId = Integer.parseInt(request.getParameter("packageId"));
    String travelDate = request.getParameter("travel_date");
    int members = Integer.parseInt(request.getParameter("members"));

    try {
        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO bookings (user_email, package_id, travel_date, members) VALUES (?, ?, ?, ?)"
        );
        ps.setString(1, email);  // replace with actual email from session if stored
        ps.setInt(2, packageId);
        ps.setString(3, travelDate);
        ps.setInt(4, members);

        int i = ps.executeUpdate();
        if (i > 0) {
            out.println("<script>alert('Booking successful!'); window.location='index.jsp';</script>");
             response.sendRedirect("feedback.jsp");
        } else {
            out.println("<script>alert('Booking failed.'); window.location='booking.jsp';</script>");
        }
    } catch (Exception e) {
        out.println("Booking Error: " + e);
    }
%>
