<%-- 
    Document   : job
    Created on : Feb 21, 2018, 8:40:23 PM
    Author     : Bang_VNP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= request.getAttribute("Name") %></h1>
        <h2><%= request.getAttribute("Description") %></h2>
        
    </body>
</html>
