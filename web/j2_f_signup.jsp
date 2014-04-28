<%-- 
    Document   : j2_f_signup
    Created on : 20 Feb, 2014, 10:00:01 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="c_c_db_package.user_model,java.sql.*" %>
<%@include file="j3_check_role_f.jsp" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Sign Up</title>
    </head>
    
    <%
    user_model um=new user_model();
    %>
    <body>
        <body onload='document.form1.text1.focus()'style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-repeat:no-repeat;background-size: cover">
        <h1 align="center">Faculty Sign up</h1>
        <form action="s1_f_signup" method="post">
          <table align="center">
              <tr><td>  
            <div style="background-image: url(./graphics/div_flat_pink.png);margin-left:30%;margin-right:30%  ">
                <table>
                    <tr><td colspan="3"><h3>Name</h3></td></tr>
                    <tr>
                
                        <td>First Name</td>
                        <td>Middle Name</td>
                        <td>Last Name</td>
                   </tr>
                   <tr>
                       <td align="right"><input type="text" name="f_name" value="" size="12"  /></td>
                       <td><input type="text" name="m_name" value="" size="12" /></td>
                       <td><input type="text" name="l_name" value="" size="12" /></td>
                   
                   </tr>
                   <tr><td>Short Name:</td><td><input type="text" name="short_name" value="" size="5" /></td></tr>
                   <tr></tr>
                   <tr><td>
                   <h3> Contact Details:</h3></td>
                   </tr>
                   <tr><td align="right"> Self cell</td>
                       <td colspan="2"><input type="text" name="self_cell" value="" /></td>
                
                    <tr>
                       <td align="right">Email</td>
                       <td colspan="2"><input type="text" name="email" value="" /></td>
                    </tr>
                   <tr></tr>
                   <tr><td align="right"><h3>Address</h3></td></tr>
                   <tr>
                       <td align="right">Local</td>
                       <td colspan="2"><input type="text" name="local_add" value="" /></td>
                   </tr>
                  
                   
                </table>
            </div>
                  </td>
                  <td colspan="12"></td>
                  <td>
            <div style="background-image: url(./graphics/div_flat_pink.png);margin-left:30%;margin-right:30%  ">
            <table>
                <tr><td></td></tr>
               <tr>
                    <td>Authority &nbsp;</td>
                    <td><%=(String)session.getAttribute("live_authority")%></td>
                </tr>
                 <tr>
                    <td>Dept &nbsp;</td>
                    <td><%=(String)session.getAttribute("live_dept")%></td>
              </tr>
                
                <tr>
                    <td align="right">Joining year</td>
                    <td> <select name="batch_year">
                            <option value="2008">2008</option>
                            <option value="2009">2009</option>
                            <option value="2010">2010</option>
                            <option value="2011">2011</option>
                            <option value="2012">2012</option>
                            <option value="2013">2013</option>
                        </select>
                </tr>
                
               
                <tr><td><input type="text" hidden="hidden"><td></tr>
                
                <tr><td colspan="2"><h2>Authentication</h2></td></tr>
                <tr>
                    <td align="right">User ID</td> 
                    <td><input type="text" name="user_id" value="<%=(String)session.getAttribute("user_id")%>" readonly="readonly">
                    
                </tr>
                <tr><td>password</td><td><input type="password" id="txtNewPassword" name="pwd1" value="" /></td></tr>
                <tr><td>RE-password</td><td><input type="password" id="txtConfirmPassword" onchange="passwordval" name="pwd2" value="" /></td></tr>
                <div class="registrationFormAlert" id="divCheckPasswordMatch">
                </div>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr><td align="right"><input type="button" value="Back" name="btn_back" onclick="window.location.href='./j1_approved.jsp'" onclick="mobnum(document.form1.text1)"/></td>
                   <td><input type="submit" value="Submit" name="btn_submit" /></td></tr>
                <tr><td><input type="hidden" name="hh" value="" /><td></tr>
            </table>
        </div>
              </tr></table><!-- first name,middle,last,self mobile,parent mobile,local address,permenent -->
        </form>
    
    </body>
</html>
