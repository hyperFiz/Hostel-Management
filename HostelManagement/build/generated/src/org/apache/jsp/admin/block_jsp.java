package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import database.DB;

public final class block_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    ");

        String UserSession = (String)session.getAttribute("userID");
        if(UserSession==null)
        {
            response.sendRedirect("../index.html");
        }
        DB db = new DB();
        if(db.connect())
        {
    
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <h1>BLOCK / COLLEGE</h1>\n");
      out.write("        \n");
      out.write("        <h3>create new College</h3>\n");
      out.write("        <form method=\"get\" action=\"../createKolej\">\n");
      out.write("        College Name :\n");
      out.write("            <input type=\"text\" placeholder=\"Enter College Name\" name=\"kolejName\">\n");
      out.write("            <br><br>\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" value=\"creat College\">\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("        <h3>create new block</h3>\n");
      out.write("        \n");
      out.write("        <form method=\"get\" action=\"../addBlock\">\n");
      out.write("            College Name : \n");
      out.write("            <select name=\"kolejID\">\n");
      out.write("                ");
db.query("SELECT * FROM kolej");
                    for(int i=0; i<db.getNumberOfRows(); i++)
                    {
                     
                
      out.write("\n");
      out.write("                <option value=\"");
      out.print(db.getDataAt(i,"kolejID"));
      out.write('"');
      out.write('>');
      out.print(db.getDataAt(i,"kolejName"));
      out.write("</option>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("            </select><br><br>\n");
      out.write("            Block Name :\n");
      out.write("            <input type=\"text\" placeholder=\"Enter Block Name\" name=\"blockName\">\n");
      out.write("            <br><br>\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" value=\"creat Block\">\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("        <h3>insert room</h3>\n");
      out.write("        <form method=\"get\" action=\"../addRoom\">\n");
      out.write("            Block Name : \n");
      out.write("            <select name=\"blockID\">\n");
      out.write("                ");
db.query("SELECT * FROM block INNER JOIN kolej ON block.kolejID=kolej.kolejID");
                    for(int i=0; i<db.getNumberOfRows(); i++)
                    {
                     
                
      out.write("\n");
      out.write("                <option value=\"");
      out.print(db.getDataAt(i,"blockID"));
      out.write('"');
      out.write('>');
      out.print(db.getDataAt(i,"blockName"));
      out.write(',');
      out.write(' ');
      out.print(db.getDataAt(i,"kolejName"));
      out.write("</option>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("            </select><br><br>\n");
      out.write("            Room Number :\n");
      out.write("            <input type=\"text\" placeholder=\"Enter Room Number\" name=\"roomNo\">\n");
      out.write("            <br><br>\n");
      out.write("            Room Type :\n");
      out.write("            <select name=\"roomType\">\n");
      out.write("                <option value=\"1\">Single</option>\n");
      out.write("                <option value=\"2\">Double</option>\n");
      out.write("            </select>\n");
      out.write("            \n");
      out.write("            <br><br>\n");
      out.write("            <input type=\"submit\" value=\"add room\">\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("            <br><br>\n");
      out.write("            <h3>list of Room</h3>\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td>Room ID</td>\n");
      out.write("                <td>College Name</td>\n");
      out.write("                <td>Block Name</td>    \n");
      out.write("                <td>Room Number</td>\n");
      out.write("                <td>Room Type</td>\n");
      out.write("                <td colspan=\"2\">Option</td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                if(db.query("SELECT * FROM room INNER JOIN block ON room.blockID=block.blockID INNER JOIN kolej ON block.kolejID=kolej.kolejID"))
                {
                    if(db.getNumberOfRows()!=0)
                    {
                        for(int i =0; i<db.getNumberOfRows();i++)
                        {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(db.getDataAt(i, "roomID"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(db.getDataAt(i, "kolejName"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(db.getDataAt(i, "blockName"));
      out.write("</td>  \n");
      out.write("                <td>");
      out.print(db.getDataAt(i, "roomNo"));
      out.write("</td> \n");
      out.write("                <td>");

                        if(db.getDataAt(i, "roomType").equals("1"))
                            out.println("Single");
                        else if(db.getDataAt(i, "roomType").equals("2"))
                            out.println("Double");
                        else
                            out.println("type not stated");
                
      out.write("</td> \n");
      out.write("                <td><button >Edit</button></td>\n");
      out.write("                <td><button >Delete</button></td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                        }
                    }
                }
                else
                    out.println("table not found");
            
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("    ");

            db.close();
        }
        else
            response.sendRedirect("index.html");
    
    
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
