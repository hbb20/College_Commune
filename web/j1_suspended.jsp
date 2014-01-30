<%-- 
    Document   : j1_suspend
    Created on : 8 Dec, 2013, 2:01:16 PM
    Author     : HBB20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Access Denied</title>
    </head>
    <body style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-repeat:no-repeat;background-size: cover">
        <div style="align:center">
            <h1 align="center">
                Sorry!
            </h1>
            <h3 align="center" style="margin-left: 20%;margin-right: 20%">
                Your Account has Been Suspended by the Departmental Admin.
                
            </h3>
            <form action="j1_home.jsp" method="post" >
                <input type="submit" value="Back To Home" style="margin-left: 45%" name="Back" />
        </form>
        </div>
    </body>
</html>
