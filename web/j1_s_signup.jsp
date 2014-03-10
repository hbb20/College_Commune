<%-- 
    Document   : j1_s_signup
    Created on : 9 Dec, 2013, 1:53:12 AM
    Author     : HBB20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="j0_general.css">
        <script type="text/javascript">
            function nameval(value1)
            {
                //value1= document.form.name.value;
                if(value1=="")
                {
                    alert("Please Enter Your Name");
                    document.f.f_name.focus();
                    return false;
                }
                if(!isNaN(f_name=="")
                {
                alert("Please Enter Only Characters");
                document.f.f_name.select();
                return false;
                }
            }
            function mobnum(text)  
            {  
                var self_cell = /^[0-9]+$/;  
                if((self_cell.Length!==10) && text.value.match(self_cell))  
                {  
                    alert('you have return perfect mobile num');  
                    document.form1.text1.focus();  
                    return true;  
                } 
                else  
                {     
                    alert('Please enter only 10 digit mobile number');  
                    document.form1.text1.focus();  
                    return false;  
                } 
             function passwordval() 
             {
                     var password = $("#txtNewPassword").val();
                     var confirmPassword = $("#txtConfirmPassword").val();

               if (password !== confirmPassword)
               {
                    $("#divCheckPasswordMatch").html("Passwords do not match!");
               }
               else
               {
                    $("#divCheckPasswordMatch").html("Passwords match.");
               } 
             } 
             function email_idval()
             {
                    var x=document.forms["myForm"]["email"].value;
                    var atpos=x.indexOf("@");
                    var dotpos=x.lastIndexOf(".");
                    
               if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
               {
                    alert("Not a valid e-mail address");
                    return false;
               }
             }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Sign Up</title>
    </head>
    
    <body onload='document.f.f_name.focus()' style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>);background-size: cover">
        <h1 align="center">Student Sign up</h1>
        <form name="f" action="s1_s_signup" method="post" onsubmit="return email_idval()">
          <table class="margins" align="center">
              <tr><td>
                      
            <div class="input_div">
                <table>
                    <tr><td colspan="3"><h3>Name</h3></td></tr>

                   <tr>
                       <td align="right"><input  class="input_textBox" type="text" name="f_name" value="" size="12" placeholder=" Fisrt Name" onblur="nameval(this.value);"  /></td>
                       <td><input class="input_textBox"  type="text" name="m_name" placeholder=" Father's Name" value="" size="12" /></td>
                       <td><input class="input_textBox"  type="text" name="l_name" placeholder=" Surname"value="" size="12" /></td>
                   
                   </tr>
                   <tr></tr>
                   <tr><td>
                   <h3> Contact Details:</h3></td>
                   </tr>
                   <tr><td align="right"> Self cell</td>
                       <td colspan="2"><input class="input_textBox"  type="text" name="self_cell" value="" width=100px; placeholder=" 10 Digits"/></td>
                   <tr>
                       <td align="right">Parent Cell</td>
                       <td colspan="2"><input class="input_textBox"  type="text" name="parent_cell" value="" width=100px; placeholder=" 10 Digits"/></td>
                   </tr>
                    <tr>
                       <td align="right">Email</td>
                       <td colspan="2"><input class="input_textBox"  type="text" name="email" value="" /></td>
                    </tr>
                   <tr></tr>
                   <tr><td align="right"><h3>Address</h3></td></tr>
                   <tr>
                       <td align="right">Local</td>
                       <td colspan="2"><input  class="input_textBox" type="text" name="local_add" value="" placeholder=" City name" /></td>
                   </tr>
                   <tr>
                       <td align="right">Native</td>
                       <td colspan="2"><input class="input_textBox" type="text" name="per_add" value="" placeholder=" City name"/></td>
                   </tr>
                   
                </table>
            </div>
                  </td>
                  <td colspan="12"></td>
                  <td>
                      <div class="input_div">
            <table>
                <tr>
                    <td colspan="3"><h2>Educational</h2></td>                  
                </tr>
                <tr>
                    <td align="right">GTU enrollment</td> 
                    <td><input type="text" class="input_textBox"  name="user_id" value="<%=(String)session.getAttribute("user_id")%>" readonly="readonly">
                    
                </tr>
                <tr>
                    <td align="right">Batch year</td>
                    <td> <select class="input_textBox"  name="batch_year">
                            <option value="2008">2008</option>
                            <option value="2009">2009</option>
                            <option value="2010">2010</option>
                            <option value="2011">2011</option>
                            <option value="2012">2012</option>
                            <option value="2013">2013</option>
                            
                        </select>
                        
                </tr>
                <tr>
                    <td align="right"> Current Level</td>
                    <td> <select class="input_textBox"  name="level">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                                                       
                        </select>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Department
                    </td>
                <td><select class="input_textBox"  name="dept">
                          <option value="IT">Info. Tech.</option>
                    <option value="CE">Computer Eng.</option>
                    <option value="EC">Electronics & Comm.</option>
                    <option value="FT">Food Processing</option>
                </select></td>
              </tr>
                <tr>
                    <td align="right">Faculty Advisory</td>
                    <td><input class="input_textBox"  name="fa" type="text"></td>
                </tr>
                <tr><td><input class="input_textBox"  type="text" hidden="hidden"><td></tr>
                
                <tr><td colspan="2"><h2>Authentication</h2></td></tr>
                <tr>
                    <td   align="right">User ID</td> 
                    <td><input class="input_textBox" type="text" name="user_id" value="<%=(String)session.getAttribute("user_id")%>" readonly="readonly">
                    
                </tr>
                <tr><td>password</td><td><input  class="input_textBox" type="password" id="txtNewPassword" name="pwd1" value="" /></td></tr>
                <tr><td>RE-password</td><td><input class="input_textBox"  type="password" id="txtConfirmPassword" onchange="passwordval" name="pwd2" value="" /></td></tr>
                
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr><td align="right"><input  class="input_textBox" type="button" value="Back" name="btn_back" onclick="window.location.href='./j1_approved.jsp'" onclick="mobnum(document.form1.text1)"/></td>
                   <td><input  class="input_textBox" type="submit" value="Submit" name="btn_submit" /></td></tr>
                <tr><td><input class="input_textBox"  type="hidden" name="hh" value="" /><td></tr>
            </table>
        </div>
              </tr></table><!-- first name,middle,last,self mobile,parent mobile,local address,permenent -->
        </form>
                    
    </body>
</html>
