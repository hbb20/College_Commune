<%-- 
    Document   : j1_acc_req
    Created on : 8 Dec, 2013, 5:59:03 PM
    Author     : HBB20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Account Request</title>
         <script>window.onload=function(){
             document.getElementById("focus").focus();
        }</script>
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
    
         if(msg==null)
                                  {msg="";  }

    %>
    
    <body style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-repeat:no-repeat;background-size: cover">
        <h1 align="center">New Account Request</h1>
        <div align="center">
            <form name="f1" action="s1_verify_new_acc" method="POST">
                <table border="0">
                   
                    <tbody>
                        <tr>
                            <td colspan="2" align="center"> <%=msg%></td>
                        </tr>
                        <tr>
                            <td>Enrollment number</td>
                        
                            <td><input type="text" name="user_id" value="<%=(String)request.getAttribute("user_id")%>" readonly="readonly" /></td>
                        </tr>
                        <tr>
                            <td>First Name</td>
                            <td><input type="text" id="focus" name="f_name" value="" /></td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td><input type="text" name="l_name" value="" /></td>
                        </tr>
                        <tr>
                            <td>Branch</td>
                            <td><select name="branch">
                                    <option value="IT">IT</option>
                                    <option value="CP">CP</option>
                                    <option value="EE">EE</option>
                                    <option value="EC">EC</option>
                                    <option value="FT">FT</option>
                                    <option value="AE">AE</option>
                               
                                </select></td>
                        </tr>
                        <tr>
                            
                            
                            <td align="left"><input type="button" class="sub_abar_button sub_abar_button_left sub_abar_button_right" value="Home" name="btn_home"  onclick="window.location.href='jM1_startup.jsp'"/></td>
                            <td><input type="submit" value="Place Request" /> </td>
        </form>
                        </tr>
                    </tbody>
                </table>

           
        </div>
    </body>
</html>
