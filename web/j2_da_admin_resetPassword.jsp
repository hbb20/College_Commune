<%-- 
    Document   : j2_da_admin_resetPassword
    Created on : 23 Feb, 2014, 10:40:36 AM
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
    String msg="";
    try{
    msg=(String)session.getAttribute("msg");
       }
    catch(Exception e)
                       {
        msg="";
    }
     finally{
        session.removeAttribute("msg");
    }
         if(msg==null)
                                  {msg="";  }

    %>
    <body>
        <h3 align='center'><%=msg%></h3>
        <form name="f1" action="s3_password_reset" method="POST"><input align="center" type="text" name="user_id" value="" />
            <br/> <input align="center" type="hidden" name="this_page" value="j2_da_admin_resetPassword.jsp" />
            <input type="submit" value="Reset Password" name="s1" />
        </form>
    </body>
</html>
