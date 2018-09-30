<%@page import="javax.websocket.Session"%>
<%@page import="java.util.ArrayList"%>
<%
int n=0;
ArrayList list=(ArrayList)session.getAttribute("cart");
if(list!=null)
        n=list.size();
%>
<% 
    String obj1=(String)session.getAttribute("Adminid");
    //String pas=(String)session.getAttribute("pas");
    if(obj1==null){
        response.sendRedirect("AdminLogin.jsp");
    }
    long val=session.getCreationTime();
    java.util.Date dt=new java.util.Date(val);
%>

<html>
    
    <head>
        <style>
            #header{
    width:105%;
    height:100px;
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
    width:35%;
    margin-left:420px;
    height:60px;
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
#sd{
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

    
    
    
    
}

#ds{
               margin-top:23%;
               width:105%;
               height:60%;
               background-color: khaki;
               opacity:0.6;
               text-align: center;
                
                   
            
                
                
                
                
            }   
            
            
            .entry{
                
                        width:120px;
                        height:40px;
                        border-radius:12px;
                        margin-left:74px;
                        background-color: #bdbdd7;
                        color:black;
                        border:#020202;

            }
           .entry:hover
{
    background-color: #f1f1f1;
    height:50px;
}

             
            
            
            
            .bc{
                
                 width:120px;
                        height:40px;
                        border-radius:12px;
                        margin-left:74px;
                        background-color: cornsilk;
                        color:black;
                        border:#020202;
                
                
                
            }
            #submit{
                
                
                 background-color: antiquewhite;
                 font-weight: bold;
                border-radius: 12px;
                
                width: 230px;
                 height: 40px;
                
            }
            
                        
            


            
            
            
        </style>
    </head>
    <marquee> U have <%=n%> items in your cart......</marquee>
    <body>
        <div id="header">
            <img id="headimg" src="nasaheader.png"/>
           <div id="tab">
                <ul>
                    
                    <li> <a href="Logout">Log Out</a></li>
                    
                    <li> <a href="Experiance.jsp">About Us</a></li>
                    <li> <a href="Contact Us">Contact Us</a></li>
                    <li> <a href="viewInfoAdmin.jsp">My profile</a><img id="prfpic" src="https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX17744241.jpg"/></li>

                </ul>
           
            </div>
            
             <%@include file="UserHead.jsp" %>

             <h3><a href="viewInfo.jsp">VIEW INFORMATION</a></h3>
  <div id="ds">
        
           <input class="bc" type="text" placeholder ="Check-in-Date" name="nm"/>
           <input class="bc" type="text" placeholder ="Check-Out-Date" name="nm"/>

           
            
            
            
             
            <select class ="bc" name=?browsers? required>
                
           <option value=?? disabled selected>Bed</option>
            <option value=?chrome?>1</option>
            <option value=?safari?>2</option>
                  

                
          </select>
            
           
            
            <select class ="bc" name=?browsers? required>
                
           <option value=?? disabled selected>Price</option>
            <option value=?chrome?>11500 INR</option>
            <option value=?safari?>12000 INR</option>
            <option value=?opera?>14500 INR</option>       

                
          </select>
            
            
            
            
          <select class ="bc" name=?browsers? required>
                
           <option value=?? disabled selected>Adults</option>
            <option value=?chrome?>1</option>
            <option value=?safari?>2</option>
            <option value=?opera?>3</option>       

                
                
                
                
                
              
         </select>
         
         
         
         
         
<select class ="bc" name=?browsers? required>
                
           <option value=?? disabled selected>Children</option>
            <option value=?chrome?>1</option>
            <option value=?safari?>2</option>
            <option value=?opera?>3</option>       

                
                
                
                
                
              
</select><br><br>
         

                  <input id="submit" type='button' value='CHECK AVAILABILITY' onclick='send_me()'/>
            
        </div>
           
       
 
            
         </div>
             
             
        

  

        
        
           
        
        
        <script>
             
             
             function send_me(){
                 
                 
                 window.location.href='http://localhost:8084/HMS/Roomdetails.jsp';
                 
             }
             
             
         </script>       
      
        
          
            </pre> 
        </form>
    </body>
</html>
