<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"  href="graduate.css">        
        <title>Insert Page</title>
    </head>
    <body>
        <center>
        <h1> Create Account </h1>
       <%@include file="connectionDB.jsp"%>
       <br><br>
        <%
        PreparedStatement pst= null;
        ResultSet emps=null;
        String q;
        q= "insert into info values (?,?,?,?,?,?,?)";
        
      try{
      pst=conn.prepareStatement(q);
      pst.setString(1, request.getParameter("ID"));
      pst.setString(2, request.getParameter("FNAME"));
      pst.setString(3, request.getParameter("LNAME"));
      pst.setString(4, request.getParameter("USERNAME"));
      pst.setString(5, request.getParameter("PASSWD"));
      pst.setString(6, request.getParameter("ADDRESS"));
      pst.setString(7, request.getParameter("PHONENUMBER"));
      pst.executeUpdate();
     
      out.println(" Insert Data Successful ");
      
      }
   
      catch(Exception e){
         out.println("Error in retrieving data" + e );
      } %>
      <FORM name="Create Account">
      <table border= "3">
          <tbody>
              <tr>
                  <td>ID</td>
                  <td> <input type="text" name="ID" value="" size="40" /> </td>
              </tr>
              <tr>
                  <td>FNAME</td>
                  <td><input type="text" name="FNAME" value="" size="40" /></td>
              </tr>
              <tr>
                  <td>LNAME</td>
                  <td><input type="text" name="LNAME" value="" size="40" /></td>
              </tr>
              <tr>
                  <td>USERNAME</td>
                  <td><input type="text" name="USERNAME" value="" size="40" /></td>
              </tr>
              <tr>
                  <td>PASSWD</td>
                  <td><input type="text" name="PASSWD" value="" size="40" /></td>
              </tr>
              <tr>
                  <td>ADDRESS</td>
                  <td><input type="text" name="ADDRESS" value="" size="40" /></td>
              </tr>
              <tr>
                  <td>PHONENUMBER</td>
                  <td><input type="text" name="PHONENUMBER" value="" size="40" /></td>
              </tr>
              
          </tbody>
      </table>
          
          <input type="submit"  value="submit" name ="submit" />
          <input type="reset"  value="clear" name="reset" />
      </form>
      <br><br>
      
       <a href="login.jsp"> Back Login Page </a>
       </center>
       
    <style>

    body{
    background-color: gray ;
    
    }
       </style>
</body>
</html>