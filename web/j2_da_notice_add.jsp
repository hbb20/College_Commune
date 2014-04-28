<%-- 
    Document   : j2_da_notice_add
    Created on : 12 Feb, 2014, 3:16:23 PM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="j3_check_role_da.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Notice</title>
    </head>
     <%
    String msg="";
    String color_msg="green";
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
                                  {msg="Add New notice"; 
                                  color_msg="black";
                                  }

    %>
    <body height="100%" width="100%" style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>);">
        <h2 align="center"><%=(String) session.getAttribute("live_dept")%> New Notice</h2>
        <h4 style="color:<%=color_msg%>" align="center"><%=msg%></h4>
        <div align="center" style="background-image: url(./graphics/div_flat_back_pink.png);margin-left:30%;margin-right:30%;background-size:cover;  ">
            <form name="f1" action="s2_da_notice_add" method="POST" >
                <table border="0">
                    <tbody>
                        <tr></tr>
                        <tr>
                            <td><h3>Title</h3></td>
                            <td><input type="text" name="title" value="" /></td>
                        </tr>
                        <tr>
                            <td><h3>Body</h3></td>
                            <td><textarea name="body" rows="4" cols="25">
                                </textarea></td>
                        </tr>
                        <tr>
                            <td><h3>Urgency</h3></td>
                            <td>Low&nbsp;&nbsp;&nbsp;&nbsp;Normal&nbsp;&nbsp;&nbsp;&nbsp;High<br /><input type="range" name="urgency" min="1" max="3"></td>
                        </tr>
                        <tr>
                            <td>Target Users</td>
                            <td><input type="text" name="dept" value="   <%=(String) session.getAttribute("live_dept")%>" readonly="readonly"/></td>
                    
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="checkbox" name="levels" value="faculty" />Faculties</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="checkbox" name="levels" value="1" />level 1
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="checkbox" name="levels" value="2" />level 2
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="checkbox" name="levels" value="3" />level 3
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="checkbox" name="levels" value="4" />level 4
                            </td>
                        </tr>
                     
                        
                        <tr>
                           
                            <td>
                                <input type="reset" value="reset" name="reset" />
                            </td>
                            <td>
                                <input type="submit" value="submit" name="submit" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>

                        </tr>
                    </tbody>
                </table>

            </form>
        </div>
    </body>
</html>
