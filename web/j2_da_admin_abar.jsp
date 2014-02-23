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
    String style_btn="width: 170px;height: 60px; background-image: url(./graphics/sub_btn.png); background-position-x: 0";
 %>   
<body  style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-repeat:no-repeat;background-size: cover">
        <table border="0" style="width:100%">
            <tbody>
                <tr>
                    <td>&nbsp;&nbsp;</td>
                    <td><form name="reset_password_form" action="j2_da_admin_resetPassword.jsp" target="content_holder">
                            <input type="submit"  style="<%=style_btn%>" value="Reset Password" name="reset_pwd_submit" /></form></td>
               
                </tr>
            </tbody>
        </table>
    
</html>
