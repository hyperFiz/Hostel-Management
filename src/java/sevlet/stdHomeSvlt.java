/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sevlet;

import Model.StudentHome;
import database.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
public class stdHomeSvlt extends HttpServlet {

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
 
        HttpSession session = request.getSession();
        String UserSession = session.getAttribute("userID").toString();

        StudentHome studentHome;
        ArrayList stdHomeList = new ArrayList();
        
        DB db = new DB();
        
        if(db.connect())
        {

                if(db.query("SELECT * FROM request INNER JOIN kolej ON request.kolejReqID=kolej.kolejID WHERE studentID='"+UserSession+"'") && db.getNumberOfRows()!=0)
                {
                    studentHome = new StudentHome();
                    studentHome.setKolejName(db.getDataAt(0, "kolejName").toString());
                    studentHome.setRoomType(Integer.parseInt(db.getDataAt(0, "roomType")));
                    studentHome.setStatus(db.getDataAt(0, "status"));
                    studentHome.setTest(1);
                    stdHomeList.add(studentHome);
                        
                }else if(db.query("SELECT * FROM room INNER JOIN block ON block.blockID=room.blockID INNER JOIN kolej ON block.kolejID=kolej.kolejID WHERE studentID='"+UserSession+"'") && db.getNumberOfRows()!=0){
                    
                    studentHome = new StudentHome();
                    studentHome.setKolejName(db.getDataAt(0, "kolejName"));
                    studentHome.setBlockName(db.getDataAt(0, "blockName"));
                    studentHome.setRoomNo(Integer.parseInt(db.getDataAt(0, "roomNo")));
                    studentHome.setRoomType(Integer.parseInt(db.getDataAt(0, "roomType")));
                    studentHome.setTest(2);
                    stdHomeList.add(studentHome);
                    
                }else{
                        
                    db.query("SELECT * FROM kolej");
                    for(int i=0; i<db.getNumberOfRows();i++)
                    {
                        studentHome = new StudentHome();
                        studentHome.setKolejID(Integer.parseInt(db.getDataAt(i, "kolejID")));
                        studentHome.setKolejName(db.getDataAt(i, "kolejName"));
                        stdHomeList.add(studentHome);
                    
                    }
                    
                }
                
                db.close();
                    
                request.setAttribute("stdHomeList", stdHomeList);
                
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/student/studentHome.jsp");
                dispatch.forward(request, response);    
                 
        }else
            response.sendRedirect("../index.html");
            
        }catch(Exception e){
            System.out.println(e);
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
