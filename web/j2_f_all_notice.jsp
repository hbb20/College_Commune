<%-- 
    Document   : j2_f_all_notice
    Created on : 30 Jan, 2014, 3:39:46 PM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,c_c_db_package.notice_model" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body  width="100%" style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-size: cover">
        <h1>All Notices will be displayed here</h1>
        <%
        ResultSet rs=null;
        for(int i=1;i<5;i++)
        {
            
        rs=(ResultSet)notice_model.fetchNoticebyClass((String)session.getAttribute("live_dept"),1);
        
        }
        
        %>
    </body>
</html>
