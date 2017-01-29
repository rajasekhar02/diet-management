<%@page import="java.sql.ResultSet"%>
<%@page import="com.connect.connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
     <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <title> User Home</title>
 </head> 
 <body background="images/userhome.jpeg">
  <div class="container">
            <div class="jumbotron">
                <center> <h1> User HOME</h1>
                    <a href="uhome.jsp" class="btn btn-info" target="fr"> Home </a>
           <a href="userprofile.jsp" class="btn btn-info" target="fr">Profile</a>
           <a href="bmi.jsp" class="btn btn-info" target="fr">BMI</a>
           <a href="caloric.jsp" class="btn btn-info" target="fr">Calculators</a>
           <a href="chart.jsp" class="btn btn-info" target="fr">Report</a>
           <a href="schedule.jsp" class="btn btn-info" target="fr">Schedule</a>
           
           <a href="userlogin.jsp" class="btn btn-danger">Logout</a></div><br><br><br><br>
           <div class="jumbotron"><frameset cols="650">
                   <iframe  src="uhome.jsp" name="fr" id="fr" width="650" height="650" frameborder="0"></iframe>
                   </frameset> 
               <div style="width: 400px; background-color: #999; z-index: 10; position: fixed; right: 0; top:220; height: 400px;">
                   <p><embed wmode="transparent" src="http://www.xatech.com/web_gear/chat/chat.swf" quality="high" width="400" height="400" name="chat" FlashVars="id=218418012" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://xat.com/update_flash.php" /><br><small><a target="_BLANK" href="http://xat.com/web_gear/?cb">Get your own Chat Box!</a> <a target="_BLANK" href="http://xat.com/web_gear/chat/go_large.php?id=218418012">Go Large!</a></small><br>

</p>
</div>
           </div></div>
 </body>
</html>