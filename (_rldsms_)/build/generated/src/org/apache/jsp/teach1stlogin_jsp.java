package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class teach1stlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"home.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"about.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"login.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"menu.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <title>Welcome</title>\n");
      out.write("    </head>\n");
      out.write("    <body id=\"abbody\">\n");
      out.write("        ");

            {
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
}
        
      out.write("\n");
      out.write("        ");

            {
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, false);
}
        
      out.write("\n");
      out.write("       \n");
      out.write("        <form action=\"t1stenterdb.jsp\" method=\"post\">\n");
      out.write("             <center>\n");
      out.write("        <table border=\"0\" cellspacing=\"2\" width=\"450\" height=\"300\" id=\"teachlogin\" style=\"margin-top: 100px\">\n");
      out.write("            <tr width=\"100%\" height=\"10px\">\n");
      out.write("                <td width=\"50%\"></td>\n");
      out.write("                <td width=\"50%\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr width=\"100%\" height=\"30px\">\n");
      out.write("                <td>\n");
      out.write("                    <b><i><p class=\"para\" style=\"text-align: center\">Email Id:</p></i></b>\n");
      out.write("                    \n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"text\" required=\"required\" autofocus=\"\" name=\"teach_user\" placeholder=\"abc@dash.com\" id=\"teach_input\">\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            <tr width=\"100%\" height=\"30px\">\n");
      out.write("                <td ><b><i><p class=\"para\" style=\"text-align: center\">Password:</p></i></b></td>\n");
      out.write("                \n");
      out.write("                <td>\n");
      out.write("                    <input type=\"password\" required=\"required\" autofocus=\"\" name=\"teach_pass\" placeholder=\"abs1234\" id=\"teach_input\">\n");
      out.write("                    \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr width=\"100%\" height=\"30px\">\n");
      out.write("                <td><b><i><p class=\"para\" style=\"text-align: center\">Verification Code:</p></i></b></td>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"text\" required=\"required\" name=\"veri\" placeholder=\"23456\" id=\"teach_input\" maxlength=\"5\" minlength=\"5\">\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            <tr width=\"100%\" height=\"30px\">\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("            <center>\n");
      out.write("                <input type=\"submit\" id=\"indexbut\" value=\"Login\" style=\"margin-left: -1%;\">\n");
      out.write("            </center>\n");
      out.write("                </td>\n");
      out.write("            </tr> \n");
      out.write("        </table>\n");
      out.write("           </center>\n");
      out.write("         <center>\n");
      out.write("             <div width=\"50%\" height=\"100\" style=\"text-align: center;margin-left: -100px;margin-top: 10px\">\n");
      out.write("               \n");
      out.write("                <pre>\n");
      out.write("                <span style=\"color: red\">Email id as your id on which verification is sent</span>\n");
      out.write("                <span style=\"color: red\">Password is your DOB(yyyy/mm/dd)</span>\n");
      out.write("                </pre>\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("    </center>\n");
      out.write("        </form>\n");
      out.write("        ");

            {
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
}
        
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
