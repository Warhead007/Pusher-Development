<%-- 
    Document   : Profile
    Created on : Feb 16, 2018, 5:33:25 PM
    Author     : Bang-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <dir>
        <img src="http://fb1-dk.lnwfile.com/dtx5jt.jpg" width="80" height="80">

        <input type="button" value="Expliorar" id="expliorar" >
        <input type="button" value="Catagory" id="catagory" >
        <dir>            
            <%--<input type="button" <%--value="<%=System.out.print("name userTest")%>"--%>
            <h3><%= request.getAttribute("username")%> <h3>                
                    </dir>   
                    <form action="AddJobServlet" method="get">
                        <input type="button" value="Create" id="create">
                        <input type="submit" value="JOB">
                    </form>
                    </dir>
                    </body>
                    </html>
