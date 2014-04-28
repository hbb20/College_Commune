/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
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
import org.jboss.weld.servlet.SessionHolder;

/**
 *
 * @author HARSH BHAKT
 */
public class s3_password_reset extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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
        HttpSession hs=request.getSession();
        String dept=(String)hs.getAttribute("live_dept");
        String t_dept;
        String sender_page=request.getParameter("this_page");
        String msg="Password could not reset";
        String t_user_id=request.getParameter("user_id");
        user_model um=new user_model();
        try {
            
            System.out.println("chk pwdrst 1");
            t_dept=user_model.getDept(t_user_id);
          
            //if(dept.equals(t_dept))
            {
                System.out.println("chk pwdrst 3");
               boolean isDone= um.resetPass(t_user_id);
               if(isDone)
                   msg="Password Reset successfully";
            }
          //  else{
          //      System.out.println("chk pwdrst 4");
           //     msg="you can not reset password of other department's user";
          //  }
            
          
        } 
        catch(Exception ex)
        {
             System.out.println("chk pwdrst 5");
            
        }
        finally {
            hs.setAttribute("msg",msg);
            System.out.println("returning "+msg);
            RequestDispatcher rd=request.getRequestDispatcher(sender_page);
            rd.forward(request, response);
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
