<%-- 
    Document   : da_req_suspended
    Created on : 9 Feb, 2014, 10:52:44 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="c_c_db_package.pending_req,java.sql.*" %>
<%@include file="j3_check_role_da.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=(String)session.getAttribute("live_dept")%> Suspended Request</title>
    </head>
    <%
    ResultSet rs=null;
    pending_req pr=new pending_req();
    rs=pr.getSuspended((String)session.getAttribute("live_dept"));
    
    

%>

<%  boolean checked=false;
    String msg="";
            String id="";
            String f_name="";
            String l_name="";
    try{
    msg=(String)request.getAttribute("msg");
       }
    catch(Exception e)
                       {
        msg="";
    }
     finally{
        request.removeAttribute("msg");
    }
         if(msg==null)
                                  {msg="";  }

    %>

    <body style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-repeat:no-repeat;background-size: cover">
        <h3 style="color: green" align="center"><%=msg%></h3>
        <div align="center">
        
                  
                <% 
                   while(rs.next())
                        { checked=true;
                         id=rs.getString(1);
                         f_name=rs.getString(2);
                         l_name=rs.getString(3);
                         
                             %> <form name="<%=id%>" action="s2_da_req_restore" method="post"><table border="0" align="center">
                         <tr> <td width="100px"><%=id%></td>
                             <td width="150px"><%=f_name%>&nbsp;<%=l_name%></td>
                          
                             <td><input type="submit" value="Restore Request" name="<%=rs.getString(1)%>" style="width: 150px" /></td>
                             <td><input type="hidden" name="user_id" value="<%=id%>" /></td></form>
                             <form action="s2_da_req_delete" method="post">
                                 <td><input type="hidden" name="user_id" value="<%=id%>" /></td>
                             <td><input type="submit" value="Delete Request" name="del_req" style="width: 150px"/></td>
                             </form>
                      </tr></table>
                      <%}%>
            
        
        </div>
                      <% if(checked==false){%><h3 align="center">You have No Suspended Request Form Department</h3><%}%>
    </body>
</html>
