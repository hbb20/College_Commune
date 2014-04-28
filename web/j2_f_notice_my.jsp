<%-- 
    Document   : j2_f_notice_my
    Created on : 23 Feb, 2014, 10:26:48 AM
    Author     : HARSH BHAKT
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="c_c_db_package.notice_model"%>
<%@include file="j3_check_role_f.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>);">
       <% 
        String branch=(String)session.getAttribute("live_dept");
        notice_model nm=new notice_model();
        ResultSet rs;
        String uegency;
        int urgency;
        String u_low,u_normal,u_high,color="";
        u_low="lightgray";
        u_normal="antiquewhite";
        u_high="darksalmon";
        %>  <h3>My Notices</h3><%
        rs=nm.fetchNoticeBySender((String)session.getAttribute("live_user"));
        if(rs.next())
        {  %> <table  border = "0" cellpadding = "0"><%
                  
                   
            do{ 
                    urgency=rs.getInt("n_urgency");
                   if(urgency==1)
                   color=u_low;
                   else if(urgency==2)
                   color=u_normal;
                   else if(urgency==3)
                   color=u_high;
        %>
                    
                  <tbody>
                      <tr style="background-color:<%=color%> ">
                        <td width="100"><%=(String)rs.getString("n_title")%> </td>
                     <td width="300"><%=(String)rs.getString("n_body")%> </td>
                     <td width="170"><%=(String)rs.getString("n_time")%> </td>
                     </tr>
                     </tbody>
                <%
            }while(rs.next());
            %>  </table ><%

        }
        
        else
        {
            %>
            <h2>You Have not posted any notice yet</h2>
        <%
            
        }%> 
    </body>
</html>
