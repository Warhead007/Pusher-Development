<%-- 
    Document   : index.jsp
    Created on : 21-Feb-2018, 22:00:51
    Author     : Patiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  getServletContext().getRequestDispatcher("/Profile").forward(request, response); %>
    </body>
</html>
