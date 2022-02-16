package org.apache.jsp.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UIlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <!-- Required meta tags-->\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"au theme template\">\n");
      out.write("        <meta name=\"author\" content=\"Hau Nguyen\">\n");
      out.write("        <meta name=\"keywords\" content=\"au theme template\">\n");
      out.write("\n");
      out.write("        <!-- Title Page-->\n");
      out.write("        <title>Homepage</title>\n");
      out.write("        <!-- Fontfaces CSS-->\n");
      out.write("        <link href=\"../css/font-face.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"../vendor/font-awesome-4.7/css/font-awesome.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"../vendor/font-awesome-5/css/fontawesome-all.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"../vendor/mdi-font/css/material-design-iconic-font.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap CSS-->\n");
      out.write("        <link href=\"../vendor/bootstrap-4.1/bootstrap.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("\n");
      out.write("        <!-- Vendor CSS-->\n");
      out.write("        <link href=\"../vendor/animsition/animsition.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"../vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"../vendor/wow/animate.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"../vendor/css-hamburgers/hamburgers.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"../vendor/slick/slick.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"../vendor/select2/select2.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"../vendor/perfect-scrollbar/perfect-scrollbar.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("\n");
      out.write("        <!-- Main CSS-->\n");
      out.write("        <link href=\"../css/theme.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body class=\"animsition\">\n");
      out.write("        <div class=\"page-wrapper\">\n");
      out.write("            <div class=\"page-content--bge5\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"login-wrap\">\n");
      out.write("                        <div class=\"login-content\">\n");
      out.write("                            <div class=\"login-logo\">\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <img src=\"../asset/SIMLProjext.png\" width=\"250px\" height=\"100px\" />\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"login-form\">\n");
      out.write("                                <form action=\"../Login?proses=login\" method=\"post\">\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label>Username</label>\n");
      out.write("                                        <input class=\"au-input au-input--full\" type=\"text\" name=\"username\" placeholder=\"Username\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label>Password</label>\n");
      out.write("                                        <input class=\"au-input au-input--full\" type=\"password\" name=\"password\" placeholder=\"Password\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <button class=\"au-btn au-btn--block au-btn--green m-b-20\" type=\"submit\">Login</button>\n");
      out.write("                                </form>\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                        </div>  \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Jquery JS-->\n");
      out.write("        <script src=\"../vendor/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <!-- Bootstrap JS-->\n");
      out.write("        <script src=\"../vendor/bootstrap-4.1/popper.min.js\"></script>\n");
      out.write("        <script src=\"../vendor/bootstrap-4.1/bootstrap.min.js\"></script>\n");
      out.write("        <!-- Vendor JS       -->\n");
      out.write("        <script src=\"../vendor/slick/slick.min.js\">\n");
      out.write("        </script>\n");
      out.write("        <script src=\"../vendor/wow/wow.min.js\"></script>\n");
      out.write("        <script src=\"../vendor/animsition/animsition.min.js\"></script>\n");
      out.write("        <script src=\"../vendor/bootstrap-progressbar/bootstrap-progressbar.min.js\">\n");
      out.write("        </script>\n");
      out.write("        <script src=\"../vendor/counter-up/jquery.waypoints.min.js\"></script>\n");
      out.write("        <script src=\"../vendor/counter-up/jquery.counterup.min.js\">\n");
      out.write("        </script>\n");
      out.write("        <script src=\"../vendor/circle-progress/circle-progress.min.js\"></script>\n");
      out.write("        <script src=\"../vendor/perfect-scrollbar/perfect-scrollbar.js\"></script>\n");
      out.write("        <script src=\"../vendor/chartjs/Chart.bundle.min.js\"></script>\n");
      out.write("        <script src=\"../vendor/select2/select2.min.js\">\n");
      out.write("        </script>\n");
      out.write("        <!-- Main JS-->\n");
      out.write("        <script src=\"../js/main.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("<!-- end document-->");
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
