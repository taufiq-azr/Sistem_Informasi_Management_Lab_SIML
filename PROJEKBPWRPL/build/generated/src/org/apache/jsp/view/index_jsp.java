package org.apache.jsp.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("        <title>Sistem Informasi Manajemen Laboratorium</title>\n");
      out.write("        <!-- \n");
      out.write("        \n");
      out.write("        Highway Template\n");
      out.write("        \n");
      out.write("        https://templatemo.com/tm-520-highway\n");
      out.write("        \n");
      out.write("        -->\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"apple-touch-icon\" href=\"apple-touch-icon.png\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"../asset/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../asset/css/bootstrap-theme.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../asset/css/fontAwesome.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../asset/css/light-box.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../asset/css/templatemo-style.css\">\n");
      out.write("\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Kanit:100,200,300,400,500,600,700,800,900\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <script src=\"../asset/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js\"></script>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <nav>\n");
      out.write("            <div class=\"logo\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                        <img src=\"../asset/SIMLProjext.png\" width=\"200\" height=\"90\"/>\n");
      out.write("                    </a>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"login-button\">\n");
      out.write("                <a href=\"../view/UIlogin.jsp\">\n");
      out.write("                <img src=\"../asset/img/LoginButton.png\" >\n");
      out.write("                <span></span>\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write(" \n");
      out.write("            \n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <div id=\"video-container\">\n");
      out.write("            <div class=\"video-overlay\"></div>\n");
      out.write("            <div class=\"video-content\">\n");
      out.write("                <div class=\"inner\">\n");
      out.write("                    <center><h1>Selamat Datang</h1></center>\n");
      out.write("                    <p>Lab Management System - Politeknik Caltex Riau</p>\n");
      out.write("\n");
      out.write("                    <div class=\"scroll-icon\">\n");
      out.write("                        <a class=\"scrollTo\" data-scrollTo=\"portfolio\" href=\"#\"><img src=\"../asset/img/scroll-icon.png\" alt=\"\"></a>\n");
      out.write("                    </div>    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <video autoplay=\"\" loop=\"\" muted>\n");
      out.write("                <source src=\"../asset/InShot_20220207_221529718.mp4\" type=\"video/mp4\" />\n");
      out.write("            </video>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <p>Copyright &copy; 2022 Company [2TIB] \n");
      out.write("\n");
      out.write("                        | Designed by 2TIB</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Modal button -->\n");
      out.write("        <div class=\"popup-icon\">\n");
      out.write("            <button id=\"modBtn\" class=\"modal-btn\"><img src=\"../asset/img/contact-icon.png\" alt=\"\"></button>\n");
      out.write("        </div>  \n");
      out.write("\n");
      out.write("        <!-- Modal -->\n");
      out.write("        <div id=\"modal\" class=\"modal\">\n");
      out.write("            <!-- Modal Content -->\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("                <!-- Modal Header -->\n");
      out.write("                <div class=\"modal-header\">\n");
      out.write("                    <h3 class=\"header-title\">Say hello to <em>Highway</em></h3>\n");
      out.write("                    <div class=\"close-btn\"><img src=\"../asset/img/close_contact.png\" alt=\"\"></div>    \n");
      out.write("                </div>\n");
      out.write("                <!-- Modal Body -->\n");
      out.write("                <div class=\"modal-body\">\n");
      out.write("                    <div class=\"col-md-6 col-md-offset-3\">\n");
      out.write("                        <form id=\"contact\" action=\"\" method=\"post\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-12\">\n");
      out.write("                                    <fieldset>\n");
      out.write("                                        <input name=\"name\" type=\"text\" class=\"form-control\" id=\"name\" placeholder=\"Your name...\" required=\"\">\n");
      out.write("                                    </fieldset>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12\">\n");
      out.write("                                    <fieldset>\n");
      out.write("                                        <input name=\"email\" type=\"email\" class=\"form-control\" id=\"email\" placeholder=\"Your email...\" required=\"\">\n");
      out.write("                                    </fieldset>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12\">\n");
      out.write("                                    <fieldset>\n");
      out.write("                                        <textarea name=\"message\" rows=\"6\" class=\"form-control\" id=\"message\" placeholder=\"Your message...\" required=\"\"></textarea>\n");
      out.write("                                    </fieldset>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12\">\n");
      out.write("                                    <fieldset>\n");
      out.write("                                        <button type=\"submit\" id=\"form-submit\" class=\"btn\">Send Message Now</button>\n");
      out.write("                                    </fieldset>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <section class=\"overlay-menu\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"main-menu\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"index.html\">Home - Full-width</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"masonry.html\">Home - Masonry</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"grid.html\">Home - Small-width</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"about.html\">About Us</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"blog.html\">Blog Entries</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"single-post.html\">Single Post</a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                        <p>We create awesome templates for you.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js\"></script>\n");
      out.write("        <script>window.jQuery || document.write('<script src=\"../asset/js/vendor/jquery-1.11.2.min.js\"><\\/script>')</script>\n");
      out.write("\n");
      out.write("        <script src=\"../asset/js/vendor/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"../asset/js/plugins.js\"></script>\n");
      out.write("        <script src=\"../asset/js/main.js\"></script>\n");
      out.write("\n");
      out.write("\n");
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
