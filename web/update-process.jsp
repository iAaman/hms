<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String emailid = request.getParameter("emailid");
String phoneno=request.getParameter("phoneno");
String address=request.getParameter("address");
{
%>
<%
    String nm=(String)session.getAttribute("userid");
out.println("working properly.............1111");
{
%>
    
    <%
        }Connection con=null;
         PreparedStatement ps = null;
         ResultSet rs = null;

con =(Connection) this.getServletContext().getAttribute("mycon");
{
        %>
        
        <%
            }if(nm != null)
{
try
{
out.println("working properly.............2222");
String sql="Update users set emailid=?,phoneno=?,address=? where userid="+nm;

ps = con.prepareStatement(sql);

out.println("working properly.............3333");
ps.setString(1,emailid);
ps.setString(2, phoneno);
ps.setString(3, address);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
{
        %>
        <%
        }con.close();
        %>