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
    
    <body>
                    <table class = "title" align="center">
            <tr>
                <td>TICKET<br>POINT</td>
            </tr>
            </table>

        <div   class="divtheme">
        
               

             <form  action="uploadticket.jsp">
                 <table  width="100%"  class="formtheme"  align="right"  cellspacing="5px"  border="0" style="margin-top: -250px">
                <tr align="left">
                    <td  colspan="2"><h1>SELL YOUR TICKET</h1></td>
                </tr>
                                    <tr align="left">
                    <td>Seller Name</td>
                    </tr>
                    
                    <tr align="left">
                    <td><input type="text" name="sellname"  placeholder="Enter name here"  required="true"  class="texttheme"></td>
                </tr>
                
                
                    <tr align="left">
                    <td>Contact</td>
                    </tr>
                    
                                        <tr align="left">
                    <td><input type="text" name="cont" placeholder="Enter mobile no. here"  required="true"  class="texttheme"></td>
                </tr>
                <tr align="left">
                    <td>Ticket Category</td>
                    </tr>
                    
                                        <tr align="left">
                    <td><input type="text" name="tc" placeholder="Enter ticket catagory here"  required="true"  class="texttheme"></td>
                </tr>
                <tr align="left">
                    <td>Description</td>
                    </tr>
                    
                                        <tr align="left">
                    <td><input type="text" name="dec" placeholder="Enter discription here"  required="true"  class="texttheme"></td>
                </tr>
                
                <tr align="left">
                    <td>Quantity</td>
                    </tr>
                    
                                        <tr align="left">
                    <td><input type="text" name="qun" placeholder="Enter quantity here"  required="true"  class="texttheme"></td>
                </tr>
                
                <tr align="left">
                    <td>Price</td>
                    </tr>
                    
                                        <tr align="left">
                    <td><input type="text" name="price" placeholder="Enter price here"  required="true"  class="texttheme"></td>
                </tr>
                
                <tr align="left">
                    <td>Expiry</td>
                    </tr>
                    
                                        <tr align="left">
                    <td><input type="text" name="exp" placeholder="Enter Event Date here"  required="true"  class="texttheme"></td>
                </tr>
                <tr align="left">
                    <td colspan="2"><input type="submit"  value="Upload"  class="buttontheme"> </td>
                </tr>
            </table>
                </form>
            
            
            </div>
    </body>
    
   </html>