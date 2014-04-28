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
        </style>
   <%
       String target_strudent="100010116004";
        ResultSet rs=gtu_result.get_result(target_strudent);
String msg="";
Double[] a=new Double[8];
if(rs.next())
{
    a[0]=rs.getDouble(2);
    a[1]=rs.getDouble(3);
    a[2]=rs.getDouble(4);
    a[3]=rs.getDouble(5);
    a[4]=rs.getDouble(6);
    a[5]=rs.getDouble(7);
    a[6]=rs.getDouble(8);
    a[7]=rs.getDouble(9);

   
   %>         
        
    </head>
    <body>
        <form name="update_result_form" action="s3_result_update" method="POST">
            <table border="0">
            
                <tbody>
                    <tr>
                        <td class="sem">Semester 1</td>
                        <td><input type="text" name="sem1" value="<%=a[0]%>" /></td>
                        <td class="gap"></td>
                        <td class="sem">Semester 2</td>
                        <td><input type="text" name="sem2" value="<%=a[1]%>" /></td>
                    </tr>
                    <tr>
                        <td class="sem">Semester 3</td>
                        <td><input type="text" name="sem3" value="<%=a[2]%>" /></td>
                        <td class="gap"></td>
                        <td class="sem">Semester 4</td>
                        <td><input type="text" name="sem4" value="<%=a[3]%>" /></td>
                    </tr>
                    <tr>
                        <td class="sem">Semester 5</td>
                        <td><input type="text" name="sem5" value="<%=a[4]%>" /></td>
                        <td class="gap"></td>
                        <td class="sem">Semester 6</td>
                        <td><input type="text" name="sem6" value="<%=a[5]%>" /></td>
                    </tr>
                    <tr>
                        <td class="sem">Semester 7</td>
                        <td><input type="text" name="sem7" value="<%=a[6]%>" /></td>
                        <td class="gap"></td>
                        <td class="sem">Semester 8</td>
                        <td><input type="text" name="sem8" value="<%=a[7]%>" /></td>
                    </tr>
                    <tr>
                        <td class="sem"><input type="submit" value="Update Result" name="update" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="hidden" name="user_id" value="<%=target_strudent%>" />
        
        
        </form>
    </body>
    <%} else {%>
</head> <%}%>
    
</html>
