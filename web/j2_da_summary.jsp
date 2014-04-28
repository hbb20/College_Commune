<%-- 
    Document   : j2_da_summary
    Created on : 23 Feb, 2014, 10:38:39 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="j3_check_role_da.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
 <frameset rows="8%,*" frameborder="0" framespacing="10">
       
        <frame src="j2_da_summary_abar.jsp" name="nav_holder" >
            <frame src="j2_da_summary_dept.jsp" name="content_holder">
            
            <noframes>    <body>  demo_to_vaisu_modified </body> </noframes>
    </frameset>
</html>
