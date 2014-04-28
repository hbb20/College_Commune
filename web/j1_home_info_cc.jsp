<%-- 
    Document   : j1_home_info_cc
    Created on : 8 Apr, 2014, 10:29:57 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="j0_general.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>);">
        <h1 align="center">College Commune</h1>
       <table border="0">
            <tbody>
                <tr>
                    <td><img src="graphics/cc_logo.jpg" width="350" height="275" alt="ADIT Logo"/>
                    </td>
                    <td> <div class="intro_div" align="center"><h3>Many times the flow of communication within class, 
                department or college leads to problems or misunderstanding.
                But here you can stay updated with all notices of college 
                as well as class and even stay connected with your classmate and faculty for educational purpose.</h3>
            
        </div> </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
