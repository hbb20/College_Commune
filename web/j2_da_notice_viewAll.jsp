<%-- 
    Document   : j2_notice_viewAll
    Created on : 23 Feb, 2014, 10:41:46 AM
    Author     : HARSH BHAKT
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="c_c_db_package.notice_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image:url(<%=(String) getServletContext().getInitParameter("background_image")%>);">


        <%
            String branch = (String) session.getAttribute("live_dept");
            notice_model nm = new notice_model();
            ResultSet rs;

            int urgency;
            String u_low, u_normal, u_high, color = "";
            u_low = "lightgray";
            u_normal = "antiquewhite";
            u_high = "darksalmon";
        %>  <h3>For faculty</h3><%
            rs = nm.fetchNoticebyClass(branch, "faculty");
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
                    <td width="70"><%=(String) rs.getString("n_sender_id")%> </td>
                    <td width="170"><%=(String) rs.getString("n_time")%> </td>
                </tr>
            </tbody>
            <%
                } while (rs.next());
            %>  </table ><%
        } else {
            %>
        <h4>Faculties do not have Any Notice yet</h4>
        <%
            }
        %>


        <h3>For First Year</h3><%
            rs = nm.fetchNoticebyClass(branch, "1");
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
                    <td width="70"><%=(String) rs.getString("n_sender_id")%> </td>
                    <td width="170"><%=(String) rs.getString("n_time")%> </td>
                </tr>
            </tbody>
            <%
                } while (rs.next());
            %>  </table ><%
        } else {
            %>
        <h2>First year do not have Any Notice yet</h2>
        <%
            }
        %>     


        <h3>For Second Year</h3><%
            rs = nm.fetchNoticebyClass(branch, "2");
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
                    <td width="70"><%=(String) rs.getString("n_sender_id")%> </td>
                    <td width="170"><%=(String) rs.getString("n_time")%> </td>
                </tr>
            </tbody>
            <%
                } while (rs.next());
            %>  </table><%
        } else {
            %>
        <h2>Second year  do not have Any Notice yet</h2>
        <%
            }
        %>     

        
        
        <h3>For Third Year</h3><%
            rs = nm.fetchNoticebyClass(branch, "3");
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
                    <td width="70"><%=(String) rs.getString("n_sender_id")%> </td>
                    <td width="170"><%=(String) rs.getString("n_time")%> </td>
                </tr>
            </tbody>
            <%
                } while (rs.next());
            %>  </table ><%
        } else {
            %>
        <h2>Third year do not have Any Notice yet</h2>
        <%
            }
        %>     


        <h3>For Fourth Year</h3><%
            rs = nm.fetchNoticebyClass(branch, "4");
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
                    <td width="70"><%=(String) rs.getString("n_sender_id")%> </td>
                    <td width="170"><%=(String) rs.getString("n_time")%> </td>
                </tr>
            </tbody>
            <%
                } while (rs.next());
            %>  </table ><%
        } else {
            %>
        <h2>Fourth year do not have Any Notice yet</h2>
        <%
            }
        %>     

    </body>
</html>
