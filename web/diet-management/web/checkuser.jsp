<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.connect.connection"%>
<%@page import="java.security.MessageDigest" %>
<%
String uid=request.getParameter("uid");
String pwd=request.getParameter("upwd");
byte[] bytesofmsg=pwd.getBytes("UTF-8");
MessageDigest md=MessageDigest.getInstance("MD5");
byte[] hash=md.digest(bytesofmsg);
StringBuffer sb = new StringBuffer();
		for (byte b : hash) {
			sb.append(String.format("%02x", b & 0xff));}
try{
           Connection con= connection.getConnect();
           String qry="select * from users where uid='"+uid+"' and passwords='"+sb.toString()+"'";
PreparedStatement pst=con.prepareStatement(qry);

    ResultSet  rs=pst.executeQuery();

    if(rs.next())
    {
         session.setAttribute("uid",uid);
    response.sendRedirect("userhome.jsp");
    }
else
    {
     response.sendRedirect("userlogin.jsp?msg=iv");
    }
}
catch(Exception e)
        {
    e.printStackTrace();
    }

%>