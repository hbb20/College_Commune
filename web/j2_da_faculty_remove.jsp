<%-- 
    Document   : j2_da_faculty_remove
    Created on : 23 Feb, 2014, 10:50:00 AM
    Author     : HARSH BHAKT
--%>

<%@page import="c_c_db_package.faculty_model"%>
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

        c_c_db ccd = new c_c_db();
        Connection conn = ccd.getDB();
        Statement st = conn.createStatement();
        faculty_model fm = new faculty_model();
        // String query="select * from req_waiting where dept='IT'";
        ResultSet rs = fm.getDeptFaculty((String) session.getAttribute("live_dept"));


    %>
    <%  boolean checked = false;
        String msg = "";
        String id = "";

        String f_name = "";
        String m_name = "";
        String l_name = "";
        try {
            msg = (String) request.getAttribute("msg");
        } catch (Exception e) {
            msg = "";
        } finally {
            request.removeAttribute("msg");
        }
        if (msg == null) {
            msg = "";
        }

    %>
    <body style="background-image:url(<%=(String) getServletContext().getInitParameter("background_image")%>); background-repeat:no-repeat;background-size: cover">


        <h3 style="color: green" align="center"><%=msg%></h3>
        <div align="center">


            <%
                while (rs.next()) {
                    checked = true;
                    id = rs.getString(1);
                    f_name = rs.getString(2);
                        m_name = rs.getString(3);
                        l_name = rs.getString(4);%> 
            <form name="<%=id%>" action="s2_da_faculty_roleUpdate" method="post"><table border="0" align="center">
                    <tr>
                        <td width="150px"><%=f_name%>&nbsp;<%=m_name%>&nbsp;<%=l_name%></td>
                        <td>  <select name="role">
                                <option value="prof" <%if (rs.getString("position").equals("prof")) {%>selected="true"<%}%>>Professor</option>
                                <option value="assoProf" <%if (rs.getString("position").equals("assoProf")) {%>selected="true"<%}%>>Asso. Professor</option>
                                <option value="hod" <%if (rs.getString("position").equals("hod")) {%>selected="true"<%}%>>HOD</option>
                            </select></td>
                        <td><input type="submit" value="Update Role" name="<%=rs.getString(1)%>" style="width:150px" /></td>
                <input type="hidden" name="user_id" value="<%=id%>" /></form>

        </form>
        <form name="delete" action="s2_da_faculty_remove" method="post">
            <td><input type="submit" value="Remove Faculty" name="<%=rs.getString(1)%>" style="width:150px" /></td>
            <input type="hidden" name="user_id" value="<%=id%>" /></form>

    </form>
</tr></table>
<%}%>


</div>
<% if (checked == false) {%><h3 align="center">Your department does not have Registered Faculty in Department</h3><%}%>
</body>
</html>
