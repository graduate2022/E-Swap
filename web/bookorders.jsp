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
        <h1> Insert Order Page </h1>
     <h3> <%@include file="connectionDB.jsp"%> </h3>
       <br>
      
       <%
        PreparedStatement pst= null;
        ResultSet emps=null;
        String q;
        q= "insert into ORDERS values (?,?,?,?,?,?)";
        
      try{
      pst=conn.prepareStatement(q);
      pst.setString(1, request.getParameter("CUSTUMERID"));
      pst.setString(2, request.getParameter("CUSTUMERNAME"));
      pst.setString(3, request.getParameter("PRODUCTID"));
      pst.setString(4, request.getParameter("PRODUCTNAME"));
      pst.setString(5, request.getParameter("PHONENUMBER"));
      pst.setString(6, request.getParameter("ADDRESS"));
      pst.executeUpdate();
     
      JOptionPane.showMessageDialog(null, "Insert Successful" );
      
      }catch(Exception e){
         out.println("Error in retrieving data" + e );
      } 
       %>
      
      <FORM name="orders table" action="bookorders.jsp">
      <table border= "3">
          <tbody>
              <tr>
                  <td>CUSTUMERID</td>
                  <td> <input type="text" name="CUSTUMERID" value="" size="40" /> </td>
              </tr>
              <tr>
                  <td>CUSTUMERNAME</td>
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
          </tbody>
      </table>
          
          <input type="submit"  value="submit" name ="submit" />
          <input type="reset"  value="clear" name="reset" />
      </form>
       
    <br><br>
       <a href="login.jsp"> BACK </a>
       </center>
       
    <style>

    body{
    background-color: gray ;
    
    }
       </style>
       

</body>
</html>