

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Orders list </title>
    </head>
    <body>
        
        <center>
        <h1> Your Order List </h1>
        </center>
        <br>
        <% 
            out.println("Your Name is : " + request.getParameter("myname"));
        %>
        <br><br>
        <% 
            out.println("Your Order ID: " + request.getParameter("myorder"));
        %>
        <br><br>
        <% 
            out.println("Your Order Name: " + request.getParameter("myorderid"));
        %>       
        <br><br>
        <% 
            out.println("Quantity : " + request.getParameter("Quantity"));
        %>
        <br><br>
        
        <% 
            out.println("Your phone number : " + request.getParameter("mynumber"));
        %>
        
        <br><br><br>
        <% out.println("Date & Time is : " +java.util.Calendar.getInstance().getTime());%> 
        
        <br><br><br><br>
        <button><a href="OrderIndex.jsp">  Book Another Order </a></button>
        
        <style>

body{
    background-color: gray ;
    
    }
        </style>
        
    </body>
</html>
