<%@ page import="java.sql.*" %>
<%@ include file="includes/dbconnect.jsp" %>

<%
    String name = request.getParameter("name");
    String description = request.getParameter("description");
    double price = Double.parseDouble(request.getParameter("price"));
    String image=request.getParameter("image");

    try {
        PreparedStatement ps = con.prepareStatement("INSERT INTO packages (name, description, price,image) VALUES (?,?, ?, ?)");
        ps.setString(1, name);
        ps.setString(2, description);
        ps.setDouble(3, price);
        ps.setString(4, image);
        ps.executeUpdate();
        response.sendRedirect("adminPackages.jsp");
    } catch (Exception e) {
        out.println("Error: " + e);
    }
%>
