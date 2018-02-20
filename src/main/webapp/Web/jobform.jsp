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
    <dir style="border-bottom: 1px solid;color: grey;">
        <a href="">
            <img src="https://www.picz.in.th/images/2018/02/19/28176315_1700763773319130_1653912373_n.png" width="120" height="100">
            <br>
        </a>
        <input type="button" value="Explorer" id="explorer" style="position:relative;left:13%;">
        <input type="button" value="Catagory" id="catagory" style="position:relative;left:15%;">
        <a href="">
            <img src="https://www.picz.in.th/images/2018/02/20/bubble-chat-icon-74266.png" width="50" height="50" style="position:absolute;right: 25%;top:13%;">
        </a>
        <a href="">
            <img src="https://www.picz.in.th/images/2018/02/20/notification-outline.png" width="30" height="30" style="position:absolute;right: 21%;top:15%;">
        </a>
        <a href="">
            <img src="https://www.picz.in.th/images/2018/02/20/Ei-search.svg.png" width="50" height="50" style="position:absolute;right: 16%;top:13.5%;">
        </a>
        <a href="">
            <img src="https://www.picz.in.th/images/2018/02/20/18835637_1369059323142553_2330143378752656765_n.png" width="100" height="100"
                style="position:absolute;right: 3%;top: 3%;">
        </a>
    </dir>
    <form enctype="multipart/form-data" action="/Pusher/AddJobServlet" method="POST">
        <h1 style="padding-left: 50px;">Create Job</h1>
        <div style="border: 1px solid;border-color: grey;">
            <p style="padding-left: 80px;font-size: 25px;padding-top: 30px;">Job Name
                <input type="text" name="name">
            </p>
            <h2>
                <input type="file" name="pic1" value="pic1">
                <input type="file" name="pic2" value="pic2">
                <input type="file" name="pic3" value="pic3">
                <input type="file" name="pic4" value="pic4">
                <input type="file" name="pic5" value="pic5">
                <input type="file" name="pic6" value="pic6">
                <input type="file" name="pic7" value="pic7">
                <input type="file" name="pic8" value="pic8">
                <input type="file" name="pic9" value="pic9">
                <input style="padding-bottom: 40px;" type="file" name="photo9">
                <label style="font-size: 16px;">Up to 9 picture</label>
            </h2>

            <label style="font-size: 20px;padding-left: 60px;">Description</label>
            <br>
            <textarea placeholder="Description" style="resize: none;position: relative;left: 60px;" rows="5" name="description">
        </textarea>
            <br>
            <br>
            <br>
            <input type="submit" value="OK" style="position: absolute;right: 40px;">
            <br>
            <br>
        </div>
    </form>


</body>
<footer>
    <div style="border-top: 2px solid;color: grey; margin: 60px;">
        Footer
    </div>
</footer>

</html>