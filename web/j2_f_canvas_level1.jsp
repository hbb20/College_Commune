<%-- 
    Document   : j2_f_canvas_level1
    Created on : 23 Feb, 2014, 10:24:47 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="j3_check_role_f.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <%
        session.setAttribute("live_level","1");
    %>
   
        <%@include file="j3_canvas.jsp" %> 
</html>
