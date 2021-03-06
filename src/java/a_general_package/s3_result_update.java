/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package a_general_package;

import c_c_db_package.gtu_result;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HARSH BHAKT
 */
public class s3_result_update extends HttpServlet {

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
        String user_id=request.getParameter("user_id");
        boolean isFormated=true;
        Double[] result=new Double[8];
        String msg="";
        try{
        result[0]=Double.parseDouble(request.getParameter("sem1"));
        result[1]=Double.parseDouble(request.getParameter("sem2"));
        result[2]=Double.parseDouble(request.getParameter("sem3"));
        result[3]=Double.parseDouble(request.getParameter("sem4"));
        result[4]=Double.parseDouble(request.getParameter("sem5"));
        result[5]=Double.parseDouble(request.getParameter("sem6"));
        result[6]=Double.parseDouble(request.getParameter("sem7"));
        result[7]=Double.parseDouble(request.getParameter("sem8"));
        
        }
        catch(Exception e)
        {
            msg="You have not entered result in proper format";
            isFormated=false;
        }
        
        for(int i=0;i<8;i++)
        {
            if(result[i]<0 || result[i]>10)
            {
                msg="SPI can not exceed the range 0 to 10";
                isFormated=false;
                break;
            }
        }
        if(isFormated)
        {
            gtu_result gr=new gtu_result(user_id, result[0], result[1], result[2], result[3], result[4], result[5], result[6], result[7]);
        
        try {
            boolean isDone=gr.add_gtu_result();
            if(isDone)
            {
                msg="Result has been updated successfully";
            }
            else
                msg="Oppps!! Some problem Occured";
            /* TODO output your page here. You may use following sample code. */
                
        } finally {
           
        }
        }
        
         request.setAttribute("msg", msg);
            RequestDispatcher rd=request.getRequestDispatcher("j2_s_result.jsp");
            rd.forward(request, response);
            out.close();
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
