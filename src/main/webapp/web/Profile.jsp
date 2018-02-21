<%-- 
    Document   : jobform
    Created on : Feb 19, 2018, 8:56:11 PM
    Author     : nuswee43
--%>

<%@page import="Model.ProfileModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Pusher</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
              crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
              crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
        <style>
            h2 {

                border: 1px solid grey;
                position: relative;
                left: 30px;
                padding: 60px;
                padding-bottom: 20px;
                margin-left: 80px;
                margin: 40px;
            }
        </style>
    </head>

    <body>
    <dir style="border-bottom: 1px solid;color: grey;padding:1%">
        <a href="">
            <img src="https://www.picz.in.th/images/2018/02/19/28176315_1700763773319130_1653912373_n.png" width="120" height="100">
            <br>
        </a>
        <span><a href="">Explorer</a></span>
        <span><a href="">Catagory</a></span>

        <a href="">
            <img src="https://www.picz.in.th/images/2018/02/20/bubble-chat-icon-74266.png" width="50" height="50" style="position:absolute;right: 25%;top:16%;">
        </a>
        <a href="">
            <img src="https://www.picz.in.th/images/2018/02/20/notification-outline.png" width="30" height="30" style="position:absolute;right: 21%;top:17.5%;">
        </a>
        <a href="">
            <img src="https://www.picz.in.th/images/2018/02/20/Ei-search.svg.png" width="50" height="50" style="position:absolute;right: 16%;top:16%;">
        </a>
        <a href="">
            <img src="https://www.picz.in.th/images/2018/02/20/18835637_1369059323142553_2330143378752656765_n.png" width="100" height="100"
                 style="position:absolute;right: 3%;top: 7%;">
        </a>
    </dir>
    <div style="border-style: solid;width: 80%;margin-left: 11em;">
        <img style="margin: 10px;" src="https://www.picz.in.th/images/2018/02/20/18835637_1369059323142553_2330143378752656765_n.png" width="100" height="100">
        <%= request.getAttribute("username")%>
        <br>
        <div style="text-align: right; margin-right: 10px">
            <button>CREATE PROJECT</button>
            <button>CREATE JOB</button>
        </div>
        <br><br>
        <div style="border-style: solid;width: 80%;margin-left: 7em;height: 10em">
            <h1>My Project</h1>
        </div>
        <br>
        <br>

        <div style="border-style: solid;width: 80%;margin-left: 7em;height: 10em">
<h1>My Post</h1>
        </div>

        <br>
        <br>
    </div>
</body>
<footer>
    <div style="border-top: 2px solid;color: grey; margin-top: 60px;">

    </div>
</footer>

</html>