<%@include file="Header1.jsp" %>
<html>
    <head>
                <style>
                    body{
                        
                        background-image: url("https://img12.deviantart.net/604d/i/2011/337/d/d/wooden_apple_wallpaper_by_janosch500-d4i2vtn.jpg");
                        
                        
                    }
                    
                    
                    
            h1{
                margin-left:582px;
                color:blue;
            } 
            
            .inputs{
                border-radius:8px;
                background-color:white;
                width: 200px;
                height: 33px;
            }
            
            .inputs:hover{
                background-color:#b3b3ff;
            }
            
            #letit{
                width:510px;
                height:500px;
                margin-top:4%;
                margin-left: 29%;
                background-color:black;
                opacity:0.6;
            }
            
            a{
                text-decoration:underline;
                font-weight:bold;
                font-size:1em;
                font-family:serif;
                color: cadetblue;
            }
            
            a:hover{
                color:white;
                font-size:1.2em;
                margin-left:-10px;
            }
            
            #savedet:hover{
                height:33px;
            }
            
            
        </style>       <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>REGISTRATION PAGE</title>        
      
    </head>
    <body>
        <h1>REGISTRATION PAGE</h1>
         <form action="Reg" method="Post">                                  
             <br>
        <div id="letit">
       <pre>
                                        
                <a href="Login.jsp"> already a member? click here to login </a>

                <input class="inputs" type="text" placeholder ="NAME" name="nm"/>

                <input class="inputs" type="text" placeholder ="EMAIL ID" name="eid"/> 

                <input class="inputs" type="text" placeholder ="ADDRESS"    name="add"/>
                                
                <input class="inputs" type="text" placeholder ="CONTACT NO." name="cno"/>

                <input class="inputs" type="text" placeholder =" USER_ID" name="uid"/>

                <input class="inputs" type="text" placeholder =" ID-PROFF-NAME" name="idproof"/>

                <input class="inputs" type="text" placeholder ="ID-NO." name="id"/>

                <input class="inputs" type="password" placeholder =" PASSWORD" name="pass"/>
                
                 <input id="savedet" type="submit" value="Save details"/> 
                                                
     

       </pre>
        </div>
         
         
         </form>
    </body>
    </html>
    <%@include file="Footer.jsp" %>