<%-- 
    Document   : j2_f_menubar
    Created on : 20 Jan, 2014, 1:18:27 PM
    Author     : hbb20
--%>

<%@page import="c_c_db_package.user_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="j0_general.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
    </head>
 <%
  user_model um=null;
 String title_name=(String)session.getAttribute("live_user");
 title_name=title_name.toUpperCase();
 
  %>
    <body  style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-repeat:no-repeat;background-size: inherit">
        <table border="0" style="height: 100%" align="right">
            <tbody>
                <tr>
                    <td align="center"><H3><%=title_name%></H3><h3><%=user_model.get_full_dept((String)session.getAttribute("live_dept"))%></h3></td>
                </tr>
                <tr>
                    <td><form name="notice_form" action="j2_f_notice.jsp" target="workingFrame">
                        <input type="submit" class="main_abar_button"  value="Notice Board"   name="Notice Board" /></form></td></tr>
                
                <tr>
                    <td><form name="canvas_form" action="j2_f_canvas.jsp" target="workingFrame">
                        <input type="submit" class="main_abar_button"  value="Class Canvas"   name="Class Canvas" /></form></td></tr>
                
                <tr>
                    <td><form name="result_form" action="j3_f_result.jsp" target="workingFrame">
                        <input type="submit" class="main_abar_button"  value="GTU result"   name="result" /></form></td></tr>
                
                <tr>
                    <td><form name="intranet_form" action="j2_f_intranet.jsp" target="workingFrame">
                        <input type="submit" class="main_abar_button"  value="Intranet"   name="Intranet" /></form></td></tr>
            
                <tr>
                    <td><form name="logout_form" action="s2_log_out" target="workingFrame">
                        <input type="submit" class="main_abar_button font_red"  value="Log Out"   name="Log Out" /></form></td></tr>
            </tbody>
        </table>
       

    </body>
</html>
