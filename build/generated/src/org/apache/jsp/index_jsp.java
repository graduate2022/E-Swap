package org.apache.jsp;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"mainproject.css\">\n");
      out.write("    \n");
      out.write("    <title>Document</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<section>\n");
      out.write("<div class=\"div1\"> <b> E-SWAP</b> \n");
      out.write("<button><a href=\"login.jsp\"> Login </a></button> \n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"div2\">\n");
      out.write("<button> Search </button>\n");
      out.write("<input type=\"text\" placeholder=\"Search by ID\">     \n");
      out.write("</div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<br> \n");
      out.write("<div class=\"container\">\n");
      out.write("<div class=\"row\">\n");
      out.write("<div class=\"div3 col-lg-4\">\n");
      out.write("<img src=\"/Graduate/assets/images/1.jpg\" alt=\"\">\n");
      out.write("<img src=\"/Graduate/assets/images/2.jpg\" alt=\"\">\n");
      out.write("<img src=\"/Graduate/assets/images/3.jpg\" alt=\"\">\n");
      out.write("<br><br><br>\n");
      out.write("<div class=\"div4\">\n");
      out.write("<img src=\"/Graduate/assets/images/4.jpg\" alt=\"\">\n");
      out.write("<img src=\"/Graduate/assets/images/5.jpg\" alt=\"\">\n");
      out.write("<img src=\"/Graduate/assets/images/6.jpg\" alt=\"\">\n");
      out.write("</div>\n");
      out.write("<br><br><br>\n");
      out.write("<div class=\"div5\">\n");
      out.write("<img src=\"/Graduate/assets/images/7.jpg\" alt=\"\">\n");
      out.write("<img src=\"/Graduate/assets/images/8.jpg\" alt=\"\">\n");
      out.write("<img src=\"/Graduate/assets/images/9.jpg\" alt=\"\">\n");
      out.write("</div>\n");
      out.write("<br><br><br>\n");
      out.write("<div class=\"div6\">\n");
      out.write("<img src= \"/Graduate/assets/images/10.jpg\" alt=\"\">\n");
      out.write("<img src=\"/Graduate/assets/images/7.jpg\" alt=\"\">\n");
      out.write("<img src=\"/Graduate/assets/images/1.jpg\" alt=\"\">\n");
      out.write("</div>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    \n");
      out.write("<style>\n");
      out.write("    \n");
      out.write(".div1 {height: 70px;  width: 1350px; margin-top: 15px;  font-size: 40px; background-color: lightpink;}\n");
      out.write(".div1 b {margin-left: 610px;}\n");
      out.write(".div1 button{margin-left: -700px;  }\n");
      out.write(".div2 input{height: 20px; margin-top: 15px; }\n");
      out.write(".div2 button{height: 30px;}\n");
      out.write(".div3 img{width: 300px; height: 300px; margin-left: 100px;}\n");
      out.write(".div4 img{width: 300px; height: 300px; margin-left: 100px;}\n");
      out.write(".div5 img{width: 300px; height: 300px; margin-left: 100px;}\n");
      out.write(".div6 img{width: 300px; height: 300px; margin-left: 100px;}\n");
      out.write("\n");
      out.write("</style>     \n");
      out.write("    \n");
      out.write("</body>\n");
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
