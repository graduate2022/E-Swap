package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.*;
import javax.swing.*;

public final class deleteData_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/connectionDB.jsp");
  }

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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\"  href=\"graduate.css\">               \n");
      out.write("        \n");
      out.write("        <title> Delete  Page </title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <center>\n");
      out.write("        <h1> Delete Data Page </h1>\n");
      out.write("<h3> ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> connection page </title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       ");

        Connection conn= null;
        try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee","alaa","000");
        out.println(" connection sucssful");
        }catch (Exception e){
        out.println("error connection " + e);
        } 
      out.write("\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>");
      out.write(" </h3>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <form action= \"deleteData.jsp\">\n");
      out.write("         ID: <input type=\"text\" name=\"ID\" value=\"\" size=\"10\" /><br><br>\n");
      out.write("        \n");
      out.write("        <input type=\"submit\"  value=\"delete\" name =\"submit\" />\n");
      out.write("        <input type=\"reset\"  value=\"clear\" name=\"reset\" />\n");
      out.write("        \n");
      out.write("        </form>\n");
      out.write("\n");
      out.write(" ");

        if(request.getParameter("submit")!=null){
        PreparedStatement pst = null;
        String q = "delete from info where id=? ";
        try{
         pst= conn.prepareStatement(q);
         pst.setString(1, request.getParameter("id"));
        pst.executeUpdate();
      
        {
            if(pst.getLargeUpdateCount()>0)
 
      JOptionPane.showMessageDialog(null, " Data is Deleted Successfully");
        
      else
      JOptionPane.showMessageDialog(null, "Data not found " );
        }
            
        }catch(Exception e){
      JOptionPane.showMessageDialog(null, " Error in Deleted Data" + e);

            } }
        
      out.write("\n");
      out.write("       \n");
      out.write("     <br><br>\n");
      out.write("      <a href=\"displayData.jsp\"> Go to Display Data Page </a>\n");
      out.write("    <br><br><br>\n");
      out.write("    <a href=\"Admin.jsp\"> Go to Admin Page </a>\n");
      out.write("    </center>\n");
      out.write("    \n");
      out.write("    <style>\n");
      out.write("\n");
      out.write("    body{\n");
      out.write("    background-color: lightpink ;\n");
      out.write("    \n");
      out.write("    }\n");
      out.write("       </style>\n");
      out.write("        \n");
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
