<%-- 
    Document   : j3_canvas_send
    Created on : 19 Apr, 2014, 5:28:58 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        <script>window.onload=function(){
             document.getElementById("focus").focus();
             parent.frames["canvas_chat"].location="j3_canvas_chat.jsp";
        };</script>
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
                                  {msg="Year:"+(String)session.getAttribute("live_level")+"    "+(String)session.getAttribute("live_dept"); 
                                  color_msg="black";
                                  }

    %>
    
    <body   style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>);">
        <form name="new_form" action="s2_da_canvas_add" method="POST">
          
        <table>
            <tbody>
                <tr>
                    <td><textarea id="focus" name="msg_text" rows="1" cols="80">
                        </textarea></td>
                        <td><input type="submit" value="Send" name="submit" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><b> <%=msg%></b></td>
                </tr>
                      
            
           
            </tbody>
        </table>
            
            </form>
         
    </body>
</html>
