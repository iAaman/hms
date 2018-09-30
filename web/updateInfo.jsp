<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String nm=(String)session.getAttribute("userid");
Connection con;

try {
    
Statement stmt = null;

ResultSet resultSet = null;
con =(Connection) this.getServletContext().getAttribute("mycon");
stmt = con.createStatement();


String sql ="select * from users where userid="+nm;
resultSet = stmt.executeQuery(sql);
out.println("connection sucessfull.......");
while(resultSet.next()){

%>

<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>

<form method="post" action="updateprocess.jsp">



Email Id:<br>
<input type="text" name="emailid" value="<%=resultSet.getString("emailid") %>">
<br>

PHONE NO:<br>
<input type="text" name="phoneno" value="<%=resultSet.getString("phoneno") %>">
<br>

ADDRESS:<br>
<input type="text" name="address" value="<%=resultSet.getString("address") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>