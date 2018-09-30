<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
String nm=(String)session.getAttribute("userid");
String emailid = request.getParameter("emailid");
String phoneno=request.getParameter("phoneno");
String address=request.getParameter("address");
if(nm != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
con =(Connection) this.getServletContext().getAttribute("mycon");
String sql="Update users set emailid=?,phoneno=?,address=? where userid="+nm;
ps = con.prepareStatement(sql);
ps.setString(1,emailid);
ps.setString(2, phoneno);
ps.setString(3, address);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
out.println("<a href=User.jsp>BACK</a>");
}
else
{
out.print("There is a problem in updating Record.");
  out.println("<a href=User.jsp>BACK</a>");
}
 

} 
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}

%>