<%@page import = "java.sql.*" %>
<%@page import = "javax.swing.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

Boolean loggedIn= (Boolean) session.getAttribute("loggedin");

if(loggedIn==null || !loggedIn){
   request.getRequestDispatcher("/no-access.jsp").forward(request, response);
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Index Page </title>
        <link rel="stylesheet" href="admin1.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <style>

body{
    background-color: lightpink ;
    
    }
     
        
</style>
    </head>
    <body> 
        <br>
            <center>
                
        <h1>Admin Page</h1> 
        
        <%
//        Connection conn= null;
//        try{
//        Class.forName("org.apache.derby.jdbc.ClientDriver");
//        conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee","alaa","000");
//        JOptionPane.showMessageDialog(null,"Connection Successful to DB");
//        }catch (Exception e){
//        JOptionPane.showMessageDialog(null,"NOT Connection to DB");
//        } %>
        


        <br><br>
        
        <button><a href="insertData.jsp">  Go to Insert Data Page </a></button> <br><br>
        <button><a href="displayData.jsp"> Go to Display Data Page </a></button><br><br>
        <button><a href="deleteData.jsp">  Go to Delete Data Page </a></button><br><br>
        <button><a href="Order_Invoice.jsp">  Go to Order Invoice Page </a></button><br><br>
        <button><a href="OrderIndex.jsp">  Go to Book Order Page </a></button><br><br>

        <button><a href="insertproduct.jsp">  Go to Insert Order Page </a></button><br><br>
        
        
        <button><a href="logoutAction.jsp"> Logout </a></button>       
        </center>
                    
    
</body>
</html>