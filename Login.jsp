
<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.ResultSet" %>
<%
int RESULT=0;
String btn=request.getParameter("btn");
if(btn!=null&&btn.equals("login"))
{
    String id=request.getParameter("id");
    String pass=request.getParameter("pass");

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","akshay");
    PreparedStatement st=connection.prepareStatement("select * from customertable  where id=? and pass=?");
    st.setString(1,id);
    st.setString(2,pass);
    ResultSet rs=st.executeQuery();

    if(rs.next())
    {
         session.setAttribute("CALL", id); //step:1 for security
        Cookie ck=new Cookie("TicketSpoint1",id);
        ck.setMaxAge(10000);
        response.addCookie(ck);
        response.sendRedirect("DashBoard.jsp"); 
    }
    else
    {
        RESULT=1;
    }
}
        
%>
<html>
    <head>
        <<link  href="style.css" rel="stylesheet"/>
    </head>
    
    <style>
        body{
            background-image:url('images/tp3.png');
            background-size: 100%;
        }
        .menu{
            color: black;
            font-size: 18px;
            text-transform: uppercase;
            font-family: arial;
            text-align: center;
            background-color: #FFA500;
            height: 40px;
            box-shadow: 2px 2px 2px darkgray;
            font-weight: bold;
        }
        .title{
        color: white;
        font-size: 90px;
        font-family: arial;
        margin-left: 10px;
        text-align: center;
        margin-top: 100px;
        
         }
         a{
             text-decoration: none;
             color: black;
         }
         
         .formtheme{
             font-size: 30px;
             padding-bottom: 10px;
             margin-top: 50px;
             height: 50px;
             width: 50px;
             color: white;
             background-color:rgba(0,0,0,0.5)
         }
         .texttheme{
             width:400px;
             height: 35px;
             padding-left: 10px;
             border: inset;
         }
         .buttontheme{
             width: 200px;
             height: 40px;
            background-color: #FFA500;
             font-size: 18px;
             padding-left: 10px;
             text-align: center ;
             
             
         }
         .colo{
             color: white;
         }
        
    </style>
    <body>
        <table>
            
        </table>
        
          
  
    </div>
    <form  action="">
    <table width="100%" class ="menu">
        <tr>
            <td><a href="Home.jsp">Home</a></td>
            <td><a href="Login.jsp">Login</a></td>
            <td><a href="Sign.jsp">Sign Up</a></td>
            <td><a href="Buy.jsp">Book Tickets</a></td>
            <td><a href="Sell.jsp">Sell Tickets</a></td>
            <td><a href="Help.jsp">Help</a></td>
            <td><a href="About.jsp">About</a></td>
        </tr>
    </table >
    <div>
        <table  width="100%"  class="formtheme"  align="right"  cellspacing="20px"  border="0">
            <tr align="center">
                <td colspan="2">
                    <h1>Login Form</h1>
                    
                </td>
            </tr>
            <tr>
                <%
                    Cookie ck[]=request.getCookies();
                    String name="";
                    if(ck!=null)
                    {
                        for(int i=0;i<ck.length;i++)
                        {
                            if(ck[i].getName().equals("TicketSpoint1"))
                            {       
                          name=ck[i].getValue();
                                
                            }
                        }
                    }
                    %>
            <tr align ="center"> 
                    <td  colspan="2">
                         <%
                            if(RESULT==1)
                            {
                         %>
                        <font color="red">Invalid Id/Password</font>
                        <%
                            }
                        %>
                    </td> 
            </tr>
                        
                    </tr>
                <td>Id</td>    
                <td><input type="text" name="id" placeholder="Enter Id here" value="<%=name%>"required="True" class="texttheme"></td>
            </tr>
            <tr>
                <td>Password</td>    
                <td><input type="password" name="pass" placeholder="Enter Password here" required="True" class="texttheme"></td>
            </tr>
            
            <tr align ="center">
                <td colspan="2"><input type="submit" value="login" name="btn" class="buttontheme"></td> 
            </tr>
             
            
            
        </table>
    </div>
    <table class="title">
    <tr>
        <td>
            TICKETS<br>POINT
        </td>
    </tr> 
    <tr style="font-size: 14px;font-family: arial;color: white">
        <td>
    <hr><marquee scrollamount="10px"> Best site for Buying and selling Tickets</marquee> <hr>
        </td>
    </tr>
    </form>
    </table>                     
    </body>
   
   
</html>
