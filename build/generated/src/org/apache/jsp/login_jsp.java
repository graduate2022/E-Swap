package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title> Login page </title>\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\"  href=\"graduate.css\">\n");
      out.write(" <style>\n");
      out.write("       \n");
      out.write("body {\n");
      out.write("    background-color: lightpink ;\n");
      out.write("\t}\n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("   \n");
      out.write(" <br><br><br><br><br>\n");
      out.write(" \n");
      out.write("        <form  action=\"loginAction.jsp\" method = \"POST\" >\n");
      out.write("    \n");
      out.write("            <table border=\"3\" cellpadding=\"4\" cellspacing=\"2\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                    <th colspan=\"2\">Login Here</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Username</td>\n");
      out.write("                        <td><input type= \"text\" required=\"\"  placeholder = \"Enter Your User Name\"  id=\"username\" name=\"username\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Password</td>\n");
      out.write("                        <td><input type= \"password\" required=\"\"  placeholder = \"Enter Your Password\" id=\"passwd\" name=\"passwd\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"2\" align=\"center\">\n");
      out.write("                            <input type=\"submit\" value=\"Login\" />\n");
      out.write("                            &nbsp;&nbsp;\n");
      out.write("                            <input type=\"reset\" value=\"Reset\" />\n");
      out.write("                           \n");
      out.write("                             </td>                        \n");
      out.write("                    </tr>                    \n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("             \n");
      out.write("       <br><br>\n");
      out.write("   <a href=\"insertdata_user.jsp\" > Create a new account </a>\n");
      out.write("   \n");
      out.write("</center>\n");
      out.write("\n");
      out.write("</html>");
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
