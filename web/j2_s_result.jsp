<%-- 
    Document   : j2_s_result
    Created on : 28 Apr, 2014, 8:54:50 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
   
    %>
    
    <body  style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-repeat: repeat;background-size: cover">
        <%@include file="j3_result_graph.jsp" %> 
        <%@include file="j3_result_update.jsp" %> 
    </body>
</html>
