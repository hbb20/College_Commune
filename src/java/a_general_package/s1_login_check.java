/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package a_general_package;

import c_c_db_package.user_model;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import org.apache.catalina.Session;

/**
 *
 * @author HBB20
 */
public class s1_login_check extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String role="",user_id="",next_page="";
        user_model um=new user_model();
        String pass=request.getParameter("password");
        String valid="";
        try {
            /* TODO output your page here. You may use following sample code. */
            
            HttpSession hs=request.getSession();
            user_id=(String)hs.getAttribute("user_id");
            role=um.check_role_user(user_id);
            valid=um.verify_user(user_id, pass);
            String dept=um.getDept(user_id);
            if(valid.equals("ok"))
               
            {  hs.setAttribute("user_id", user_id);
                    if(role.equals("student") )
                    {
                        next_page="j2_s_home.jsp";
                        hs.setAttribute("live_user",user_id);
                        hs.setAttribute("llive_role","student");
                        hs.setAttribute("live_dept",dept);
                    }
                    else if(role.equals("faculty") )
                    {   hs.setAttribute("live_user",user_id);
                        next_page="j2_faculty.jsp";
                        hs.setAttribute("live_role","faculty");
                        hs.setAttribute("live_dept",dept);
                    }
                     else if(role.equalsIgnoreCase("da") )
                    {   hs.setAttribute("live_user",user_id);
                        next_page="j2_da_req_approve.jsp";
                        hs.setAttribute("live_role","da");
                        hs.setAttribute("live_dept",dept);
                    }
                     
                     else if(role.equalsIgnoreCase("fw") )
                    {   hs.setAttribute("live_user",user_id);
                        next_page="j2_f_signup.jsp";
                        hs.setAttribute("role","faculty");
                        hs.setAttribute("live_dept",dept);
                        String autho=um.getAuthority(user_id);
                        hs.setAttribute("live_authority", autho);
                    }
                    else 
                    {   
                        next_page="jM1_startup.jsp";
                        request.setAttribute("msg",user_id+" try Again");
                    }
            }
            else
            {
                next_page="j1_login.jsp";
                request.setAttribute("msg","Authentication Faild");
            }
        } 
        finally {  
            RequestDispatcher rd=request.getRequestDispatcher(next_page);
            rd.forward(request, response);
            out.close();
        }
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
