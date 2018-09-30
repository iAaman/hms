<%@ page import="java.sql.*" %> 
<%  
    String nm=(String)session.getAttribute("userid");
    if(nm==null){
        response.sendRedirect("Login.jsp");
    }
    String amount;
    amount=(String)request.getParameter("value");
    int amt=Integer.parseInt(amount);
    if(amt==1)
    {
        amt=11500;
        session.setAttribute("gareeb",11500);
    }
    else if(amt==2)
    {    
        amt=12000;
        session.setAttribute("gareeb",12000);
    }
    else
    {
         amt=14000;
         session.setAttribute("gareeb",14000);
    }    
    /*
    if(nm != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
con =(Connection) this.getServletContext().getAttribute("mycon");
String sql="Update users set Bstatus=Y where userid="+nm;
ps = con.prepareStatement(sql);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Room Booked Successfully");
}
else
{
out.print("There is a problem in Booking");

}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
*/
%>
<html>
    <head>
        <title>NASA payment</title>
        
    </head>

    <body>
    <style>

#paymenthead
{
     width:102%;
     height:96px;
     margin-top: -66px;
     margin-left: -10px;
     background-color:#222831;
}

#head
{
    font-size:4em;
    margin-left:40px;
    color:#f96d00;
    font-weight:bold;
}


h3
{
    margin-top:-50px;
    margin-left:780px;
    color:#393e46;  
}

h1
{
    color:#393e46;
    font-size:2em;
    margin-left:24px;
}

#writ
{
    border-bottom:2px solid black;
}

#lock
{
    width:15px;
    height:15px;
    margin-left:951px;
    margin-top:-36px;
}

.det
{
    margin-left:100px;
    font-size:1.5em;
    font-weight:bold;
    color:#f96d00;
}

#data
{
    padding:6px;
    width:42%;
    margin-top:28px;
    margin-left:380px   ;
    height:168px;
    background-color:#393e46;
    border-radius:20px;
}

span
{
    width:18px;
    display:inline-block;   
}

.fis
{
    width:33px;
    display:inline-block;
}

.special
{
    color:#f2f2f2;
    font-weight:bold;
    font-size:1em;
    margin-left:33px;
}

#transac
{
    font-size:1.9em;
    color:#393e46;
    font-weight:bold;
    margin-left:380px;
    margin-top:28px;
    border-top:2px solid #404040;
    width:32%;
    padding-left:168px;
    padding-top:6px;
}

label
{
    color:#222831;
    font-size:1.2em;
    font-weight:bold;
    margin-left:420px;
}

#email
{
    margin-left:528px;
}

input
{
    border-radius:6px;
    height: 24px;
    background-color:#e2e2e2;
    color:#4873f5;
    margin-left:60px;
    margin-top:15px;
}

button
{
    width:50px;
    height:33px;
    color:#222831;
    font-weight:bold;
    background-color:#f96d00;
    margin-left:600px;
    margin-top:20px;
}

    </style>
    
        <div id="paymenthead">
            <p id="head">lero</p>
        </div>
        <div id="writ">
            <h1>Payment details </h1>
            <h3>Secure Transaction </h3>
            <img id="lock" src="lock.jpg"/>
        </div>
        <div id="data">
            <p class="det">Pay to<span class="fis"> </span>  :  <uio class="special">NASA Hotels</uio></p>
        <p class="det">User Id<span> </span>: <uio class="special"></uio> <%=nm%></p>
            <p class="det">Amount<span> </span> :   <uio class="special"><%=amt%></uio> </p>
        </div>
        <p id="transac">lero Transaction</p>
        <form action="Paydone">
            <label id="email">Email-Id :</label>     <input></input>
            <br>
            <label>Transaction password :</label>     <input type="password"></input>
            <br>
            <button>Pay!</button>
        </form>     
    </body>
</html>
