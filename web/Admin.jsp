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
    background-color: antiquewhite ;
    
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
                
        <h1>Admin Page</h1> 
        
       <br><br>
        
       <div id="menu">
           <div><a href="insertData.jsp"> <span>Go to Insert Data Page </span></a></div> 
        <div><a href="displayData.jsp"><span> Go to Display Data Page</span> </a></div>
        <div><a href="deleteData.jsp"> <span> Go to Delete Data Page</span> </a></div>
        <div><a href="bookorders.jsp">  <span>Go to Order Book Page</span> </a></div>
        <div><a href="DisplayOrder.jsp">  <span>Go to Display Order Page</span> </a></div>       
        <div><a href="displayfeeds.jsp"> <span> Go to Display Feeds </span></a></div>
        <div><a href="addProduct.jsp"> <span>Add Product </span></a></div>            
        <div><a href="myProducts.jsp">  <span>My Products</span> </a></div>           

        <div><a href="logoutAction.jsp"> <span>Logout </span></a></div>      
       </div>
        </center>
                    
    
</body>
</html>