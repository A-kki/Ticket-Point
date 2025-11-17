<%-- 
    Document   : registrationcode
    Created on : Jun 11, 2025, 12:24:07?AM
    Author     : lenovo
--%>
<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.DriverManager" %>

<%
    
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("fnm");
String contact=request.getParameter("cont");
String mail=request.getParameter("mail");
String gender=request.getParameter("gender");
String city=request.getParameter("city");
String dob=request.getParameter("dob");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","akshay");
PreparedStatement st=connection.prepareStatement("insert into customertable values(?,?,?,?,?,?,?,?)");
st.setString(1,id);
st.setString(2,pass);
st.setString(3,name);
st.setString(4,contact);
st.setString(5,mail);
st.setString(6,gender);
st.setString(7,city);
st.setString(8,dob);
st.executeUpdate();
connection.close();
response.sendRedirect("DashBoard.jsp"); 
        
%>