<%@page import="product.Product"%>
<%

    Product product = Product.getProductById(Integer.parseInt(request.getParameter("id")));

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
        <form name="orders table" action="#" method="post">
            <table border= "3">
                <tbody>
                    <tr>
                        <td>Customer Name</td>
                        <td> <input type="text" name="CUSTUMERID" value="" size="40" /> </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input required type="email" name="CUSTUMERNAME" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input required minlength="3"  type="text" name="PRODUCTID" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Mobile Number</td>
                        <td><input style="width: 100%;" minlength="10" required type="number" name="PRODUCTNAME" value="" size="40" /></td>
                    </tr>

                    <tr>
                        <td>Amount</td>
                        <td><input style="width: 100%;"required min="1" type="number" name="PHONENUMBER" value="" size="40" step="1" /></td>
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