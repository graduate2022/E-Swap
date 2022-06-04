<%@page import="product.Product"%>
<%

    int id = Integer.parseInt(request.getParameter("id"));
    Product product = Product.getProductById(id);
    ArrayList<Product> products = Product.getCurrentUserProducts((String)session.getAttribute("userName"));

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="navbar.jsp" %>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"  href="graduate.css">      
        <style>

            .details{
                font-size: 40px;
                margin: 10px;
            }

            .spd{
                background: dimgray;width: 100%;display: inline-block;text-align: center;
            }
            [disabled]{
                 background: darkgray!important;
            }
            .swap{
                display: none !important;
            }
            td{
      border: 0;

            }
            table{
                text-align: center;
            }
           img{
                    border-radius: 220px;

            }
        </style>
        <title>Swap Order Page</title>

        <script>

            let product;
            function updateTotal(amount) {

                let totalSwap = document.getElementById("total-swap");
                let pSwapAmountInput = document.getElementById("p-swap-amount-input");
                let totalSwapInput = document.getElementById("total-swap-input");

                let total = document.getElementById("total");
                let totalValue = <%=product.price%> * Number(amount);
                total.innerHTML = totalValue;
                let pSwapPrice = Number(document.getElementById("p-swap-price").innerHTML);
                let pSwapAmount = document.getElementById("p-swap-amount");
                let  maxSwapAmount = Math.floor(totalValue / pSwapPrice);
                pSwapAmount.innerHTML = maxSwapAmount;
                pSwapAmountInput.value = maxSwapAmount;
                totalSwap.innerHTML = totalValue - (pSwapPrice * maxSwapAmount);
                totalSwapInput.value = totalValue - (pSwapPrice * maxSwapAmount);

            }

            function getProduct(event) {
                event.preventDefault();
                let id = document.getElementById("spid").value;
                var xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function () {
                    // In local files, status is 0 upon success in Mozilla Firefox
                    if (xhr.readyState === XMLHttpRequest.DONE) {
                        var status = xhr.status;
                        if (status === 0 || (status >= 200 && status < 400)) {
                            // The request has been completed successfully
                            product = JSON.parse(xhr.responseText);
                            enableInputs();
                            setPSwapData(product);
                        } else {


                            alert("There is no Product with this id" + id);
                        }
                    }
                };
                xhr.open("POST", "/Graduate/getProductDetails?id=" + id);
                xhr.send();



            }

            function setPSwapData(product) {
                let pSwapPrice = document.getElementById("p-swap-price");
                let pSwapName = document.getElementById("p-swap-name");
                let pSwapAmount = document.getElementById("p-swap-amount");

                let pSwapPriceInput = document.getElementById("p-swap-price-input");
                let pSwapNameInput = document.getElementById("p-swap-name-input");
                let pSwapAmountInput = document.getElementById("p-swap-amount-input");
                let totalSwapInput = document.getElementById("total-swap-input");

                let totalSwap = document.getElementById("total-swap");
                let currentProductPrice = <%=product.price%>;
                let amount = document.getElementById("amount");
                let minAmount = 1;
                let maxSwapAmount = 1;
//                pSwapPrice.style.backgroundColor="cadetblue";
//                pSwapName.style.backgroundColor="cadetblue";
                pSwapPrice.innerHTML = product.price;
                pSwapPriceInput.value = product.price;
                pSwapName.innerHTML = product.name;
                pSwapNameInput.value = product.name;

                if (product.price > currentProductPrice) {
                    minAmount = Math.ceil(product.price / currentProductPrice);
                } else {

                    maxSwapAmount = Math.floor(currentProductPrice / product.price);
                }

                amount.value = minAmount;
                amount.min = minAmount;
                updateTotal(minAmount);
                pSwapAmount.innerHTML = maxSwapAmount;
                pSwapAmountInput.value = maxSwapAmount;
                totalSwap.value = (minAmount * <%=product.price%>) - (product.price * maxSwapAmount);
                totalSwapInput.value = (minAmount * <%=product.price%>) - (product.price * maxSwapAmount);
            }

            function enableInputs() {
                let a = document.getElementsByTagName("input");
                [...a].forEach(function (e) {

                    if (e.className !== "swap") {
                        e.removeAttribute("disabled");
                    }
                });
                document.getElementById("ord").removeAttribute("disabled");
            }
        </script>
    </head>
    <body>
    <center>
        <h1> Swap Order Page </h1>

        <br><!-- comment -->
        <br><!-- comment -->

        


        <form ame="orders table" action="/Graduate/addOrder" method="post" style="border:0 !important; margin-top:40px !important">
            <div class="f-container">
                <center> <h1 style="font-size:57px;">Swap Order Page</h1> </center>
                <hr> 

                <br><br>
                
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
                        <span>Payment Method : Swap</span>
                        <h4 style="word-break:  break-word; width: 582px; ">(any difference in the price will be paid in cash on delivery time)</h4> 
                    </td>
                </tr>
            </table>
        </div>
                    
                    <br><br>
                
                

                <h1 for="pSwapId"><b>Please Enter the <b><span>product id</span></b> that you want to swap with</b></h1>
                
                <select required onchange="getProduct(event)" name="pSwapId" id="spid"  width=" -webkit-fill-available">
             
                    <%
                        for(Product p:products){
                    
                    %>
                    <option value="<%=p.id%>"><%=p.id%>: <%=p.name%></option>
                    <%}%>
                </select>
                
                <!--<input id="spid" min="1" name="pSwapId" required id="swap-pid" type="number" width=" -webkit-fill-available">-->
                <!--<button onclick="getProduct(event)">Check Product</button>-->


                <div style="text-align: left">                                     
                    <h1>
                        Product Name: 
                        <span id="p-swap-name" class="spd">-</span>
                    </h1>
                    <input name="pSwapName" class="swap"  id="p-swap-name-input" type="text"/>
                </div> 

                <div style="text-align: left">                                     
                    <h1> 
                        Price: 
                        <span id="p-swap-price" class="spd">-</span> 
                    </h1>
                    <input name="pSwapPrice" class="swap"  id="p-swap-price-input" type="text"/>
                </div> 

                <div style="text-align: left">                                     
                    <h1>
                    Amount: 
                    <span id="p-swap-amount" class="spd">-</span>
                    </h1>
                    <input name="pSwapAmoun" class="swap"  id="p-swap-amount-input" type="text"/> 
                </div> 


                <label for="cname"><b>Customer Name</b></label>
                <input disabled type="text" placeholder="Enter Your Name" name="cname" value="" size="40" required />
                
                <label for="email"><b>Email</b></label>
                <input disabled type="email" placeholder="Enter Your Email" name="email" value="" size="40" required />

                <label for="address"><b>Address</b></label>
                <input disabled type="text" minlength="3" placeholder="Enter Address " name="address" value="" size="40" required />

                <label for="mobile"><b>Mobile Number</b></label>
               <input disabled required style="width:-webkit-fill-available;" type="tel" id="phone" name="mobile" placeholder="07(7/8/9)XXXXXXX" pattern="07[7-9]{1}[0-9]{7}" />
 
               <label for="amount"><b>Amount</b></label>
              <input disabled id ="amount" disabled style="width: -webkit-fill-available;"required min="1" type="number" name="amount" value="" size="40" step="1" onchange="updateTotal(this.value)"/>
               
              <input style="display:none;" type="text" name="pid" value="<%=id%>" />
                <input style="display:none;" type="text" name="price" value="<%=product.price%>" />
                <input style="display:none;" type="text" name="productUsername" value="<%=product.userName%>" />
                <input style="display:none;" type="text" name="type" value="cash" />

                
           
                

                <div style="font-size: 50px;color: lightcyan;">
                    <span><b>Total:</b></span>
                    <span id="total"><b><%=product.price%></b></span>
                </div>

                
                <div style="font-size: 50px;color: lightcyan;">
                    <span><b> Total After Swap:</b></span>
                      <span id="total-swap"></span>
                        <input class="swap" name="swapTotal" id="total-swap-input" type="text"/>
                </div> 

                
                
                <div class="clearfix">
                    <input type="reset" class="cancelbtn" value="Clear"/>
                    <button disabled id ="ord" type="submit" class="signupbtn">Order</button>
                </div>
            </div>
        </form>

    </center>

   


</body>
</html>