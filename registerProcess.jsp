<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ include file="includes/dbconnect.jsp" %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String mobile = request.getParameter("mobile");
    String address = request.getParameter("address");

    try {

        // Check if email already exists
        PreparedStatement check = con.prepareStatement("SELECT * FROM users WHERE email=?");
        check.setString(1, email);

        ResultSet rs = check.executeQuery();

        if (rs.next()) {
%>
            <script>
                alert("Email already exists!");
                window.location = "register.jsp";
            </script>
<%
        } else {

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO users(name,email,password,phone,address) VALUES(?,?,?,?,?)"
            );

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, mobile);
            ps.setString(5, address);

            int i = ps.executeUpdate();

            if (i > 0) {
%>
                <script>
                    alert("Registration Successful!");
                    window.location = "login.jsp";
                </script>
<%
            } else {
%>
                <script>
                    alert("Registration Failed!");
                    window.location = "register.jsp";
                </script>
<%
            }

            ps.close();
        }

        rs.close();
        check.close();
        con.close();

    } catch (Exception e) {
        e.printStackTrace();
%>
        <script>
            alert("Error: <%= e.getMessage() %>");
            window.location = "register.jsp";
        </script>
<%
    }
%>