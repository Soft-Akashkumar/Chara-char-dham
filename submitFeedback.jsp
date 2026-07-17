<%@ page import="java.sql.*" %>
<%@ include file="includes/dbconnect.jsp" %>

<%
    try {
        int userId = Integer.parseInt(request.getParameter("user_id"));
        String message = request.getParameter("message");

        PreparedStatement ps = con.prepareStatement("INSERT INTO feedback (user_id, message) VALUES (?, ?)");
        ps.setInt(1, userId);
        ps.setString(2, message);

        int result = ps.executeUpdate();

        if (result > 0) {
%>
<script>
    alert("Feedback submitted successfully!");
    window.location = "feedback.jsp";
</script>
<%
        } else {
%>
<script>
    alert("Failed to submit feedback.");
    window.location = "feedback.jsp";
</script>
<%
        }
    } catch(Exception e) {
%>
<script>
    alert("Error: <%= e.getMessage() %>");
    window.location = "feedback.jsp";
</script>
<%
    }
%>
