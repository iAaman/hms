<%-- 
    Document   : Header.jsp
    Created on : Sep 7, 2017, 12:47:10 PM
    Author     : hp-u
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            
                      ul {
    list-style-type: none;
    margin: 0;
    padding: 12px;
    overflow: hidden;
    background-color: darkgray;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}







            
            
        </style>
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HEADER</title>
    </head>
    <body>
      
<ul>
  <li><a href="Home.jsp">Home</a></li>
  <li><a href="#news">News</a></li>
  
  <li class="dropdown">
      <a href="javascript:void(0)" class="dropbtn">About Us</a>
      <div class="dropdown-content">
        <a href="#">Who Are We</a>
        <a href="Experiance.jsp" target="_self">Our Brands</a>
        <a href="#">Investors</a>
    </div>
  </li>
    <li style="float:right"><a class="active" href="#about">Contact Us</a></li>
  
</ul>

    </body>
</html>
