<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>userid</b></td>
<td><b>Name</b></td>
<td><b>Emailid</b></td>
<td><b>Phoneno.</b></td>
<td><b>Address</b></td>
<td><b>Idproof</b></td>
<td><b>Idno</b></td>
</tr>
<%
   String nm=(String)session.getAttribute("userid");
Connection con=(Connection) this.getServletContext().getAttribute("mycon"); 
PreparedStatement ps;
ResultSet resultSet = null;

try{ 
con=(Connection) this.getServletContext().getAttribute("mycon");

ps=con.prepareStatement("SELECT * FROM users where userid=?");
ps.setString(1,nm);

ps.setString(1,nm);
 resultSet=ps.executeQuery();
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("userid") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("emailid") %></td>
<td><%=resultSet.getString("phoneno") %></td>
<td><%=resultSet.getString("Address") %></td>
<td><%=resultSet.getString("idproof") %></td>
<td><%=resultSet.getString("idno") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>