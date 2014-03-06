<%-- 
    Document   : j2_s_notice_viewAll
    Created on : 23 Feb, 2014, 10:19:47 AM
    Author     : HARSH BHAKT
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="c_c_db_package.student,c_c_db_package.notice_model;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body height="100%" width="100%" style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>);">
    <% 
        student s=new student();
        s=s.fetchStudent((String)session.getAttribute("live_user"));
        int level=s.getLevel();
        String branch=(String)session.getAttribute("live_dept");
        notice_model nm=new notice_model();
        String lvl=level+"";
        ResultSet rs=nm.fetchNoticebyClass(branch,lvl);
        String uegency;
        int urgency;
        String u_low,u_normal,u_high,color="";
        u_low="lightgray";
        u_normal="antiquewhite";
        u_high="darksalmon";
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
                     <td width="70"><%=(String)rs.getString("n_sender_id")%> </td>
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
            <h2>Your Class do not have Any Notice yet</h2>
        <%
            
        }
        %>
        
                
                
    </body>
</html>
