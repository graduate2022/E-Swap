<%@page import = "java.sql.*" %>
<%@page import = "javax.swing.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

Boolean loggedIn2= (Boolean) session.getAttribute("loggedin");
Boolean isAdmin2 = (Boolean) session.getAttribute("isAdmin");
if(loggedIn2==null || !loggedIn2 || isAdmin2 == null || !isAdmin2){
   request.getRequestDispatcher("/no-access.jsp").forward(request, response);
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Index Page </title>
        <link rel="stylesheet" href="admin1.css">
        <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">-->
             <%@include file="navbar.jsp" %>

        <style>

body{
    background-color: antiquewhite ;
    color: black!important;
    font-family: Arial!important;
    }
    
    h1{
        color: green;
    }
     
    #menu > div{
        width: 500px;
        height: 70px;
        background-color: wheat;
          border: 5px solid antiquewhite;

    }
    #menu > div:hover{
        width: 700px;
        height: 90px;

        background-color: green;
         color: white;
    }
    
    a{
         text-decoration: none;
      color: inherit;
    display: block;
    height: 100%;
        width:100%;
        user-select: none !important
    }
       
    span{
        position: relative;   
        top: 25%;
    }
    a:hover{
         text-decoration: none;
      color: white;
    }
</style>
    </head>
    <body> 
        <br>
            <center>
                
        <h1>Admin Dashboard</h1> 
               
       <br><br>
        
       <div id="menu">
           <div><a href="/Graduate"> <span>Home Page</span></a></div> 
           <div><a href="AddAdmin.jsp"> <span>Add Admin</span></a></div> 
           <div><a href="AddUser.jsp?add=true"> <span>Add User</span></a></div> 
           <div><a href="displayData.jsp"><span> Display Users Page</span> </a></div>
           <div><a href="DisplayOrder.jsp">  <span>List of Orders</span> </a></div>       
           <div><a href="displayfeeds.jsp"> <span> Display Feeds </span></a></div>
           <div><a href="addProduct.jsp"> <span>Add Product </span></a></div>            
           <div><a href="myProducts.jsp">  <span>My Products</span> </a></div>
           <div><a href="myProducts.jsp?showAllProducts=true">  <span>Display All Products</span> </a></div> 
           <div><a href="personalData.jsp"> <span>Personal Data </span></a></div>      
           <div><a href="logoutAction.jsp"> <span>Logout </span></a></div> 
                  <br><br>
       </div>
        </center>
                    
    
</body>
</html>