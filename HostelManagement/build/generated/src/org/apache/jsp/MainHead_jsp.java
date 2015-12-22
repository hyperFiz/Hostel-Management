package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class MainHead_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<head>\n");
      out.write("  <link rel=\"icon\" type=\"image/png\" href=\"http://localhost:8080/AMS/img/hostelicon.png\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("  <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("  <meta name=\"description\" content=\"\">\n");
      out.write("  <meta name=\"author\" content=\"\">\n");
      out.write("  \n");
      out.write(" \n");
      out.write("<!-- Latest compiled and minified JavaScript -->\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("  <title>Hostel Management System</title>\n");
      out.write("  <!-- Bootstrap core CSS -->\n");
      out.write("    <link href=\"bootstrap-3.3.6-dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"bootstrap-3.3.6-dist/css/bootstrap-theme.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"bootstrap-3.3.6-dist/css/bootstrap-theme.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"bootstrap-3.3.6-dist/css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"navbar-fixed-top.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"bootstrap-3.3.6-dist/fonts/glyphicons-halflings-regular.svg\" rel=\"stylesheet\">\n");
      out.write("  <style>\n");
      out.write("        body {background-color:#3498DB}\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Bootstrap core JavaScript\n");
      out.write("            ================================================== -->\n");
      out.write("            <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("            <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("            <script>window.jQuery || document.write('<script src=\"../../assets/js/vendor/jquery.min.js\"><\\/script>')</script>\n");
      out.write("            <script src=\"bootstrap-3.3.6-dist/js/bootstrap.min.js\"></script>\n");
      out.write("            \n");
      out.write("            <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->\n");
      out.write("            <script src=\"../../assets/js/ie10-viewport-bug-workaround.js\"></script>\n");
      out.write("            <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js\"></script>\n");
      out.write("            <script type=\"text/javascript\" src=\"bootstrap/js/bootstrap-datetimepicker.js\"></script>\n");
      out.write("            <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.15.35/js/bootstrap-datetimepicker.min.js\"></script>\n");
      out.write("            \n");
      out.write("            <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.15.35/css/bootstrap-datetimepicker.min.css\" />\n");
      out.write("            <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.15.35/css/bootstrap-datetimepicker.css\" />\n");
      out.write("    \n");
      out.write("    </body>\n");
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
