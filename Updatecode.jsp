<%-- 
    Document   : Logincode
    Created on : Jun 11, 2025, 2:17:08?AM
    Author     : lenovo
--%>

<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.ResultSet" %>



<%

String id=request.getParameter("id");
String opass=request.getParameter("opass");
String npass=request.getParameter("npass");
String cnpass=request.getParameter("cnpass");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","akshay");
PreparedStatement st=connection.prepareStatement("select * from customertable  where id=? and pass=?");
st.setString(1,id);
st.setString(2,opass);
ResultSet rs=st.executeQuery();
if(rs.next())
{ 
    if (npass.equals(cnpass)){
        PreparedStatement st1=connection.prepareStatement("update customertable set pass=? where id=?");
        st1.setString(1,npass);
        st1.setString(2,id);
        st1.executeUpdate();
        response.sendRedirect("DashBoard.jsp");
    }
    else{
       out.println("New password doesn't match with confirm password");
        }
   
     
}
else
{
    out.println("invalid id/password");
}
        
%>