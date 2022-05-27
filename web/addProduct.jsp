<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

Boolean loggedIn= (Boolean) session.getAttribute("loggedin");

if(loggedIn==null || !loggedIn){
   request.getRequestDispatcher("/no-access.jsp").forward(request, response);
}
%>
<!DOCTYPE html>
<html lang="en">
    <head>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"  href="graduate.css">        
    <title>Add Product</title>
    
        <style>

    body{
    background-color: burlywood ;
    
    }
        </style><!-- comment -->
    </head>
    <body>
        <center>
        <h1> Add Product Page </h1>
       <br>

       <form name="orders table" action="addProduct" method="post" enctype="multipart/form-data">
      <table border= "3">
          <tbody>
              <tr>
                  <td>Product Name</td>
                  <td> <input required minlength="3" maxlength="40"type="text" name="ProductName" value="" size="40" /> </td>
              </tr>
              <tr>
                  <td>Price</td>
                  <td><input required type="number" min="0.50" name="Price" value="" size="40" step="0.01" /></td>
              </tr>      
               <tr>
                  <td>Image</td>
                  <td><input  required type="file" id="img" name="img" accept="image/*"></td>
              </tr>  
          </tbody>
      </table>
       <br>
          <input type="submit" value="Submit" />
          &nbsp;&nbsp;
          <input type="reset" value="Reset" />
       </form>
    <br>
    <button><a href="index.jsp"> Back To Home </a></button>
       </center>
       

       

</body>
</html>