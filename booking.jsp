
<%@ page import="java.sql.*" %>
<%@ page session="true" %>
<%@ include file="includes/dbconnect.jsp" %>
<%@ include file="includes/header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>booking Process</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>


        <%            if (session.getAttribute("user") == null) {
                response.sendRedirect("login.jsp");
                return;
            }

            String user = (String) session.getAttribute("user");
            String email = "";  // You can retrieve email from session or DB if stored

            int packageId = Integer.parseInt(request.getParameter("packageId"));
            String packageName = "";
            double price = 0;

            try {
                PreparedStatement ps = con.prepareStatement("SELECT * FROM packages WHERE id=?");
                ps.setInt(1, packageId);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    packageName = rs.getString("name");
                    price = rs.getDouble("price");
                }
            } catch (Exception e) {
                out.println("Package Error: " + e);
            }
        %>

        <div class="container mt-5">
            <h2 class="text-center mb-4">Book Your Yatra</h2>
            <form action="bookingProcess.jsp" method="post" class="mx-auto" style="max-width: 500px;">
                <input type="hidden" name="packageId" value="<%= packageId%>">

                <div class="mb-3">
                    <label>Package Name</label>
                    <input type="text" class="form-control" value="<%= packageName%>" readonly>
                </div>
                <div class="mb-3">
                    <label>Price</label>
                    <input type="text" class="form-control" value="?<%= price%>" readonly>
                </div>
                <div class="mb-3">
                    <label>Travel Date</label>
                    <input type="date" name="travel_date" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label>Number of Members</label>
                    <input type="number" name="members" class="form-control" min="1" required>
                </div>
                <button type="submit" class="btn btn-success w-100">Confirm Booking</button>
            </form>
        </div>

        <%@ include file="includes/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
