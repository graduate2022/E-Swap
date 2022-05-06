package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.*;
import java.sql.*;
import java.sql.*;
import javax.swing.*;

public final class displayData_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Display Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"display1.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("    <center>\n");
      out.write("        <h1> Display Data Page </h1>\n");
      out.write("        <h4> ");
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
      out.write(" </h4>\n");
      out.write("        <h3>  Users Table </h3>\n");
      out.write("        ");

        PreparedStatement pst= null;
        ResultSet emps=null;
        String q;
        q= "select * from info";
      try{
          pst=conn.prepareStatement(q);
      emps = pst.executeQuery();     
     
      }
      catch(Exception e){
         out.println("Error in retrieving data" + e );
      } 
      out.write("\n");
      out.write("      \n");
      out.write("        <table border=\"8\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                 \n");
      out.write("                    <th >ID</th>\n");
      out.write("                    <th>FNAME</th>\n");
      out.write("                    <th>LNAME</th>\n");
      out.write("                    <th>USERNAME</th>\n");
      out.write("                    <th>PASSWD</th>\n");
      out.write("                    <th>ADDRESS</th>\n");
      out.write("                    <th>PHONENUMBER</th>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                ");
 while (emps.next( )) { 
      out.write("\n");
      out.write("                  \n");
      out.write("                <tr>\n");
      out.write("                   \n");
      out.write("                    <td> ");
      out.print(emps.getString(1));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(emps.getString(2));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(emps.getString(3));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(emps.getString(4));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(emps.getString(5));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(emps.getString(6));
      out.write("</td>  \n");
      out.write("                    <td>");
      out.print(emps.getString(7));
      out.write("</td>\n");
      out.write("                    \n");
      out.write("                </tr>  \n");
      out.write("            \n");
      out.write("                ");
 }
      out.write("\n");
      out.write("                \n");
      out.write("                              \n");
      out.write("            </tbody>\n");
      out.write("        </table>               \n");
      out.write("                \n");
      out.write("                \n");
      out.write("        <br><br><br> \n");
      out.write("        <a href=\"Admin.jsp\"> Go to Admin Page </a> </div>\n");
      out.write("       </center>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("    background-color: lightpink ;\n");
      out.write("    \n");
      out.write("    }\n");
      out.write("                \n");
      out.write("        </style>\n");
      out.write("        \n");
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
