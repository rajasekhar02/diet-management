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
 </head>
 <body>
     <div class="container">
                                <table class="table">
  <tbody>
                                    <%
                              String msg= request.getParameter("msg");
          if(msg!=null)
              {
           if(msg.equals("added"))
               {
                         %>
                          <h3 class="alert alert-success">Password Changed successfully...</h3>
                          <% }
           else
               {
               %>
           

               <h3 class="alert alert-warning">Invalid Password...</h3>
           
               <%
               }
             }
           %>
                      
               <%
          
                             try{
                                 ResultSet rs=null;
            String uid=session.getAttribute("uid").toString();
            Connection con= connection.getConnect();
           String qry="select * from users where uid='"+uid+"'";
PreparedStatement pst=con.prepareStatement(qry);

        rs=pst.executeQuery();
if(rs.next())
{
    %>
   
    <tr><td>Name      </td><td><% out.print(rs.getString("uname"));%></td></tr>
    <tr><td>User ID</td><td><% out.print(rs.getString("uid"));%></td></tr>
    <tr><td>Date Of Birth</td><td><% out.print(rs.getString("dob"));%></td></tr>
    <form action="pwordchanged.jsp" method="post">
            <tr><td>Old Password</td><td><input type="password" name="oldpwd"></tr>        
            <tr><td>New Password</td><td><input type="password" name="newpwd"></tr>
            <tr><td>Confirm Password</td><td><input type="password" name="cpwd"></tr>
            <tr><td colspan="2"><center><input type="submit" value="Change Password"></center></form>
                         <%
}
                             }
catch(Exception e)
        {
    e.printStackTrace();
    }

                         %>
    
                         </tbody> </table></div>    
     
 </body>
</html>