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
      border: 0;

            }
            table{
                text-align: center;
                background-color:cadetblue;
            }
            form{
                border:0;
            }
            img{
                    border-radius: 220px;

            }
        </style>
        <title>Insert Page</title>

        <script>

            function updateTotal(e) {

                let amount = e.srcElement.value;
                let total = document.getElementById("total");
                total.innerHTML =<%=product.price%> * Number(amount);
            }
        </script>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
    <center>

        <br><!-- comment -->
        <br><!-- comment -->

       


        <form name="orders table" action="/Graduate/addOrder" method="post" style="border:0 !important; margin-top:40px !important">
            <div class="f-container">
                <center> <h1 style="font-size:57px;">Book Order Page</h1> </center>
                <hr> <br>
                <br>
                 <div class="details">
            <table>
                <tr>
                    <td>
                        <img height="400" width="400" src="/Graduate/assets/images/<%=product.imgName%>"/>
                    </td>
                </tr>
                <tr>
                    <td>
                                        <br>

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

                                         <br> <br> <br>

                <label for="cname"><b>Customer Name</b></label>
                <input type="text" placeholder="Enter Your Name" name="cname" value="" size="40" required />
                
                <label for="email"><b>Email</b></label>
                <input type="email" placeholder="Enter Your Email" name="email" value="" size="40" required />

                <label for="address"><b>Address</b></label>
                <input type="text" minlength="3" placeholder="Enter Your Name" name="address" value="" size="40" required />

                <label for="mobile"><b>Mobile Number</b></label>
               <input required style="width:-webkit-fill-available;" type="tel" id="phone" name="mobile" placeholder="07(7/8/9)XXXXXXX" pattern="07[7-9]{1}[0-9]{7}" />
 
               <label for="amount"><b>Amount</b></label>
              <input style="width: -webkit-fill-available;"required min="1" type="number" name="amount" value="" size="40" step="1" onchange="updateTotal(event)"/>
               
              <input style="display:none;" type="text" name="pid" value="<%=id%>" />
                <input style="display:none;" type="text" name="price" value="<%=product.price%>" />
                <input style="display:none;" type="text" name="productUsername" value="<%=product.userName%>" />
                <input style="display:none;" type="text" name="type" value="cash" />

                
                <div style="font-size: 50px;color: lightcyan;">
                    <span><b>Total:</b></span>
                    <span id="total"><b><%=product.price%></b></span>
                </div>
                
                <div class="clearfix">
                    <input type="reset" class="cancelbtn" value="Clear"/>
                    <button type="submit" class="signupbtn">Order</button>
                </div>
            </div>
        </form>




       
        <br>

        <br>
    </center>

    <style>

        body{
            background-color: burlywood ;

        }
    </style>


</body>
</html>