<%-- 
    Document   : index
    Created on : Feb 16, 2018, 11:39:58 AM
    Author     : Bang-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>       
        <form action="Index" method="get">
            <% int test=(int)request.getAttribute("Test");%>
        <input value="Profile" type="submit" >        
        <input type="text" value="<%=test%>">
        </form>
    </body>
</html>
