<%-- 
    Document   : j2_da_notice_abar
    Created on : 23 Feb, 2014, 10:41:33 AM
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
                    
                    <td width="150px"><form name="View All" action="j2_da_notice_viewAll.jsp" target="content_holder">
                       <input type="submit" value="View All"  style="<%=style_new_btn%>" name="Faculty" /></form></td>

                     <td  width="150px"><form name="Add new notice" action="j2_da_notice_add.jsp" target="content_holder">
                       <input type="submit" value="Add notice"  style="<%=style_new_btn%>" name="Faculty" /></form></td>
                       
                     <td  width="150px"><form name="Notices By me" action="j2_da_notice_my.jsp" target="content_holder">
                       <input type="submit" value="My notices"  style="<%=style_new_btn%>" name="Faculty" /></form></td>
                       
                       
                     <td  width="150px"><form name="level4_form" action="j2_da_notice_delete.jsp" target="content_holder">
                       <input type="submit" value="Remove Notice"  style="<%=style_new_btn%>" name="Faculty" /></form></td>
                       
                    
               
                </tr>
            </tbody>
        </table>
 </body>
</html>
