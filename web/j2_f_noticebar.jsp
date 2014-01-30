<%-- 
    Document   : j2_f_noticebar
    Created on : 30 Jan, 2014, 3:33:53 PM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body  width="100%" style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-repeat:no-repeat; background-size: cover">
        <table border="0">
           
            <tbody>
                <tr>
                    <td><a href="j2_f_all_notice.jsp" target="n_working_holder">All Notices</a></td>
                    <td><a href="" target="n_working_holder">My Notices</a></td>
                    <td><a href="" target="n_working_holder">Post Notice</a></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
