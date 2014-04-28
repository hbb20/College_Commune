<%-- 
    Document   : j2_da_faculty_abar
    Created on : 23 Feb, 2014, 10:49:33 AM
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
    
  
    <body  class="sub_abar_body" style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>)" >
        <table border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    
                    <td><form name="level1_form" action="j2_da_faculty_newplace.jsp" target="content_holder">
                       <input type="submit"   class="sub_abar_button sub_abar_button_left" value="Grant new Faculty" name="Faculty" /></form></td>

                     <td><form name="level2_form" action="j2_da_faculty_remove.jsp" target="content_holder">
                       <input type="submit"  class="sub_abar_button sub_abar_button_right"  value="Update Faculty" name="Faculty" /></form></td>
                       
                   
               
                </tr>
            </tbody>
        </table>
 </body>
</html>
