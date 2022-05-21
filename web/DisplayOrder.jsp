<%@page import= "javax.swing.*"%>
<%@page import= "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Order Page</title>
        <link rel="stylesheet" href="display1.css">
    </head>
    <body>
         
    <center>
        <h1> Display Order </h1>
        <h4> <%@include file="connectionDB.jsp"%> </h4>
        <h3>  Orders Table </h3>
        <%
        PreparedStatement pst= null;
        ResultSet emps=null;
        String q;
        q= "select * from orders";
      try{
          pst=conn.prepareStatement(q);
      emps = pst.executeQuery();     
     
      }
      catch(Exception e){
         out.println("Error in retrieving data" + e );
      } %>
        
        <table border="8">
            <thead>
                <tr>
                 
                    <th>CUSTUMERID</th>
                    <th>CUSTUMERNAME</th>
                    <th>PRODUCTID</th>
                    <th>PRODUCTMAME</th>
                    <th>PHONENUMBER</th>
                    <th>ADDRESS</th>
               
                </tr>
            </thead>
            <tbody>
                <% while (emps.next( )) { %> 
        <tr>
                   
                    <td><%=emps.getString(1)%></td>
                    <td><%=emps.getString(2)%></td>
                    <td><%=emps.getString(3)%></td>
                    <td><%=emps.getString(4)%></td>
                    <td><%=emps.getString(5)%></td>
                    <td><%=emps.getString(6)%></td>  
                    
                </tr>  
            
                <% }%>
                
                              
            </tbody>
        </table>               


        
        <br><br><br> 
        <a href="Admin.jsp"> Back </a> </div>
       </center>
    
    
        <style>
            body{
    background-color: burlywood ;
    
    }
                
        </style>
                
    </body>
</html>