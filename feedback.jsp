<%@ page session="true" %>
<%@ include file="includes/dbconnect.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback - Chardham Yatra</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>
<%@ include file="includes/header.jsp" %>

<%
    Integer userId = (Integer) session.getAttribute("user_id");
    if (userId == null) {
%>
    <script>
        alert("Please log in first to submit feedback.");
        window.location = "login.jsp";
    </script>
<%
    } else {
%>

<div class="container mt-5">
    <h2>Submit Your Feedback</h2>
 <form action="submitFeedback.jsp" method="post">
    <input type="hidden" name="user_id" value="<%= userId %>">
    <div class="mb-3">
        <label for="message" class="form-label">Your Feedback</label>
        <textarea class="form-control" name="message" rows="5" required></textarea>
    </div>
    <button type="submit" class="btn btn-success">Submit Feedback</button>
</form>

</div>

<% } %>

<%@ include file="includes/footer.jsp" %>
</body>
</html>
