<%-- 
    Document   : j3_check_role_da
    Created on : 28 Apr, 2014, 1:38:57 PM
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
     RequestDispatcher rd=request.getRequestDispatcher("jM1_startup.jsp");
     String role="";
     System.out.print("da varify check 1");
 try{
     System.out.print("da varify check 2");
     role=(String)session.getAttribute("live_role");
     System.out.print("Role varified ok");
 }
 catch(Exception e)
 {System.out.print("da varify check 4");
    rd.forward(request, response);
 }
 
 if(role=="da")
 {
     System.out.print("da varify check 4.5");
 }
 else
 {
     System.out.print("da varify check 5");
     rd.forward(request, response);
 }
 
 System.out.print("da varify check 6");
 %>   
</html>
