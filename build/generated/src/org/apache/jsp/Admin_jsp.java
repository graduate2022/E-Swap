package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.swing.*;

public final class Admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> Index Page </title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"admin1.css\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("     <style>\n");
      out.write("\n");
      out.write("body{\n");
      out.write("    background-color: lightpink ;\n");
      out.write("    \n");
      out.write("    }\n");
      out.write("     \n");
      out.write("        \n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body> \n");
      out.write("        <br>\n");
      out.write("            <center>\n");
      out.write("                \n");
      out.write("        <h1>Admin Page</h1> \n");
      out.write("        ");

//        Connection conn= null;
//        try{
//        Class.forName("org.apache.derby.jdbc.ClientDriver");
//        conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee","alaa","000");
//        JOptionPane.showMessageDialog(null,"Connection Successful to DB");
//        }catch (Exception e){
//        JOptionPane.showMessageDialog(null,"NOT Connection to DB");
//        } 
      out.write("\n");
      out.write("        \n");
      out.write("        <br><br>\n");
      out.write("        \n");
      out.write("        <button><a href=\"insertData.jsp\">  Go to Insert Data Page </a></button> <br><br>\n");
      out.write("        <button><a href=\"displayData.jsp\"> Go to Display Data Page </a></button><br><br>\n");
      out.write("        <button><a href=\"deleteData.jsp\">  Go to Delete Data Page </a></button><br><br>\n");
      out.write("        <button><a href=\"Order_Invoice.jsp\">  Go to Order Invoice Page </a></button><br><br>\n");
      out.write("        <button><a href=\"OrderIndex.jsp\">  Go to Book Order Page </a></button><br><br>\n");
      out.write("\n");
      out.write("        <button><a href=\"insertproduct.jsp\">  Go to Insert Order Page </a></button><br><br>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <button><a href=\"login.jsp\"> Logout </a></button>       \n");
      out.write("        </center>\n");
      out.write("                    \n");
      out.write("        \n");
      out.write("\n");
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
