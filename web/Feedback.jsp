<%-- 
    Document   : Feedback
    Created on : May 10, 2022, 10:22:55 PM
    Author     : Alaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> feeds Page</title>
    </head>
    <body><center>
        <h2> Feedback Page </h2>
        <h5> <%@include file="connectionDB.jsp"%> </h5>
       <%
        PreparedStatement pst= null;
        ResultSet emps=null;
        String q;
        q= "insert into FEEDBACKS values (?,?,?)";
        
      try{
      pst=conn.prepareStatement(q);
      pst.setString(1, request.getParameter("EMAIL"));
      pst.setString(2, request.getParameter("PHONE"));
      pst.setString(3, request.getParameter("FEEDBACK"));
      pst.executeUpdate();
     
      JOptionPane.showMessageDialog(null, "Thank You" );
      
      }catch(Exception e){
         out.println("Please re your feedback and add all information");
      }     
%>  
      
       <FORM name="FEEDBACKS table" action="Feedback.jsp">
      <table border= "3">
          <tbody>
              <tr>
                  <td>EMAIL</td>
                  <td> <input type="email" name="EMAIL" value="" size="40" required=""  placeholder = "Enter Your Email" /> </td>
              </tr>
              <tr>
                  <td>PHONE</td>
                  <td><input type="number" name="PHONE" value="" size="40" placeholder = "Enter Your Number" min="1"/></td>
              </tr>
              <tr>
                  <td>FEEDBACK</td>
                  <td><input type="text" name="FEEDBACK" value="" size="40" required="" /></td>
              </tr>  
        </tbody>
      </table>
          <br>
          <input type="submit"  value="submit" name ="submit" />
          <input type="reset"  value="clear" name="reset"/>
      </form>
       
     <br><br>
     <button><a href="index.jsp"> Back To Home </a></button>       
 
        </center>
    
           
    <style>

body{
    background-color: burlywood ;
    
    }
        </style>
    
    </body>
</html>
