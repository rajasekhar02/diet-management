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
        <title>User Login</title>
    </head>
    
    <body background="images/userlogin.jpg">
    <div class="container">
<div style="background:transparent !important" class="jumbotron">


        <h1> <center> <div class="well"><font color="orange"> User Login</font></div></center></h1>
        <form  action="checkuser.jsp" method="post">
            <center>
            <a href="home.jsp" class="btn btn-info"> Home </a>
            <a href="userregister.jsp" class="btn btn-info"> Register </a><br></center>
           </div></div>
             <div class="container">
            <div class="jumbotron">
                <center>
           <table border="0">
               
           <%

          String msg= request.getParameter("msg");
          if(msg!=null)
              {
           if(msg.equals("iv"))
               {



           %>


           <tr>

               <th colspan="2"><center><font color="red">Invalid UserName/Password</font></center></th>
           </tr>


           <% }
           else
           {%>
           <tr>

               <th colspan="2"><center><font color="green">Registered successfully! Please Login!</font></center></th>
           </tr>
           <%  }
              }
           %>

           <tr><td> Enter User Id:</td><td> <input type="text" name="uid"></td></tr>
               <tr><td>
  Enter Password: </td><td><input type="password" name="upwd"></td></tr>
               <tr><th colspan="2">
               <center><input type="submit" value="Login"></center></th></tr>
           </table>
            
</div></div></form>    </center> </body>
</html>