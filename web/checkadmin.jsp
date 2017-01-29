<%
String aid=request.getParameter("aid");
String pwd=request.getParameter("apwd");

if(aid.equals("admin") && pwd.equals("admin"))
    {
    response.sendRedirect("adminhome.jsp");
    }
else
    {
     response.sendRedirect("adminlogin.jsp?msg=iv");
    }
%>