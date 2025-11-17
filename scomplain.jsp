

<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>



<%

Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","akshay");
PreparedStatement st=connection.prepareStatement("select * from complaintable ");

ResultSet rs=st.executeQuery();
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
ArrayList list4=new ArrayList();
ArrayList list5=new ArrayList();

while(rs.next())
{   
    list1.add(rs.getString(1));
    list2.add(rs.getString(2));
    list3.add(rs.getString(3));
    list4.add(rs.getString(4));
    list5.add(rs.getString(5));
    
}      
%>
<table width="100%" style="height: 100%;font-size: 20px;font-family: arial">
    <tr align="center" style="color: white;font-size:20px">
        <td>Customer ID</td>
        <td>Complain ID</td>
        <td>Complain</td>
        <td>Status</td>
        <td>Date</td>
    </tr>
    <%
        for(int i=0;i<list1.size();i++)
        {
        %>
        <tr align="center" style="color: white;font-size:20px;font-family: arial">
            <td><%=list1.get(i)%></td>
            <td><%=list2.get(i)%></td>
            <td><%=list3.get(i)%></td>
            <td><%=list4.get(i)%></td>
            <td><%=list5.get(i)%></td>
        </tr>
        <%}%>
</table>