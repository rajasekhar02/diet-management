<%@page import="java.sql.ResultSet"%>
<%@page import="com.connect.connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String oldpwd=request.getParameter("oldpwd");
    String newpwd=request.getParameter("newpwd");
    String cpwd=request.getParameter("cpwd");
if(newpwd.equals(cpwd))
{
    try{
        String uid=session.getAttribute("uid").toString();
        
            Connection con= connection.getConnect();
           String qry="select * from users where uid='"+uid+"'";
PreparedStatement pst=con.prepareStatement(qry);
ResultSet rs=pst.executeQuery();
if(rs.next())

if(oldpwd.equals(rs.getString("password"))){
try{
String qry1="update users set password='"+newpwd+"' where uid='"+uid+"'";
PreparedStatement pst1=con.prepareStatement(qry1);
int r=pst1.executeUpdate();
 if(r>=1)
 response.sendRedirect("profile.jsp?msg=added");
    else
     response.sendRedirect("profile.jsp?msg=iv");
            
     }
catch(Exception e){
    e.printStackTrace();
}
}
    }
    catch(Exception e){
        e.printStackTrace();
    }
}
else
    response.sendRedirect("profile.jsp?msg=iv");
%>
    