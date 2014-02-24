<%-- 
    Document   : j2_s_abar
    Created on : 23 Feb, 2014, 10:18:08 AM
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
    String style_new_btn="width: 200px;height: 30px; background-image: url(./graphics/main_btn.png); background-position-x: 0";
 %>   
    <body  style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-repeat:no-repeat;background-size: inherit">
        <table border="0" style="height: 100%" align="right">
            <tbody>
                
                <tr>
                    <td><form name="notice_form" action="j2_s_notice.jsp" target="workingFrame">
                        <input type="submit" value="Notice Board"  style="<%=style_new_btn%>" name="Notice Board" /></form></td></tr>
                
                
                
                
                <tr>
                    <td><form name="canvas_form" action="j2_s_canvas.jsp" target="workingFrame">
                        <input type="submit" value="Class Canvas"  style="<%=style_new_btn%>" name="Class Canvas" /></form></td></tr>
                
                <tr>
                    <td><form name="intranet_form" action="j2_s_intranet.jsp" target="workingFrame">
                        <input type="submit" value="Intranet" style="<%=style_new_btn%>"  name="Intranet" /></form></td></tr>
                <tr>
                    <td><form name="profile_form" action="j2_s_profile.jsp" target="workingFrame">
                        <input type="submit" value="Profile"  style="<%=style_new_btn%>" name="Notice Board" /></form></td></tr>
                
                
                <tr>
                    <td><form name="logout_form" action="s2_log_out" target="workingFrame">
                        <input type="submit" value="Log Out" style="<%=style_new_btn%>"  name="Log Out" /></form></td></tr>
            </tbody>
        </table>
       

    </body>
</html>
