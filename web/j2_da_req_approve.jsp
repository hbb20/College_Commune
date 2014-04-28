<%-- 
    Document   : j2_da_home
    Created on : 9 Dec, 2013, 2:45:47 PM
    Author     : HBB20
--%>

<%@page import="java.awt.Desktop.Action"%>
<%@page import="java.lang.annotation.Target"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="c_c_db_package.*,java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Dept Admin Request Page</title>
        <script>
         
        </script>
    </head>
    <%
    ResultSet rs=null;
    c_c_db ccd=new c_c_db();
    Connection conn=ccd.getDB();
    Statement st=conn.createStatement();
    String query="select * from req_waiting where dept='"+(String)session.getAttribute("live_dept")+"' and approved='no'";
   // String query="select * from req_waiting where dept='IT'";
    rs=st.executeQuery(query);
    
    

%>
<%  boolean checked=false;
    String msg="";
            String id="";
            String f_name="";
            String l_name="";
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

    <body style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>); background-repeat:no-repeat;background-size: cover">
        
       
        <h3 style="color: green" align="center"><%=msg%></h3>
        <div align="center">
        
                  
                <% 
                   while(rs.next())
                        { checked=true;
                         id=rs.getString(1);
                         f_name=rs.getString(2);
                         l_name=rs.getString(3);
                         
                             %> <form name="<%=id%>" action="s2_da_req_approve" method="post"><table border="0" align="center">
                         <tr> <td width="100px"><%=id%></td>
                             <td width="150px"><%=f_name%>&nbsp;<%=l_name%></td>
                        
                             <td><input type="submit" value="Approve Request" name="<%=rs.getString(1)%>" style="width:150px" /></td>
                          <td><input type="hidden" name="user_id" value="<%=id%>" /></form>
                          <form action="s2_da_req_suspended">
                              <td><input type="submit" value="Suspend Request" name="<%=rs.getString(1)%>" style="width:150px"/></td>
                          <td><input type="hidden" name="user_id" value="<%=id%>" />
                          </form>
                      </tr></table>
                      <%}%>
            
        
        </div>
                      <% if(checked==false){%><h3 align="center">You have no waiting Request from Department</h3><%}%>
    </body>
</html>
