<%-- 
    Document   : jobform
    Created on : Feb 19, 2018, 8:56:11 PM
    Author     : nuswee43
--%>

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

        <input type="button" value="Explorer" id="explorer" style="position:relative;left:13%;">
        <input type="button" value="Catagory" id="catagory" style="position:relative;left:15%;">

        <a href="">
            <img src="https://www.picz.in.th/images/2018/02/20/bubble-chat-icon-74266.png" width="50" height="50" style="position:absolute;right: 25%;top:16%;">
        </a>
        <a href="">
            <img src="https://www.picz.in.th/images/2018/02/20/notification-outline.png" width="30" height="30" style="position:absolute;right: 21%;top:17.5%;">
        </a>
        <a href="">
            <img src="https://www.picz.in.th/images/2018/02/20/Ei-search.svg.png" width="50" height="50" style="position:absolute;right: 16%;top:16%;">
        </a>
        <a href="/Profile">
            <img src="https://www.picz.in.th/images/2018/02/20/18835637_1369059323142553_2330143378752656765_n.png" width="100" height="100"
                 style="position:absolute;right: 3%;top: 7%;">
        </a>
    </dir>

    <div style="border-style: solid;width: 80%;margin-left: 11em;padding: 10px">

            <form action="/Pusher/JobForm" method="POST">
        <h1>JOB NAME</h1>
        <input type="text" name="name" placeholder="Jobname" required="">
        <h1>DESCRIPTION</h1>
        <textarea placeholder="Description" style="resize: none;"  name="description" rows="10" cols="100"required="" ></textarea>
        <br>
        <br>
        <input type="submit" value="OK" >
    </form>
        <br>
        <br>
    </div>

</body>
<footer>
    <div style="border-top: 2px solid;color: grey; margin-top: 60px;">

    </div>
</footer>

</html>