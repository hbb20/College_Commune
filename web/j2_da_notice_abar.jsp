<%-- 
    Document   : j2_da_notice_abar
    Created on : 23 Feb, 2014, 10:41:33 AM
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
                    
                    <td><form name="View All" action="j2_da_notice_viewAll.jsp" target="content_holder">
                       <input type="submit"  class="sub_abar_button sub_abar_button_left"  value="View All"  name="Faculty" /></form></td>

                     <td><form name="Add new notice" action="j2_da_notice_add.jsp" target="content_holder">
                       <input type="submit"  class="sub_abar_button"  value="Add notice"  name="Faculty" /></form></td>
                       
                     <td><form name="Notices By me" action="j2_da_notice_my.jsp" target="content_holder">
                       <input type="submit"   class="sub_abar_button" value="My notices"   name="Faculty" /></form></td>
                       
                       
                     <td><form name="level4_form" action="j2_da_notice_delete.jsp" target="content_holder">
                       <input type="submit"   class="sub_abar_button sub_abar_button_right" value="Remove Notice" name="Faculty" /></form></td>
                       
                    
               
                </tr>
            </tbody>
        </table>
 </body>
</html>
