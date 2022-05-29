<%@page import="product.Product"%>
<%

    int id = Integer.parseInt(request.getParameter("id"));
    Product product = Product.getProductById(id);
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"  href="graduate.css">      
        <style>
            .details{
    font-size: 40px;
    margin: 10px;
}

td{
      border: 7px solid antiquewhite;

}
table{
    text-align: center;
    background-color:cadetblue; 
}
        </style>
        <title>Insert Page</title>
        
        <script>
            
            function updateTotal(e){
                
                let amount= e.srcElement.value;
               let total = document.getElementById("total");
               total.innerHTML=<%=product.price%>*Number(amount);
            }
        </script>
    </head>
    <body>
    <center>
        <h1> Book Order Page </h1>

        <br><!-- comment -->
                <br><!-- comment -->

                    <div class="details">

                        <table>
                             <tr>
                                <td>
            <img height="400" width="400" src="/Graduate/assets/images/<%=product.imgName%>"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Product Name : <%=product.name%></span> 
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <span>Price : <%=product.price%> JD</span> 
                                </td>
                             </tr>
                              <tr>
                                <td>
                                    <span>Payment Method : cash on delivery</span> 
                                </td>
                            </tr>
                        </table>
        </div>
        <form name="orders table" action="/Graduate/addOrder" method="post">
            <table border= "3">
                <tbody>
                    <tr>
                        <td>Customer Name</td>
                        <td> <input type="text" name="cname" value="" size="40" /> </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input required type="email" name="email" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input required minlength="3"  type="text" name="address" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Mobile Number</td>
                        <td>  <input required style="width:-webkit-fill-available;" type="tel" id="phone" name="mobile" placeholder="07(7/8/9)XXXXXXX" pattern="07[7-9]{1}[0-9]{7}" /></td>
                    </tr>

                    <tr>
                        <td>Amount</td>
                        <td><input style="width: -webkit-fill-available;"required min="1" type="number" name="amount" value="" size="40" step="1" onchange="updateTotal(event)"/></td>
                    <input style="display:none;" type="text" name="pid" value="<%=id%>" />
                    <input style="display:none;" type="text" name="price" value="<%=product.price%>" />
                    <input style="display:none;" type="text" name="productUsername" value="<%=product.userName%>" />
                    <input style="display:none;" type="text" name="type" value="cash" />
      
            </tr>
                    
                    <tr>
                        <td>Total</td>
                        <td id="total"><%=product.price%></td>
                    </tr>
                </tbody>
            </table>
                    <br>
        <br>

 <input type="submit" value="Submit" />
            &nbsp;&nbsp;
            <input type="reset" value="Reset" />
        </form>
        <br>
       
        <br>
        <button><a href="index.jsp"> Back To Home </a></button>
    </center>

    <style>

        body{
            background-color: burlywood ;

        }
    </style>


</body>
</html>