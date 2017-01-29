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
  <title> Admin Home</title>
 </head>
 <body background="images/adminlogin.jpg">
  <div class="container">
            <div class="jumbotron">
                <center> <h1> Admin HOME</h1>
           <a href="adminhome.jsp" class="btn btn-info"> Home </a>&nbsp;&nbsp;&nbsp;
           <a href="adminlogin.jsp" class="btn btn-danger">Logout</a>&nbsp;&nbsp;&nbsp;</div><br><br><br><br>
           <div class="jumbotron">
               <h2>Users:</h2><br><center>
               <table class="table">
  <thead class="thead-inverse">
    <tr>
      <th>#</th>
      <th>User Name</th>
      <th>User ID</th></tr></thead>
  <tbody>
               <%
                   int count=0;
try{
            ResultSet rs=null;
           Connection con= connection.getConnect();
           String qry="select uname,uid from users";
PreparedStatement pst=con.prepareStatement(qry);
        rs=pst.executeQuery();
while(rs.next())
    {
        count++;
    %>
    <tr><td><%out.print(count);%></td>
        <td>
    <%=rs.getString(1)%>
        </td><td>
            <%=rs.getString(2)
%>
        </td>
    <%
    }
    %>
    <p>Total no of users=<%out.print(count);%></p>
    <%
}
catch(Exception e)
        {
    e.printStackTrace();
    }

%>

               </table></center>
<h2>Dieticians:</h2><br><center>
               <table class="table">
  <thead class="thead-inverse">
    <tr>
      <th>#</th>
      <th>Dietician Name</th>
      <th>Dietician ID</th>
      <th>Designation</th>
    </tr></thead>
  <tbody>
               <%
                   int count1=0;
try{
            ResultSet rs=null;
           Connection con= connection.getConnect();
           String qry="select dname,did,designation from dieticians";
PreparedStatement pst=con.prepareStatement(qry);
        rs=pst.executeQuery();
while(rs.next())
    {
        count1++;
    %>
    <tr><td><%out.print(count);%></td>
        <td>
    <%=rs.getString(1)%>
        </td><td>
            <%=rs.getString(2)
%>
        </td>
        <td>
            <%=rs.getString(3)
%>
        </td></tr>
    <%
    }
    %>
    <p>Total no of dieticians=<%out.print(count1);%></p>
    <%
}
catch(Exception e)
        {
    e.printStackTrace();
    }

%>
</table>
     </center>
     </div></div>
 </body>
</html>