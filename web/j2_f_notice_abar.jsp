<%-- 
    Document   : j2_f_noticebar
    Created on : 30 Jan, 2014, 3:33:53 PM
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

    <body class="sub_abar_body" style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>)" >
        <table border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    
                    <td><form name="level1_form" action="j2_f_notice_viewAll.jsp" target="content_holder">
                       <input type="submit"   class="sub_abar_button sub_abar_button_left"  value="View All"  name="Faculty" /></form></td>

                     <td><form name="level2_form" action="j2_f_notice_add.jsp" target="content_holder">
                       <input type="submit"   class="sub_abar_button" value="Add notice"  name="Faculty" /></form></td>
                       
                     <td><form name="level3_form" action="j2_f_notice_my.jsp" target="content_holder">
                       <input type="submit"   class="sub_abar_button sub_abar_button_right" value="Notices by Me" name="Faculty" /></form></td>
                       
               
                </tr>
            </tbody>
        </table>
 </body>
</html>
