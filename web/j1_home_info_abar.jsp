<%-- 
    Document   : j1_home_info_abar
    Created on : 8 Apr, 2014, 10:27:57 AM
    Author     : HARSH BHAKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" type="text/css" href="j0_general.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image:url(<%=(String)getServletContext().getInitParameter("background_image")%>);">
        <table border="0" align="center">
             <tbody>
                <tr>
                    <td><form name="f_cc" action="j1_home_info_cc.jsp" target="infoPageHolder"><input width="150px" class="sub_abar_button sub_abar_button_left" type="submit" value="About Project" name="submit_project_info" />
                        </form></td>
                    <td><form name="f_ADIT" action="j1_home_info_college.jsp" target="infoPageHolder"><input width="150px" class="sub_abar_button" type="submit" value="About A.D.I.T" name="submit_project_info" />
                        </form></td>
                    <td><form name="f_GTU" action="j1_home_info_gtu.jsp" target="infoPageHolder"><input width="150px" class="sub_abar_button" type="submit" value="About G.T.U" name="submit_project_info" />
                        </form></td>
                    <td><form name="developement_team" action="j1_home_info_developer.jsp" target="infoPageHolder"><input width="150px" class="sub_abar_button sub_abar_button_right" type="submit" value="About Us" name="submit_project_info" />
                        </form></td>    
                        
                </tr>
            </tbody>
        </table>

    </body>
</html>
