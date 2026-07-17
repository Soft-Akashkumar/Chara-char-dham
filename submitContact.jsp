<%@ page import="java.sql.*" %>
<%@ include file="includes/dbconnect.jsp" %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String subject = request.getParameter("subject");
    String message = request.getParameter("message");
    String sent_at = request.getParameter("sent_at");

    try {
        PreparedStatement ps = con.prepareStatement("INSERT INTO contact (name, email, subject,message,sent_at) VALUES (?, ?, ?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, subject);      
        ps.setString(4, message);
        ps.setString(5, sent_at);
        ps.executeUpdate();
        out.println("<script>alert('Message sent successfully!'); location.href='index.jsp';</script>");
    } catch (Exception e) {
        out.println("Error: " + e);
    }
%>
