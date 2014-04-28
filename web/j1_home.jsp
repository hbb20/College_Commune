<%-- 
    Document   : j1_home1
    Created on : 30 Jan, 2014, 10:41:37 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <%
        session.removeAttribute("live_role");
        session.removeAttribute("live_dept");
        session.removeAttribute("live_user");
        
    %>
     <frameset cols="75%,*" frameborder="0" framespacing="0">    
            <frame src="j1_home_info.jsp" name="infoHolder">
            <frame src="j1_home_userDetail.jsp" name="boxHolder">
            </frameset>       
            <noframes>    <body> </body> </noframes>
    </frameset>

</html>
