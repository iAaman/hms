<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("nm");
Connection con=(Connection) this.getServletContext().getAttribute("mycon");
String dbName = "users";
String userid = "id";
String password = "pas"; 

Statement stmt = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>userid</b></td>
<td><b>password</b></td>
<td><b>Name</b></td>
<td><b>Emailid</b></td>
<td><b>Phoneno.</b></td>
<td><b>Address</b></td>
<td><b>Idproof</b></td>
<td><b>Idno</b></td>
</tr>
<%
try{ 
con=(Connection) this.getServletContext().getAttribute("mycon");
stmt=con.createStatement();

id = request.getParameter("nm");
String sql ="SELECT * FROM users ";

resultSet = stmt.executeQuery(sql);
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