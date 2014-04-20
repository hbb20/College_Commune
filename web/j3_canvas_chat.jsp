<%-- 
    Document   : j3_canvas_message_window
    Created on : 18 Apr, 2014, 4:36:32 PM
    Author     : HARSH BHAKT
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="c_c_db_package.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script>
             function rfresh()
             {
                 parent.frames["canvas_chat"].location="j3_canvas_chat.jsp";
             }
        };</script>
        <meta http-equiv="refresh" content="20">
    </head>
    <body   style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>);">
        
        <table  border = "0" style="width: available">
        <tbody>
           <%
            String dept = (String) session.getAttribute("live_dept");
            String level=(String) session.getAttribute("live_level");
            String cur_user=(String) session.getAttribute("live_user");
            String temp_display_name,block_sender;
            int lvl=Integer.parseInt(level);
            student std=new student();
            
            ResultSet rs;
            
            String my_color,other_color;
            my_color="#99ff99";
            other_color="#99ccff";
            class_canvas_model ccm=(class_canvas_model)session.getAttribute("ccm");
                    rs=ccm.fetch_messages(dept,lvl);
              String clr,aln;
            while (rs.next()) {                 
                if(rs.getString("msg_sender_id").equals(cur_user))
                {
                    clr=my_color;
                    aln="right";
                }
                else
                {
                    clr=other_color;
                    aln="left";
                }
            %>
            <tr style=" border-color: black;" align="<%=aln%>">
                <td style="width:600px">
                        <div style="width:500px; word-wrap: break-word">
                            <div style="background-color:<%=clr%>;width: max-content">
                            <%
                                block_sender=rs.getString("msg_sender_id");
                                temp_display_name=student.getStudentName(block_sender);
                                if(temp_display_name.equals("NA"))
                                {temp_display_name=rs.getString("msg_sender_id");
                                    temp_display_name=temp_display_name.toUpperCase();
                                }
                                
                                
                                
                                if(clr.equals(other_color))
                                {%>
                            <B><%=temp_display_name%></B><br/>
                            <%}%>
                            <%=rs.getString("msg_text")%>
                        </div> 
                        </div>
                    </td>
                </tr>
            <%
                };
                rs.close();
            %>   </tbody></table>
    </body>
</html>
