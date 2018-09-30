<%@include file="Header1.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PAGE</title>
    <form action="CheckAdmin" method="post">
        <link type="text/css" rel="stylesheet" href="newcss.css">
    <</head>
    <body>
        <pre>
        
        <div id="log">
         <input class="entryin" type="text" placeholder="Userid" name="uid"/>
     
         <input class="entryin" type="password" placeholder="Password" name="pass"/>
         <input id="submit" type="submit" value="SUBMIT"/>
        </div>
        </body>
</html>
<%@include file="Footer.jsp" %>
  