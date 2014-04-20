<%-- 
    Document   : j3_canvas
    Created on : 19 Apr, 2014, 5:31:14 AM
    Author     : HARSH BHAKT
--%>

<%@page import="c_c_db_package.class_canvas_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <% 
     class_canvas_model ccm=new class_canvas_model();
     session.setAttribute("ccm", ccm);
    %>
    <frameset rows="20%,*" frameborder="0" framespacing="5px">    
            <frame src="j3_canvas_send.jsp" name="canvas_send">
            <frame src="j3_canvas_chat.jsp" name="canvas_chat">
            </frameset>       
            <noframes>    <body> </body> </noframes>
    </frameset>
</html>
