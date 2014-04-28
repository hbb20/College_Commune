<%-- 
    Document   : j3_result_set_student
    Created on : 28 Apr, 2014, 9:25:16 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>window.onload=function(){
            parent.frames["contentHolder"].location="j2_s_result.jsp";
        }
        </script>
    </head>
    <body  style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-repeat: repeat;background-size: cover">
       
        <form name="student" action="s3_result_set_student" method="POST"> Enter student's Enrollment:<input type="text" name="student" value="" /><input type="submit" value="Get result" name="result" />
        </form>
    </body>
</html>
