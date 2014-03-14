<%-- 
    Document   : j2_da_intranet_abar
    Created on : 23 Feb, 2014, 10:48:26 AM
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

    <body  class="sub_abar_body" style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>)" >
        <table border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    
                    <td><form name="level1_form" action="j2_da_intranet_viewAll.jsp" target="content_holder">
                       <input type="submit"   class="sub_abar_button sub_abar_button_left" value="View All"  name="Faculty" /></form></td>

                     <td><form name="level2_form" action="j2_da_intranet_upload.jsp" target="content_holder">
                       <input type="submit"   class="sub_abar_button" value="Upload" name="Faculty" /></form></td>
                       
                     <td><form name="level3_form" action="j2_da_intranet_delete.jsp" target="content_holder">
                       <input type="submit"   class="sub_abar_button sub_abar_button_right" value="Delete" name="Faculty" /></form></td>
                       
              
                    
               
                </tr>
            </tbody>
        </table>
 </body>
</html>
