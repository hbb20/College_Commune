<%-- 
    Document   : j2_s_notice_viewAll
    Created on : 23 Feb, 2014, 10:19:47 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="c_c_db_package.student,c_c_db_package.notice_model;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body height="100%" width="100%" style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>);">
    <% 
        student s=new student();
        s=s.fetchStudent((String)session.getAttribute("live_user"));
        //int level=s.getLevel();
        
        
        %>
        All notices
    </body>
</html>
