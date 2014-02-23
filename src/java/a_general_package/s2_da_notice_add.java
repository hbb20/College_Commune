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
import c_c_db_package.notice_model;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HARSH BHAKT
 */
public class s2_da_notice_add extends HttpServlet {

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
        try {
            /* TODO output your page here. You may use following sample code. */
          String title,body,urgency,dept,level[],sender;
          int num_class,urg;
          title=request.getParameter("title");
          body=request.getParameter("body");
          urgency=request.getParameter("urgency");
          level=request.getParameterValues("levels");
          num_class=level.length;
          urg=Integer.parseInt(urgency);
          dept=(String)hs.getAttribute("live_dept");
          sender=(String)hs.getAttribute("live_user");
          out.printf("Title :"+title+" Body:"+body+" Urgency:"+urgency+"num_of_classes"+num_class);
          for(int i=0;i<num_class;i++)
              out.println(level[i]);
          notice_model nm=new notice_model(title, body, sender, urg);
          boolean stored=nm.storeNotice();
          if(stored)
          {
              request.setAttribute("msg","Notice has been placed successfully");
          }
          else
          {
              request.setAttribute("msg","Sorry! Notice Could not be Placed");
          }
          out.println("stored="+stored);
        } finally {
            RequestDispatcher rd=request.getRequestDispatcher((String)request.getRequestURI());
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
