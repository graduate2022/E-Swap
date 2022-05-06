package org.apache.jsp.META_002dINF;

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
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"mainproject.css\">\n");
      out.write("    <title>Document</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<section>\n");
      out.write("<div class=\"div1\"> <b> E-SWAP</b> \n");
      out.write("<button>LOGIN</button>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"div2\">\n");
      out.write("<button>Go</button>\n");
      out.write("<input type=\"text\" placeholder=\"            Search by ID\">     \n");
      out.write("<h3>ما هو الجديد</h3>             </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"div3\">  <h3>خصومات </h3>       </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"div4\"> <h3>حرف يدوية</h3>     </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"div5\">  <h3>طعام</h3>     </div>\n");
      out.write("\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("    <div class=\"div7 col-lg-4\">\n");
      out.write("<img src=\"مشروع/msg1914752503-305 (2).jpg\" alt=\"\">\n");
      out.write("<img src=\"مشروع/msg1914752503-308 (1).jpg\" alt=\"\">\n");
      out.write("<img src=\"مشروع/msg1914752503-312 (3).jpg\" alt=\"\">\n");
      out.write("<div class=\"div8\">\n");
      out.write("<img src=\"مشروع/msg1914752503-313 (2).jpg\" alt=\"\">\n");
      out.write("<img src=\"مشروع/msg1914752503-305 (2).jpg\" alt=\"\">\n");
      out.write("<img src=\"مشروع/msg1914752503-308 (1).jpg\" alt=\"\">\n");
      out.write("</div>\n");
      out.write("<div class=\"div9\">\n");
      out.write("<img src=\"مشروع/msg1914752503-312 (3).jpg\" alt=\"\">\n");
      out.write("<img src=\"مشروع/msg1914752503-313 (2).jpg\" alt=\"\">\n");
      out.write("<img src=\"مشروع/msg1914752503-305 (2).jpg\" alt=\"\">\n");
      out.write("</div>\n");
      out.write("<div class=\"div10\">\n");
      out.write("<img src=\"مشروع/msg1914752503-308 (1).jpg\" alt=\"\">\n");
      out.write("<img src=\"مشروع/msg1914752503-312 (3).jpg\" alt=\"\">\n");
      out.write("<img src=\"مشروع/msg1914752503-313 (2).jpg\" alt=\"\">\n");
      out.write("</div>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
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
