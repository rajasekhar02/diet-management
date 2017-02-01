<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.connect.connection"%>
<%
String did=request.getParameter("did");
String pwd=request.getParameter("dpwd");
try{
           Connection con= connection.getConnect();
           String qry="select * from dieticians where did='"+did+"' and password='"+pwd+"'";
PreparedStatement pst=con.prepareStatement(qry);

    ResultSet  rs=pst.executeQuery();
    if(rs.next())
    {
    response.sendRedirect("dieticianhome.jsp");
    }
else
    {
     response.sendRedirect("dieticianlogin.jsp?msg=iv");
    }
}
catch(Exception e)
        {
    e.printStackTrace();
    }

%>