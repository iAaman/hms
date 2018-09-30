  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
#header{
    width:105%;
    height:115px;
    background-color:#46466e;
    padding-left: 5px;
    padding-top: 2px;
    margin-left:-8px;
    margin-top: -8px;
    position: fixed;
}            
                     
#headimg
{
    margin-left:50px;
    margin-top: 10px;
    width:150px;
    height:78px;
}

#prfpic{
    height:20px;
    width:30px;
}
#tab
{
    width:40%;
    margin-left:420px;
    height:46px;
    margin-top:-33px;
    background-color: blanchedalmond;
    border-top-right-radius:20px;
    border-top-left-radius:20px;
}

li{
    color: white;
    font-size:1.5em;
    border-right:1px solid white;
    display:inline-block;
    text-align:center;
    padding-top:6px;
    padding-right:10px;
    margin-top:4px;
    padding-left:10px;
}

li:hover
{
    background-color: #cccccc;
    height:33px;
}

a{
    text-decoration:none;
}


            
            
        </style>
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HEADER</title>
    </head>
    <body>
      <div id="header">
            <img id="headimg" src="nasaheader.png"/>
           <div id="tab">
                <ul>
                    <li> <a href="Home.jsp">Home</a></li>
                    <li> <a href="Login.jsp">Login</a></li>
                    <li> <a href="Register.jsp">Register</a></li>
                    <li> <a href="Experiance.jsp">About Us</a></li>
                    <li> <a href="AdminLogin.jsp">AdminLogin</a></li>
                </ul>
            
            </div>
        </div>


    </body>
</html>
