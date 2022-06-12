<%@page import= "javax.swing.*"%>
<%@page import= "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Page</title>
        <link rel="stylesheet" href="display1.css">
    </head>
    <body>
         
    <center>
        <h1> Display Users </h1>
        <h4> <%@include file="connectionDB.jsp"%> </h4>
        <h3>  Users Table </h3>
        <%
        PreparedStatement pst= null;
        ResultSet emps=null;
        String q;
        q= "select * from users";
      try{
          pst=conn.prepareStatement(q);
      emps = pst.executeQuery();     
     
      }
      catch(Exception e){
         out.println("Error in retrieving data" + e );
      } %>
      
        <table id= "USERS"  border="8">
            <thead>
                <tr>
                    <td>Delete</td>
                    <td>ID</td>
                    <td>USERNAME</td>
                    <td>PASSWORD</td>
                    <td>FNAME</td>
                    <td>LNAME</td>
                    <td>ADDRESS</td>
                    <td>MOBILE</td>
                    <td>ADMIN</td>

                    </tr>
            </thead>
            <tbody>
                <% while (emps.next( )) { %>
                <tr>
                    <td><input type="button" id ="deleteDep" value="Delete" onclick = "deleteRow(this)"> </td>
                    <td><%=emps.getString(1)%></td>
                    <td><%=emps.getString(2)%></td>
                    <td><%=emps.getString(3)%></td>
                    <td><%=emps.getString(4)%></td>
                    <td><%=emps.getString(5)%></td>
                    <td><%=emps.getString(6)%></td>  
                    <td><%=emps.getString(7)%></td>
                    <td><%=emps.getString(8)%></td>
                </tr>  
                   <% }%>
                
                              
            </tbody>
        </table>               
                
                
        <br><br><br> 
        <a href="Admin.jsp"> Back </a>
       </center>
    
    <script>
               
      function deleteRow(row){
      var d = row.parentNode.parentNode.rowIndex;
      document.getElementById('USERS').deleteRow(d);
   }   
               
   </script>
    
        <style>
             body {
                font-family: Arial, Helvetica, sans-serif;
                background: linear-gradient(45deg, #cf4e20, #5c408f);
                color:wheat !important;

            }
                
        </style>
        
        
    </body>
</html>
