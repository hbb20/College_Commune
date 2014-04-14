<%-- 
    Document   : jM_logout
    Created on : 10 Feb, 2014, 4:01:05 PM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Good Bye</title>
    </head>
    <body onload="document.a1.submit()" width="100%" style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-size: cover">
       
        <form name="a1" action="jM1_startup.jsp" id="f1" target="_top">
            <input style="visibility: hidden" type="submit" value="Get Back to Home" name="f1" />
        </form>
    </body>
</html>