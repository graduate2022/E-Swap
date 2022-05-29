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

.swap{
    display: none
}
td{
      border: 7px solid antiquewhite;

}
table{
    text-align: center;
    background-color:cadetblue; 
}
        </style>
        <title>Swap Order Page</title>
        
        <script>
            
            let product;
            function updateTotal(amount){
                
                let totalSwap = document.getElementById("total-swap");
                let pSwapAmountInput = document.getElementById("p-swap-amount-input");
                let totalSwapInput = document.getElementById("total-swap-input");

               let total = document.getElementById("total");
               let totalValue = <%=product.price%>*Number(amount);
               total.innerHTML= totalValue;
               let pSwapPrice = Number(document.getElementById("p-swap-price").innerHTML);
               let pSwapAmount = document.getElementById("p-swap-amount");
               let  maxSwapAmount = Math.floor(totalValue/pSwapPrice);
               pSwapAmount.innerHTML = maxSwapAmount;
               pSwapAmountInput.value = maxSwapAmount;
               totalSwap.innerHTML = totalValue - (pSwapPrice*maxSwapAmount);
               totalSwapInput.value = totalValue - (pSwapPrice*maxSwapAmount);
         
            }
            
            function getProduct(event){
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
            
            function setPSwapData(product){ 
                let pSwapPrice = document.getElementById("p-swap-price");
                let pSwapName = document.getElementById("p-swap-name");
                let pSwapAmount = document.getElementById("p-swap-amount");
                
                let pSwapPriceInput = document.getElementById("p-swap-price-input");
                let pSwapNameInput = document.getElementById("p-swap-name-input");
                let pSwapAmountInput = document.getElementById("p-swap-amount-input");
                let totalSwapInput = document.getElementById("total-swap-input");

                let totalSwap = document.getElementById("total-swap");
                let currentProductPrice= <%=product.price%>;
                let amount = document.getElementById("amount");
                let minAmount = 1;
                let maxSwapAmount = 1;
//                pSwapPrice.style.backgroundColor="cadetblue";
//                pSwapName.style.backgroundColor="cadetblue";
                pSwapPrice.innerHTML= product.price;
                pSwapPriceInput.value=product.price;
                pSwapName.innerHTML= product.name;
                pSwapNameInput.value = product.name;

                if(product.price > currentProductPrice){
                    minAmount = Math.ceil(product.price / currentProductPrice);
                } else{
                    
                    maxSwapAmount = Math.floor(currentProductPrice/product.price);
                }
                
                amount.value=minAmount;
                amount.min= minAmount;
                updateTotal(minAmount);
                pSwapAmount.innerHTML = maxSwapAmount;
                pSwapAmountInput.value = maxSwapAmount;
                totalSwap.value = (minAmount * <%=product.price%>) - (product.price*maxSwapAmount);
                totalSwapInput.value = (minAmount * <%=product.price%>) - (product.price*maxSwapAmount);
            }
            
            function enableInputs(){
             let a= document.getElementsByTagName("input");
            [...a].forEach(function(e){

            if(e.className !== "swap"){
                e.removeAttribute("disabled");
            }
            });
            }
        </script>
    </head>
    <body>
    <center>
        <h1> Swap Order Page </h1>

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
                                    <span>Payment Method : Swap</span>
                                    <p style="word-break:  break-word; width: 582px; ">(any difference in the price will be paid in cash on delivery time)</p> 
                                </td>
                            </tr>
                        </table>
        </div>
                               
        <form name="orders table" action="/Graduate/addOrder" method="post">
            <table border= "3">
                <tbody>
                <div id="swap-product">
                    <tr>
                        <td style="word-break: break-word; width: 150px;s"> Please Enter the <b><span>product id</span></b> that you want to swap with</td>
                        <td>
                            <input id="spid" min="1" name="pSwapId" required id="swap-pid" type="number" width=" -webkit-fill-available">
                            <button onclick="getProduct(event)">Check Product</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Product Name</td>
                        <td style="background: gray;"> <span id="p-swap-name"></span> <input name="pSwapName" class="swap"  id="p-swap-name-input" type="text"/> </td>
                    </tr>          
                    <tr>
                        <td>Product Price</td>
                        <td style="background: gray;"> <span id="p-swap-price"></span> <input name="pSwapPrice" class="swap"  id="p-swap-price-input" type="text"/></td>
                    </tr>
                     <tr>
                        <td>Amount</td>
                        <td style="background: gray;"> <span id="p-swap-amount"></span><input name="pSwapAmoun" class="swap"  id="p-swap-amount-input" type="text"/> </td>
                    </tr>
                    <br>
                </div>
                    <tr>
                        <td>Customer Name</td>
                        <td> <input disabled type="text" name="cname" value="" size="40" /> </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input disabled required type="email" name="email" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input disabled required minlength="3"  type="text" name="address" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Mobile Number</td>
                        <td>  <input disabled required style="width:-webkit-fill-available;" type="tel" id="phone" name="mobile" placeholder="07(7/8/9)XXXXXXX" pattern="07[7-9]{1}[0-9]{7}" /></td>
                    </tr>

                    <tr>
                        <td>Amount</td>
                        <td><input id ="amount" disabled style="width: -webkit-fill-available;"required min="1" type="number" name="amount" value="" size="40" step="1" onchange="updateTotal(this.value)"/></td>
                    <input style="display:none;" type="text" name="pid" value="<%=id%>" />
                    <input style="display:none;" type="text" name="price" value="<%=product.price%>" />
                    <input style="display:none;" type="text" name="productUsername" value="<%=product.userName%>" />
                    <input style="display:none;" type="" name="isSwap" value="true" />
      
            </tr>
                    
                    <tr>
                        <td>Total</td>
                        <td id="total"><%=product.price%></td>
                    </tr>
                    
                    <tr>
                        <td>Total After Swap</td>
                        <td> <span id="total-swap"></span><input class="swap" name="swapTotal" id="total-swap-input" type="text"/></td>
                    </tr>
                </tbody>
            </table>
                    <br>
        <br>

 <input disabled type="submit" value="Submit" />
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