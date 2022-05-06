package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.swing.*;

public final class InsertOrders_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title> Book Orders </title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <h1> Insert Order Page </h1>\n");
      out.write("     \n");
      out.write("         ");

        Connection con= null;
        try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee","alaa","000");
        JOptionPane.showMessageDialog(null," sucssful");
        }catch (Exception e){
        out.println("error connection " + e);
        } 
      out.write("\n");
      out.write("        \n");
      out.write("        ");

                
        PreparedStatement pst= null;
        ResultSet emps=null;
        String a;
        a= "insert into orders values (?,?,?,?,?,?,?)";
        
      try{
      pst=con.prepareStatement(a);
      pst.setString(1, request.getParameter("CUSTUMERID"));
      pst.setString(2, request.getParameter("CUSTUMERNAME"));
      pst.setString(3, request.getParameter("PRODUCTID"));
      pst.setString(4, request.getParameter("PRODUCTNAME"));
      pst.setString(5, request.getParameter("PHONENUMBER"));
      pst.setString(6, request.getParameter("ADDRESS"));
      pst.setString(7, request.getParameter("QUANTITY"));
      pst.executeUpdate();
     
      JOptionPane.showMessageDialog(null, "Insert Data Successful" );
      
      }catch(Exception e){
         out.println("Error in retrieving data" + e );
      } 
       
      out.write("\n");
      out.write("       <br>\n");
      out.write("      <center>\n");
      out.write("      <FORM name=\"info table\" action=\"insertData.jsp\">\n");
      out.write("      <table border= \"3\">\n");
      out.write("          <tbody>\n");
      out.write("              <tr>\n");
      out.write("                  <td>CUSTUMERID</td>\n");
      out.write("                  <td> <input type=\"text\" name=\"CUSTUMERID\" value=\"0\" size=\"40\" /> </td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td> CUSTUMERNAME</td>\n");
      out.write("                  <td><input type=\"text\" name=\"CUSTUMERNAME\" value=\"\" size=\"40\" /></td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>PRODUCTID</td>\n");
      out.write("                  <td><input type=\"text\" name=\"PRODUCTID\" value=\"\" size=\"40\" /></td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>PRODUCTNAME</td>\n");
      out.write("                  <td><input type=\"text\" name=\"PRODUCTNAME\" value=\"\" size=\"40\" /></td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>PHONENUMBER</td>\n");
      out.write("                  <td><input type=\"text\" name=\"PHONENUMBER\" value=\"\" size=\"40\" /></td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>ADDRESS</td>\n");
      out.write("                  <td><input type=\"text\" name=\"ADDRESS\" value=\"\" size=\"40\" /></td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>QUANTITY</td>\n");
      out.write("                  <td><input type=\"text\" name=\" QUANTITY\" value=\"\" size=\"40\" /></td>\n");
      out.write("              </tr>\n");
      out.write("              \n");
      out.write("          </tbody>\n");
      out.write("      </table>\n");
      out.write("          \n");
      out.write("          <input type=\"submit\"  value=\"submit\" name =\"submit\" />\n");
      out.write("          <input type=\"reset\"  value=\"clear\" name=\"reset\" />\n");
      out.write("      </form>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("      <br><br>\n");
      out.write("      \n");
      out.write("       <br>\n");
      out.write("       <a href=\"login.jsp\"> Go to Index Page </a>\n");
      out.write("       </center>\n");
      out.write("       \n");
      out.write("       <style>\n");
      out.write("\n");
      out.write("    body{\n");
      out.write("    background-color: gray ;\n");
      out.write("    \n");
      out.write("    }\n");
      out.write("       </style>\n");
      out.write("       \n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("          \n");
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
