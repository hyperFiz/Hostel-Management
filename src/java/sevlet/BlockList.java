/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sevlet;

import Model.Block;
import database.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
public class BlockList extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {

            DB db = new DB();
            Block block ;
            ArrayList blockList = new ArrayList();

            if(db.connect()){
                if(db.query("SELECT * FROM room INNER JOIN block ON room.blockID=block.blockID INNER JOIN kolej ON block.kolejID=kolej.kolejID")){
                    
                    for(int i =0; i<db.getNumberOfRows();i++)
                        {
                            block = new Block();
                            block.setRoomID(Integer.parseInt(db.getDataAt(i, "roomID")));
                            block.setKolejName(db.getDataAt(i, "kolejName"));
                            block.setBlockName(db.getDataAt(i, "blockName"));
                            block.setRoomNo(Integer.parseInt(db.getDataAt(i, "roomNo")));
                            block.setStudentID(Integer.parseInt(db.getDataAt(i, "studentID")));
                            block.setRoomType(Integer.parseInt(db.getDataAt(i, "roomType")));
                            blockList.add(block);
                        }
                    
                    request.setAttribute("blockList", blockList);
                    
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/Block.jsp");
                    dispatcher.forward(request, response);
                }
               
           }else{
               response.sendRedirect("../index.jsp");
           }
            
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
