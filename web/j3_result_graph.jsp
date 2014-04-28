<%-- 
    Document   : j3_result_graph
    Created on : 28 Apr, 2014, 2:25:03 AM
    Author     : HARSH BHAKT
--%>

<%@page import="c_c_db_package.student"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="c_c_db_package.gtu_result"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
     String result_target_student=(String)session.getAttribute("result_target_student");
     ResultSet rs=gtu_result.get_result(result_target_student);
String msg="";
String name="";
String display="";
Double[] a=new Double[8];
   name=student.getStudentName(result_target_student);
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
   display=result_target_student;
   
 
}
else
{
    if(student.isStudent(result_target_student))
    {boolean isInserted=gtu_result.add_blank_gtu_result(result_target_student);
     if(isInserted)
         msg="Just inserted Entry";
     else
         msg="some error occured";
    }
    display="No Record Specified";
    a[0]=0.0;
    a[1]=0.0;
    a[2]=0.0;
    a[3]=0.0;
    a[4]=0.0;
    a[5]=0.0;
    a[6]=0.0;
    a[7]=0.0;
}
    
     
     int canvas_width=800;
     int canvas_height=300;
     
    %>
    <body>
        
        <canvas id="myCanvas" width="<%=canvas_width%>" height="<%=canvas_height%>" style="border:1px solid #d3d3d3;">
Your browser does not support the HTML5 canvas tag.</canvas>
        <h4><%=msg%></h4>
<script>

var c=document.getElementById("myCanvas");
var ctx=c.getContext("2d");
var margin_x=50,margin_y=50;
var canvas_width=<%=canvas_width%>;
var canvas_height=<%=canvas_height%>;

ctx.stroke();

//draws vertical line
ctx.moveTo(margin_x,canvas_height-margin_y);
ctx.lineTo(margin_x,margin_y);
ctx.stroke();

//draws horizontal line
ctx.moveTo(margin_x,canvas_height-margin_y);
ctx.lineTo(canvas_width-margin_x,canvas_height-margin_y);
ctx.stroke();

//
var ver_work_line=canvas_height-(2*margin_y);
var hor_work_line=canvas_width-(2*margin_x);

var ver_step=(ver_work_line)/10;
var hor_step=(hor_work_line)/8;

for(var ver=0;ver<=10;ver++)
{
    ctx.fillStyle = "Blue"; //red
ctx.beginPath();
ctx.arc(margin_x,(canvas_height-margin_y)-(ver*ver_step),3,0,Math.PI*2,true);
ctx.closePath();
ctx.fill();
    ctx.font = "15px Arial blue";
    ctx.fillText(ver+".00",margin_x-40,(canvas_height-margin_y)-(ver*ver_step)+5);
}

for(var hor=1;hor<=10;hor++)
{
    ctx.fillStyle = "Blue"; //red
ctx.beginPath();
ctx.arc(margin_x+(hor*hor_step),(canvas_height-margin_y),3,0,Math.PI*2,true);
ctx.closePath();
ctx.fill();
    ctx.font = "15px Arial green";
    ctx.fillText("Sem "+hor,margin_x+(hor*hor_step)-15,(canvas_height-margin_y)+15);
}


var sem=[<%=a[0]%>,<%=a[0]%>,<%=a[1]%>,<%=a[2]%>,<%=a[3]%>,<%=a[4]%>,<%=a[5]%>,<%=a[6]%>,<%=a[7]%>];
ctx.moveTo(margin_x,canvas_height-margin_y);
for(var i=0;i<=8;i++)
{
var result=sem[i];
var next_pt_x=margin_x+(i*hor_step);
var next_pt_y=(canvas_height-margin_y)-(result*ver_step);

ctx.lineTo(next_pt_x,next_pt_y);

ctx.lineTo(next_pt_x,canvas_height-margin_y);
ctx.stroke();
ctx.moveTo(next_pt_x,next_pt_y);
ctx.fillStyle = "green";
if(i>1 && sem[i]<sem[i-1])
ctx.fillStyle = "red"; //red
ctx.beginPath();
ctx.arc(next_pt_x,next_pt_y,5,0,Math.PI*2,true);
ctx.closePath();
ctx.fill();
ctx.font = "20px Arial";
if(i!==0)
ctx.fillText(sem[i],next_pt_x-10,next_pt_y-20);
ctx.moveTo(next_pt_x,next_pt_y);
}
ctx.fillStyle = "orange"; 
ctx.fillText(<%=display%>,15,25);

</script>

</body>

    </body>
</html>
