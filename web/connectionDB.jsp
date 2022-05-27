<%@page import= "java.sql.*"%>
<%@page import= "javax.swing.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> connection page </title>
    </head>
    <body>
       <%
        Connection conn= null;
        try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee","alaa","000");
        }catch (Exception e){
        out.println("error connection " + e);
        } %>
        
    </body>
</html>