/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package a_general_package;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import c_c_db_package.class_canvas_model;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;


/**
 *
 * @author HARSH BHAKT
 */
public class s2_da_canvas_add extends HttpServlet {

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
        String requested_page="j3_canvas_send.jsp";
        String sender_id,msg_text,dept;
        String msg;
        int level;
        HttpSession hs=request.getSession();
        class_canvas_model ccm;
        try {
            /* TODO output your page here. You may use following sample code. */
           // sender_id=request.getParameter("sender_id");
            msg_text=request.getParameter("msg_text");
            //dept=request.getParameter("dept");
           // level=Integer.parseInt(request.getParameter("level"));
            if(msg_text.length()!=0){
            sender_id=(String)hs.getAttribute("live_user");
            dept=(String)hs.getAttribute("live_dept");
            level=Integer.parseInt((String)hs.getAttribute("live_level"));
            ccm=new class_canvas_model(sender_id, msg_text, dept, level);
             
            boolean isDone=ccm.add_new_message();
            if(!isDone)
            {
                msg="Could not send your message to chat";
            }
            }
            else
                msg="Can not post Empty message";
        } finally {
            RequestDispatcher rd=request.getRequestDispatcher(requested_page);
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
