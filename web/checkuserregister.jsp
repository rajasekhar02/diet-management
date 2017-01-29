<%@page import="java.security.MessageDigest"%>
<%@page import="com.connect.connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
String uname=request.getParameter("uname");
String uid=request.getParameter("uid");
String bday=request.getParameter("bday");
String bp=request.getParameter("bp");
String sugar=request.getParameter("sugar");
String gas=request.getParameter("gas");
String password=request.getParameter("upwd");
String cpwd=request.getParameter("cpwd");
byte[] bytesofmsg=cpwd.getBytes("UTF-8");
MessageDigest md=MessageDigest.getInstance("MD5");
byte[] hash=md.digest(bytesofmsg);
StringBuffer sb = new StringBuffer();
		for (byte b : hash) {
			sb.append(String.format("%02x", b & 0xff));}

    
if(password.equals(cpwd))
{
try{

           Connection con= connection.getConnect();
PreparedStatement pst=con.prepareStatement("insert into users(uid,passwords,uname,dob,bp,sugar,gas)values(?,?,?,?,?,?,?)" );


pst.setString(1,uid);
pst.setString(2,sb.toString());
pst.setString(3,uname);
pst.setString(4,bday);
if(bp.equals("yes"))
pst.setString(5,"1");
else
pst.setString(5,"0");    
if(sugar.equals("yes"))
pst.setString(6,"1");
else
pst.setString(6,"0");    
if(gas.equals("yes"))
pst.setString(7,"1");
else
pst.setString(7,"0");    
int i=pst.executeUpdate();
if(i>=1)
    {

    response.sendRedirect("userlogin.jsp?msg=v");
   }
}
catch(Exception e)
        {
       response.sendRedirect("userregister.jsp?msg=aadded");
    e.printStackTrace();
}
}
else
response.sendRedirect("userregister.jsp?msg=diff");
%>
