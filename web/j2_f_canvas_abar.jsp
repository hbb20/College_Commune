<%-- 
    Document   : j2_f_canvas_abar
    Created on : 23 Feb, 2014, 10:25:40 AM
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
    <body  style="background-color:#999999;background-size: cover">
        <table border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    
                    <td width="150px"><form name="level1_form" action="j2_f_canvas_level1.jsp" target="content_holder">
                       <input type="submit" value="1st Year"  style="<%=style_new_btn%>" name="Faculty" /></form></td>

                     <td  width="150px"><form name="level2_form" action="j2_f_canvas_level2.jsp" target="content_holder">
                       <input type="submit" value="2nd Year"  style="<%=style_new_btn%>" name="Faculty" /></form></td>
                       
                     <td  width="150px"><form name="level3_form" action="j2_f_canvas_level3.jsp" target="content_holder">
                       <input type="submit" value="3rd Year"  style="<%=style_new_btn%>" name="Faculty" /></form></td>
                       
                       
                     <td  width="150px"><form name="level4_form" action="j2_f_canvas_level4.jsp" target="content_holder">
                       <input type="submit" value="4th Year"  style="<%=style_new_btn%>" name="Faculty" /></form></td>
                       
                    
               
                </tr>
            </tbody>
        </table>
 </body>
</html>
