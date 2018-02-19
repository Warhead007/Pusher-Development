<%-- 
    Document   : jobform
    Created on : 19-Feb-2018, 13:04:47
    Author     : Patiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Job form</title>
</head>
<body>
    <form enctype="multipart/form-data" action="/Pusher/AddJobServlet" method="POST">
        <input type="text" placeholder="Job name" name="name"><br>
        
        <input type="file" name="picture"><br>
        <textarea placeholder="Description" style="resize: none" rows="5" name="description" >
        </textarea><br>
        <br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
