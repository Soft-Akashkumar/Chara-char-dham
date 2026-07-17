<%-- 
    Document   : adminLogout
    Created on : 22-May-2025, 12:32:15 am
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Logout</title>
        
    </head>
    <body>
        <%
            session.removeAttribute("admin");
            session.invalidate();
            response.sendRedirect("adminLogin.jsp");
        %>
<a href="adminLogout.jsp" class="btn btn-danger btn-sm float-end">Logout</a>

    </body>
</html>
