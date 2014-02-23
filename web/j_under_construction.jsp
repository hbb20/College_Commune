<%-- 
    Document   : j_under_construction
    Created on : 23 Feb, 2014, 9:38:35 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body  style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-repeat:no-repeat;background-size: cover">
        <div align="center" style="background-image: url(./graphics/div_flat_back_pink_NULL.png);margin-left:30%;margin-right:30%;margin-top: 15%;  ">
            <br/><h3><%=(String)request.getRequestURI()%></h3>
            <b>This page is under construction </b><br/>OR<br/><b> Yet to implement</b><br/>&nbsp;
        </div>
    </body>
</html>
