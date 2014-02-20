<%-- 
    Document   : jM_logout
    Created on : 10 Feb, 2014, 4:01:05 PM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Good Bye</title>
    </head>
    <body  width="100%" style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-size: cover">
        <h1>You have logged out Successfully</h1>
        <form name="a1" action="jM1_startup.jsp">
            <input type="submit" value="Get Back to Home" name="f1" />
        </form>
    </body>
</html>