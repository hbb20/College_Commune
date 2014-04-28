<%-- 
    Document   : j2_da_canvas_abar
    Created on : 23 Feb, 2014, 10:43:04 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="j3_check_role_da.jsp" %>
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
                    
                    <td><form name="level1_form" action="j2_da_canvas_level1.jsp" target="content_holder">
                       <input type="submit"  class="sub_abar_button sub_abar_button_left" value="1st Year"   name="Faculty" /></form></td>

                     <td><form name="level2_form" action="j2_da_canvas_level2.jsp" target="content_holder">
                       <input type="submit"  class="sub_abar_button"  value="2nd Year"  name="Faculty" /></form></td>
                       
                     <td><form name="level3_form" action="j2_da_canvas_level3.jsp" target="content_holder">
                       <input type="submit"  class="sub_abar_button"  value="3rd Year"  name="Faculty" /></form></td>
                       
                       
                     <td><form name="level4_form" action="j2_da_canvas_level4.jsp" target="content_holder">
                       <input type="submit"  class="sub_abar_button sub_abar_button_right"  value="4th Year"  name="Faculty" /></form></td>
                       
                    
               
                </tr>
            </tbody>
        </table>
 </body>
</html>
