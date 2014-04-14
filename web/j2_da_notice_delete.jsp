<%-- 
    Document   : j2_da_notice_delete
    Created on : 23 Feb, 2014, 10:42:39 AM
    Author     : HARSH BHAKT
--%>

<%@page import="c_c_db_package.notice_model"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="c_c_db_package.c_c_db"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
     <%
    ResultSet rs=null,rs1=null;
    c_c_db ccd=new c_c_db();
    Connection conn=ccd.getDB();
    Statement st=conn.createStatement();
    String query="select * from notice where n_sender_id='"+(String)session.getAttribute("live_user")+"'";
   // String query="select * from req_waiting where dept='IT'";
    rs=st.executeQuery(query);
    
    

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

    Your Notices
    
     <body style="background-image:url(<%=(String) getServletContext().getInitParameter("background_image")%>);">


        <%
            String branch = (String) session.getAttribute("live_dept");
            notice_model nm = new notice_model();
          

            int urgency;
            String u_low, u_normal, u_high, color = "";
            u_low = "#ffff99";
            u_normal = "#99ff99";
            u_high = "#F20625";
        %>  <h2>My Notices</h2><%
          if (rs.next()) {  %> <table  border = "0" cellpadding = "0"><%

            do {
                urgency = rs.getInt("n_urgency");
                if (urgency == 1) {
                    color = u_low;
                } else if (urgency == 2) {
                    color = u_normal;
                } else if (urgency == 3) {
                    color = u_high;
                }
            %>

            <tbody>
                <tr style="background-color:<%=color%> ">
                    <td width="100"><%=(String) rs.getString("n_title")%> </td>
                    <td width="300"><%=(String) rs.getString("n_body")%> </td>
                    <td width="170"><%=(String) rs.getString("n_time")%> </td>
            <form name="delete_form" action="s2_da_notice_delete">
                <input type="hidden" name="n_id" value="<%=(String)rs.getString("n_id")%>" />
                <input type="hidden" name="page" value="j2_da_notice_delete.jsp" />
                    <td width="100"><input type="submit" value="Delete" /></td>
            </form>
                </tr>
            </tbody>
            <%
                } while (rs.next());
            %>  </table ><%
        } else {
            %>
        <h4>No Notice posted by you</h4>
        <%
            }
        %>


    </body>
</html>
