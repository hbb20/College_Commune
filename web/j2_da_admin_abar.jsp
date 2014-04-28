<%-- 
    Document   : j2_da_admin_abar
    Created on : 23 Feb, 2014, 10:40:12 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
  
  <%
    String style_new_btn="width: 150px;height: 50px; background-image: url(./graphics/sub_btn_blank.png); background-position-x: 0";
 %>   
 <body class="sub_abar_body"    style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>)" >
        <table border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    
                    <td><form name="f1" action="j2_da_admin_resetPassword.jsp" target="content_holder">
                       <input type="submit" class="sub_abar_button sub_abar_button_left sub_abar_button_right" value="Reset Password"  style="<%=style_new_btn%>" name="Faculty" /></form>
                    </td>                 
                </tr>
            </tbody>
        </table>
 </body>
</html>
