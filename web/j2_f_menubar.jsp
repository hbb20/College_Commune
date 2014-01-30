<%-- 
    Document   : j2_f_menubar
    Created on : 20 Jan, 2014, 1:18:27 PM
    Author     : hbb20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
    </head>
    <body  width="100%" style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-repeat:no-repeat;">
        <table border="0">
            <thead>
                <tr>Menubar
                </tr>
            </thead>
            <tbody>
                <tr><td><a href="Notice.jsp" target="contentHolder">Notice</a>
                    </td></tr>
                <tr><td><a href="f_test2.jsp" target="contentHolder">Profile</a>
                    </td></tr>
            </tbody>
        </table>

    </body>
</html>
