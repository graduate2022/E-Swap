
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"  href="graduate.css">        
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Order Invoice Page </title>
    </head>
    <body>
        
        
        <center>
        <h1><%= " Book Your Order " %></h1>
</center>
        <br><br>
        <form action="Order_Invoice.jsp" method="post">
            
            Your Name : <input type="text" value="" size="30" name="myname" required ="" placeholder = "Enter Your Full Name" >
            <br><br>
            Product ID : <input type="number" value="" size="100" name="myorderid" required ="" placeholder = "Enter Your Order ID" min="1">
            <br><br>
            Product Name : <input type="text" value="" size="28" name="myorder" required ="" placeholder = "Enter Your Order Name">
            <br><br>
            Quantity : <input type="number" value="" size="80" name="Quantity" required ="" placeholder = "Enter the Quantity "  min="1" >
            <br><br>
            Phone number : <input type="tel" id="phone" size="28" name="mynumber" required ="" placeholder="Enter Just Number please">
            
                       
            
            <br><br><br>
            <input type="submit" value="submit"> &nbsp;&nbsp;
            <input type="reset" value="reset">
        
 </form>
        
       <style>

body{
    background-color: gray ;
    
    }
        </style> 
        
        
        
</body>
</html>
