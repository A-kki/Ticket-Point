<%-- 
    Document   : Login
    Created on : Jun 7, 2025, 11:13:37?PM
    Author     : lenovo
--%>


<html>
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
             font-size: 25px;
             padding-bottom: 10px;
             padding-left: 20px;
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
    
    <table width="100%" class ="menu">
        <tr>
            <td><a href="DashBoard.jsp">Home</a></td>
           <td><a href="Account.jsp">Account</a></td>
            <td><a href="Settings.jsp">Settings</a></td>
            <td><a href="Buy.jsp">Book Tickets</a></td>
            <td><a href="Sell.jsp">Sell Tickets</a></td>
            <td><a href="Help.jsp">Help</a></td>
            <td><a href="About.jsp">About</a></td>
        </tr>
    </table >
    <div>
        <form  action="Updatecode.jsp">
        <table  width="100%"  class="formtheme"  align="right"  cellspacing="10px"  border="0">
            <tr align="center">
                <td colspan="2">
                    <h1>Change Password</h1>
                    
                </td>
            </tr>
            <tr>
                <td>Id</td>    
                <td><input type="text" name="id" placeholder="Enter Id here" required="True" class="texttheme"></td>
            </tr>
            <tr>
                <td>Old Password</td>    
                <td><input type="password" name="opass" placeholder="Enter Password here" required="True" class="texttheme"></td>
            </tr>
            
            <tr>
                <td>New Password</td>    
                <td><input type="password" name="npass" placeholder="Enter New Password here" required="True" class="texttheme"></td>
            </tr>
            
            <tr>
                <td>Confirm Password</td>    
                <td><input type="password" name="cnpass" placeholder="Confirm Password here" required="True" class="texttheme"></td>
            </tr>
            <tr align ="center">
                <td colspan="2"><input type="submit" value="Change Password" class="buttontheme"></td> 
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
    
    </table>
    </form>
    </body>
</html>
