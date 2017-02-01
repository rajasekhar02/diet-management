<%@page import="com.connect.connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String dname=request.getParameter("dname");
String did=request.getParameter("did");
String designation=request.getParameter("designation");
String password=request.getParameter("dpwd");
String cpwd=request.getParameter("cpwd");
String exp=request.getParameter("exp");    
if(password.equals(cpwd))
{
try{

           Connection con= connection.getConnect();
PreparedStatement pst=con.prepareStatement("insert into dieticians(did,password,dname,designation,exp)values(?,?,?,?,?)" );


pst.setString(1,did);
pst.setString(2,password);
pst.setString(3,dname);
pst.setString(4,designation);
pst.setString(5,exp);
    
int i=pst.executeUpdate();
if(i>=1)
    {

    response.sendRedirect("dieticianlogin.jsp?msg=v");
   }
}
catch(Exception e)
        {
       response.sendRedirect("dieticianregister.jsp?msg=aadded");
    e.printStackTrace();
}
}
else
response.sendRedirect("dieticianregister.jsp?msg=diff");
%>
