<%-- 
    Document   : jM1_startup
    Created on : 30 Jan, 2014, 7:58:10 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>College Commune Final Project</title>
    </head>
    <%
        session.removeAttribute("result_target_student");
       %>
     <frameset rows="20%,80%" frameborder="0" framespacing="0">
       
        <frame src="j1_head_all.jsp" name="header_frame" >
            <frame src="j1_home.jsp" name="working_holder">
            
            <noframes>    <body>  demo_to_vaisu_modified </body> </noframes>
    </frameset>

</html>
