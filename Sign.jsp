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
             font-size: 20px;
             
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
             width: 150px;
             height: 30px;
            background-color: #FFA500;
             font-size: 18px;
             padding-left: 10px;
             text-align: center ;
             
             
         }
        
    </style>
    <form  action="registrationcode.jsp">
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
        <table  class="formtheme" align="right"   cellspacing="10px">
            <tr align="center">
                <td colspan="2">
                    <h1>Registration Form</h1>
                    
                </td>
            </tr>
            <tr>
                <td>Id</td>    
                <td><input type="text" name="id" placeholder="Enter Id here" required="True" class="texttheme"></td>
            </tr>
            <tr>
                <td>Password</td>    
                <td><input type="password" name="pass" placeholder="Enter Password here" required="True" class="texttheme"></td>
            </tr>
            <tr>
                <td>Full Name</td>    
                <td><input type="text" name="fnm" placeholder="Enter your Full Name here" required="True" class="texttheme"></td>
            </tr>
            <tr>
                <td>Contact</td>    
                <td><input type="number" name="cont" placeholder="Enter Mobile Number here" required="True" class="texttheme"></td>
            </tr>
            
            <tr>
                <td>Mail Id</td>    
                <td><input type="email"  name="mail" placeholder="Enter Email Id here" required="True" class="texttheme"></td>
            </tr>
            <tr>
                <td>Gender</td>    
                <td><select  name="gender" required="True" class="texttheme">
                        <option>SELECT GENDER</option>
                        <option>MALE</option>
                        <option>FEMALE</option>
                        <option>OTHERS</option>
                    </select></td>
            </tr>
            <tr>
                <td>City</td>    
                <td><input type="text" name="city" placeholder="Enter your CITY here" required="True" class="texttheme"></td>
            </tr>
            <tr>
                <td>Date Of Birth</td>    
                <td><input type="date"  name="dob" placeholder="Enter your date of birth here" required="True" class="texttheme"></td>
            </tr>
            <tr align ="center">
                <td colspan="2"><input type="submit" value="Create Account" class="buttontheme"><br>Alredy a member click here</td> 
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
   
    <body>
        
    </body>
</html>


