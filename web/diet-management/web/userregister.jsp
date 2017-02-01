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
        <title>User Registration</title>
        <script type="text/javascript">
            
                          function checkPasswords(){
                              var x=document.getElementById('cpwd').value;
                              var y=document.getElementById('upwd').value;
                              var z=document.getElementById('check').value;
                            if(x!=y||x!=0||y!=0)
                                  alert("passwords donot match");
                                  z.value=0;
                          }
                      </script>

    </head>
    
    <body background="images/userregister.jpg">
    <div class="container">
<div style="background:transparent !important" class="jumbotron">
        <h1> <center> <div class="well"><font color="orange"> User Registration</font></div></center></h1>
        
            <center>
            <a href="home.jsp" class="btn btn-info"> Home </a>
            <a href="userlogin.jsp" class="btn btn-info"> login </a><br></center>
           </div></div>
             <div class="container">
            <div class="jumbotron">
                <center>
                    <form action="checkuserregister.jsp"  method="post" >
           <table border="0">
               
           <%

          String msg= request.getParameter("msg");
          if(msg!=null)
              {
           if(msg.equals("diff"))
               {



           %>


           <tr>

               <th colspan="2"><center><font color="red">Please enter same passwords!</font></center></th>
           </tr>


           <% }
           else if(msg.equals("aadded")){
             %>


           <tr>

               <th colspan="2"><center><font color="red">please enter all fields!</font></center></th>
           </tr>


           <%  
             }
              }
           %>

           <tr><td> Enter Full Name:</td><td> <input type="text" name="uname" required></td></tr>
           <tr><td> Enter Date of Birth:</td><td> 
  <input type="date" name="bday"></td></tr>
           <tr><td>Blood Pressure:</td><td><input type="radio" name="bp" value="yes">Yes &nbsp;<input type="radio" checked name="bp" value="no">No</td></tr> 
           <tr><td>Sugar:</td><td><input type="radio" name="sugar" value="yes">Yes &nbsp;<input type="radio" checked name="sugar" value="no">No</td></tr> 
           <tr><td>Gastric Trouble:</td><td><input type="radio" name="gas" value="yes">Yes &nbsp;<input type="radio" checked name="gas" value="no">No</td></tr> 
           <tr><td>
                   Enter User Id: </td><td><input type="text" name="uid" id="uid" required></td></tr>
               <tr><td>
  Enter Password: </td><td><input type="password" name="cpwd" id="cpwd" on></td></tr>
                <tr><td>
                        Confirm Password: </td><td><input type="password" name="upwd" id="upwd"></td></tr>
              <tr>
                      <tr><td>
                          </td><td><input type="checkbox" name="check" id="check" onclick="checkPasswords()" onselect="document.getElementByIn("sub").style.visibility="hidden"">
                            if agree to terms and conditions<br>
                        </td></tr>
              <tr><th colspan="2">
                      
              <center><input type="submit" id="sub" value="Submit"  ></center></th></tr>
           </table>
            </form> 
</div></div>    </body>
</html>