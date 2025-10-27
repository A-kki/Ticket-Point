<%-- 
    Document   : uploadticket
    Created on : Jun 25, 2025, 6:54:34?PM
    Author     : lenovo
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Connection" %>

<%@page import=" java.sql. PreparedStatement" %>

<%@page import=" java.sql.DriverManager" %>

<%@page import="java.sql.ResultSet" %>


<%
Date date=new Date();

SimpleDateFormat sdf=new SimpleDateFormat("dd//MM/yyyy hh:mm:ss");

String sellname=request.getParameter("sellname");
String contact=request.getParameter ("cont"); 
String tc=request.getParameter("tc");
String dec=request.getParameter("dec");
String qun=request.getParameter("qun");
float  price=Float.parseFloat(request.getParameter("price"));
String exp=request.getParameter("exp");

Class.forName("com.mysql.cj.jdbc.Driver");


Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "akshay");


PreparedStatement st=connection.prepareStatement ("insert into tickettab(sellername,contact, ticketcategory, description, quantity, price, uploaddatetime, ticketexpiry) values(?,?,?,?,?,?,?,?)");

st.setString(1,sellname);

st.setString(2,contact);

st.setString(3,tc);

st.setString(4,dec);

st.setString(5,qun);

st.setFloat(6,price);

st.setString(7,sdf.format(date));

st.setString(8,exp);


st.executeUpdate();
response.sendRedirect("sell.jsp");
%>

