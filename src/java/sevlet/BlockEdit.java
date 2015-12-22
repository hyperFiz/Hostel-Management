/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sevlet;

import Model.Block;
import Model.BlockKolej;
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
public class BlockEdit extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
//            
            DB db = new DB();
            Block block;
            BlockKolej blockKolej;
            ArrayList blockList = new ArrayList();
            ArrayList bkList  = new ArrayList();
            
            String servletPath = request.getServletPath();
            String url = "/admin/Block.jsp";
            
            if(servletPath.equals("/BlockEdit")){
                
                int roomID = Integer.parseInt(request.getParameter("roomID"));
                int blockID = Integer.parseInt(request.getParameter("blockID"));

                if(db.connect()){
                    if(db.query("SELECT * FROM room INNER JOIN block ON room.blockID=block.blockID INNER JOIN kolej ON block.kolejID=kolej.kolejID where room.blockID='"+blockID+"' and roomID='"+roomID+"';")){
                        block = new Block();
                        block.setRoomID(Integer.parseInt(db.getDataAt(0,"roomID")));
                        block.setRoomNo(Integer.parseInt(db.getDataAt(0, "roomNo")));
                        block.setRoomType(Integer.parseInt(db.getDataAt(0, "roomType")));
                        block.setBlockID(Integer.parseInt(db.getDataAt(0, "blockID")));
                        blockList.add(block);
                        request.setAttribute("blockList", blockList);
                    }
                    if(db.query("SELECT * FROM block INNER JOIN kolej ON block.kolejID=kolej.kolejID")){
                        for(int i=0; i<db.getNumberOfRows(); i++)
                        {
                            blockKolej = new BlockKolej();
                            blockKolej.setBlockID(Integer.parseInt(db.getDataAt(i, "blockID")));
                            blockKolej.setBlockName(db.getDataAt(i, "blockName"));
                            blockKolej.setKolejName(db.getDataAt(i, "kolejName"));
                            bkList.add(blockKolej);
                            request.setAttribute("bkList", bkList);
                        }
                    }
                    url ="/admin/BlockEdit.jsp";
            RequestDispatcher dispatch = getServletContext().getRequestDispatcher(url);
            dispatch.forward(request, response);
            
                }
                
            }else if(servletPath.equals("/BlockEdit/edit")){
                
                int roomID = Integer.parseInt(request.getParameter("roomID"));
                int roomNo = Integer.parseInt(request.getParameter("roomNo"));
                int roomType = Integer.parseInt(request.getParameter("roomType"));
                int blockID = Integer.parseInt(request.getParameter("blockID"));
                
                if(db.connect()){
                    if(db.query("update room set roomNo='"+roomNo+"',roomType='"+roomType+"',blockID='"+blockID+"' where roomID='"+roomID+"'")){
                        response.sendRedirect("../BlockList");
                        
                    }else{
                        url="BlockEdit";
                    }
                    
                }
                db.close();
                
                out.println("blockedit/edit");
            }
            
            
            out.println(request.getServletPath());
            
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
