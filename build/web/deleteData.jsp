
<%@page import= "java.sql.DriverManager"%>
<%@page import= "java.sql.ResultSet"%>
<%@page import= "java.sql.Statement"%>
<%@page import= "java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"  href="graduate.css">               
        
        <title> Delete  Page </title>
    </head>
    <body>
        
        <center>
        <h1> Delete Data Page </h1>
<h3> <%@include file="connectionDB.jsp"%> </h3>


        <form action= "deleteData.jsp">
         ID: <input type="text" name="ID" value="" size="10" /><br><br>
        
        <input type="submit"  value="delete" name ="submit" />
        <input type="reset"  value="clear" name="reset" />
        
        </form>

 <%
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
        %>
       
     <br><br>
      <a href="displayData.jsp"> Go to Display Data Page </a>
    <br><br><br>
    <a href="Admin.jsp"> Go to Admin Page </a>
    </center>
    
    <style>

    body{
    background-color: lightpink ;
    
    }
       </style>
        
    </body>
</html>
