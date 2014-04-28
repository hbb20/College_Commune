<%-- 
    Document   : j3_result_update
    Created on : 28 Apr, 2014, 5:26:32 AM
    Author     : HARSH BHAKT
--%>

<%@page import="c_c_db_package.gtu_result"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            .sem{
                align:'right';
            }
            
            .gap{
                width: 30px;
            }
            
            .spi{
                width: 40px;
            }
        </style>
   <%
       String target_student=(String)session.getAttribute("result_target_student");
        ResultSet rs1=gtu_result.get_result(target_student);
String msg1="";
    try{
    msg1=(String)request.getAttribute("msg");
       }
    catch(Exception e)
                       {
        msg1="";
    }
     finally{
        request.removeAttribute("msg");
    }
         if(msg1==null)
                                  {msg1="";  }

Double[] a1=new Double[8];
if(rs1.next())
{
    a1[0]=rs1.getDouble(2);
    a1[1]=rs1.getDouble(3);
    a1[2]=rs1.getDouble(4);
    a1[3]=rs1.getDouble(5);
    a1[4]=rs1.getDouble(6);
    a1[5]=rs1.getDouble(7);
    a1[6]=rs1.getDouble(8);
    a1[7]=rs1.getDouble(9);
    
   
   %>         
        
    </head>
    <body>
        <form name="update_result_form" action="s3_result_update" method="POST">
            <table border="0">
                    
                <tbody>
                    <tr>
                        <td class="sem">Semester 1</td>
                        <td><input class="spi"  type="text" name="sem1" value="<%=a1[0]%>" /></td>
                        <td class="gap"></td>
                        <td class="sem">Semester 2</td>
                        <td><input class="spi" type="text" name="sem2" value="<%=a1[1]%>" /></td>
                        <td class="gap"></td>
                        <td class="sem">Semester 3</td>
                        <td><input class="spi"  type="text" name="sem3" value="<%=a1[2]%>" /></td>
                        <td class="gap"></td>
                        <td class="sem">Semester 4</td>
                        <td><input class="spi"  type="text" name="sem4" value="<%=a1[3]%>" /></td>
                    </tr>
                    <tr>
                        <td class="sem">Semester 5</td>
                        <td><input  class="spi" type="text" name="sem5" value="<%=a1[4]%>" /></td>
                        <td class="gap"></td>
                        <td class="sem">Semester 6</td>
                        <td><input class="spi"  type="text" name="sem6" value="<%=a1[5]%>" /></td>
                         <td class="gap"></td>
                        <td class="sem">Semester 7</td>
                        <td><input class="spi"  type="text" name="sem7" value="<%=a1[6]%>" /></td>
                        <td class="gap"></td>
                        <td class="sem">Semester 8</td>
                        <td><input class="spi"  type="text" name="sem8" value="<%=a1[7]%>" /></td>
                    </tr>
                    <tr>
                        <td class="sem"><input type="submit" value="Update Result" name="update" /></td>
                        <td colspan="8"><h3 color="red" align="center"><%=msg1%></h3></td>
                    </tr>
                </tbody>
            </table>
                        <input type="hidden" name="user_id" value="<%=target_student%>" />
        
        
        </form>
    </body>
    <%} else {%>
</head><body><h3>No such Result found for <%=target_student%> </h3></body> <%}%>
    
</html>
