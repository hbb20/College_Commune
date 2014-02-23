<%-- 
    Document   : j_verify_student
    Created on : 22 Feb, 2014, 2:26:09 PM
    Author     : VAISHNAVI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    <%
    String role="";
    try
    {
        role=(String)session.getAttribute("live_role");
    }
    catch(Exception e)
    {
        role="";
    }
    if(role.equals("student"))
    {
        
    }
    else
    {
        RequestDispatcher rd=request.getRequestDispatcher("jM1_startup");
        rd.forward(request, response);
            }
 
    %>
    </head>
    <body>
        <h1>Hello World!</h1>
<<<<<<< HEAD

        line by vaisu

        
        line by me__hbb20
        line by harsh

=======
>>>>>>> ca8c6cb2ddaf2aaf6c0dcf4ca0992e5bb1d7c129
    </body>
</html>
