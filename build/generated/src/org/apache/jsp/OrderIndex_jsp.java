package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class OrderIndex_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\"  href=\"graduate.css\">        \n");
      out.write("<!DOCTYPE html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> Order Invoice Page </title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <center>\n");
      out.write("        <h1>");
      out.print( " Book Your Order " );
      out.write("</h1>\n");
      out.write("</center>\n");
      out.write("        <br><br>\n");
      out.write("        <form action=\"Order_Invoice.jsp\" method=\"post\">\n");
      out.write("            \n");
      out.write("            Your Name : <input type=\"text\" value=\"\" size=\"30\" name=\"myname\" required =\"\" placeholder = \"Enter Your Full Name\" >\n");
      out.write("            <br><br>\n");
      out.write("            Product ID : <input type=\"number\" value=\"\" size=\"100\" name=\"myorderid\" required =\"\" placeholder = \"Enter Your Order ID\" min=\"1\">\n");
      out.write("            <br><br>\n");
      out.write("            Product Name : <input type=\"text\" value=\"\" size=\"28\" name=\"myorder\" required =\"\" placeholder = \"Enter Your Order Name\">\n");
      out.write("            <br><br>\n");
      out.write("            Quantity : <input type=\"number\" value=\"\" size=\"80\" name=\"Quantity\" required =\"\" placeholder = \"Enter the Quantity \"  min=\"1\" >\n");
      out.write("            <br><br>\n");
      out.write("            Phone number : <input type=\"tel\" id=\"phone\" size=\"28\" name=\"mynumber\" required =\"\" placeholder=\"Enter Just Number please\">\n");
      out.write("            \n");
      out.write("                       \n");
      out.write("            \n");
      out.write("            <br><br><br>\n");
      out.write("            <input type=\"submit\" value=\"submit\"> &nbsp;&nbsp;\n");
      out.write("            <input type=\"reset\" value=\"reset\">\n");
      out.write("        \n");
      out.write(" </form>\n");
      out.write("        \n");
      out.write("       <style>\n");
      out.write("\n");
      out.write("body{\n");
      out.write("    background-color: gray ;\n");
      out.write("    \n");
      out.write("    }\n");
      out.write("        </style> \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("</body>\n");
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
