<%-- 
    Document   : j2_da_faculty_newplace
    Created on : 20 Feb, 2014, 9:21:53 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Faculty</title>
    </head>
     <%
    String msg="";
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
    <body height="100%" width="100%" style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>);">
        <h1 align="center"><%=(String) session.getAttribute("live_dept")%> New Faculty user</h1>
        <h4><%=msg%></h4>
        <div align="center" style="background-image: url(./graphics/div_flat_back_pink.png);margin-left:30%;margin-right:30%;background-size:cover;  ">
    <form name="f1" action="s2_da_grandNewFaculty" method="POST">
        <table border="0">
            <tbody>
                <tr>&nbsp;</tr>
                <tr>
                    <td>User ID</td>
                    <td><input type="text" name="user_id" value="" /></td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td><select name="position">
                            <option value="prof">Professor</option>
                            <option value="assoProf">Asso. Professor</option>
                            <option value="hod">HOD</option>
                        </select></td>
                </tr>
                <tr>
                    <td><input type="reset" value="Reset" name="reset" /></td>
                    <td><input type="submit" value="Submit" name="submit" /></td>
                </tr>
            </tbody>
        </table>
        <input type="hidden" name="dept" value="<%=(String)session.getAttribute("live_dept")%>" />
    </form>
        </div>
    </body>
</html>
