<%
    response.addHeader("Pragma", "no-Cache");
    response.addHeader("Cache-Control", "no-Store");
    String value =(String)session.getAttribute("CALL");
    if(value==null){
        response.sendRedirect("Home.jsp");
    }
    if(session==null){
        response.sendRedirect("Home.jsp");
    }
    
    
%>