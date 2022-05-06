<%-- 
   
--%>

<%@page import= "java.sql.*"%>
<%@page import= "javax.swing.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Book Orders </title>
    </head>
    <body>
    <center>
        <h1> Insert Order Page </h1>
     
         <%
        Connection con= null;
        try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee","alaa","000");
        JOptionPane.showMessageDialog(null," sucssful");
        }catch (Exception e){
        out.println("error connection " + e);
        } %>
        
        <%
                
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
       %>
       <br>
      <center>
      <FORM name="info table" action="insertData.jsp">
      <table border= "3">
          <tbody>
              <tr>
                  <td>CUSTUMERID</td>
                  <td> <input type="text" name="CUSTUMERID" value="0" size="40" /> </td>
              </tr>
              <tr>
                  <td> CUSTUMERNAME</td>
                  <td><input type="text" name="CUSTUMERNAME" value="" size="40" /></td>
              </tr>
              <tr>
                  <td>PRODUCTID</td>
                  <td><input type="text" name="PRODUCTID" value="" size="40" /></td>
              </tr>
              <tr>
                  <td>PRODUCTNAME</td>
                  <td><input type="text" name="PRODUCTNAME" value="" size="40" /></td>
              </tr>
              <tr>
                  <td>PHONENUMBER</td>
                  <td><input type="text" name="PHONENUMBER" value="" size="40" /></td>
              </tr>
              <tr>
                  <td>ADDRESS</td>
                  <td><input type="text" name="ADDRESS" value="" size="40" /></td>
              </tr>
              <tr>
                  <td>QUANTITY</td>
                  <td><input type="text" name=" QUANTITY" value="" size="40" /></td>
              </tr>
              
          </tbody>
      </table>
          
          <input type="submit"  value="submit" name ="submit" />
          <input type="reset"  value="clear" name="reset" />
      </form>
        
        
      <br><br>
      
       <br>
       <a href="login.jsp"> Go to Index Page </a>
       </center>
       
       <style>

    body{
    background-color: gray ;
    
    }
       </style>
       

</body>
</html>
          
        
    </body>
</html>
