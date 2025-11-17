
<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.ResultSet" %>



<%

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
    out.println("invalid id/password");
}
        
%>