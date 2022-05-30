<%-- 
    Document   : myProducts
    Created on : May 20, 2022, 8:58:35 PM
    Author     : Alaa
--%>
<%@page import="order.Order"%>
<%@page import="java.util.ArrayList"%>

<%

    String type = request.getParameter("types");
    if(type==null){
        type="all";
    }
    Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");
    ArrayList<Order> orders;
    if(isAdmin != null && isAdmin){
    orders = Order.getAllOrders(type);
    }else{
        orders = Order.getOrdersForCurrentUser((String) session.getAttribute("username"), type);
    }
    

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Products</title>
        <style>
            a{
                width: 400px;
    text-decoration: none;
    color: inherit;
            }
            
            button{
                width:90px;
                height: 35px;
                font-size: 12px;
                font-weight: bold;
            }
            table{
                margin-top: 50px;
                background: beige;
                text-align: center;
                border: none;
            }
            tr,td{
                background: beige;
                border: 1px solid antiquewhite;
                font-size: 14px;
                font-weight: bold;
            }
            th{
                background: burlywood;
                border: 1px solid antiquewhite;
                font-size: 15px;
            }
             tr:hover:not(.head){
                background-color: darkcyan;
                border:none;
                /*transform: scale(1.02);*/
                color:white;
            }
            tr:hover td{
                background-color: darkcyan;
                border:none;
            }
            
            tr:hover button {
                background: lightcoral;
                color: white;
                border: none;
            }
            
            h1{
                text-transform: capitalize; 
            }
           
            
        </style>
    <style>

    body{
    background-color: antiquewhite ;
    
    }
       </style>
        <script>
           
            function deleteProduct(id) {
                var xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function () {
                    // In local files, status is 0 upon success in Mozilla Firefox
                    if (xhr.readyState === XMLHttpRequest.DONE) {
                        var status = xhr.status;
                        if (status === 0 || (status >= 200 && status < 400)) {
                            // The request has been completed successfully
                            alert("order with id " + id + " is deleted");
                            document.getElementById("row-" + id).remove();
                        } else {
                            alert("failed to delete orders with id " + id);
                        }
                    }
                };
                xhr.open("POST", "/Graduate/deleteOrder?id=" + id);
                xhr.send();



            }
            
            function myFunction() {
                var type = document.getElementById("types").value;
            }
            
        </script>
    </head>
    <body>
    <center>        
        <h1> List Of <%=type%> Orders</h1>

        <div style="margin-top:100px">
            <form method="post" action="DisplayOrder.jsp">
            <span><b>Order Type</b></span>
            <select id="types" name="types">
                <option id="all" value="all">All</option>
                <option id="cash" value="cash">Cash</option>
                <option id="swap" value="swap">Swap</option>
            </select>
            <input type="submit" value="Show"/>
            </form>
        </div>
        <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
            <tr class="head">
                <th>Order ID</th>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Customer Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Mobile Number</th>
                <th>Price</th>
                <th>Amount</th>
                <th>Total</th>
                <th>Swap Order</th>
                <th>Swap Product Id</th>
                <th>Swap Product Name</th>
                <th>Swap Product Price</th>
                <th>Swap Product Amount</th>
                <th>Swap Product Total</th>
                <th>Delete</th>

            </tr>

            <%              
                for (Order order : orders) {
                  String isSwap = "No";
                  String pSwapName = "X";
                  String pSwapPrice = "X";
                  String pSwapAmount = "X";
                  String swapTotal ="X";
                  String pSwapId = "X";

                  if(order.isSwap){
                   isSwap = "Yes";
                   pSwapName = order.pSwapName;
                   pSwapPrice = ""+ order.pSwapPrice;
                   pSwapAmount = ""+ order.pSwapAmount;
                   swapTotal = ""+ order.swapTotal;
                   pSwapId = ""+ order.pSwapId;
                  }else{
                  
                  }



            %>

            <tr id="row-<%=order.id%>">
                <td><%=order.id%></td>
                <td><%=order.productId%></td>
                <td><%=order.productUsername%></td>
                <td><%=order.customerName%></td>
                <td><%=order.email%></td>
                <td><%=order.address%></td>
                <td><%=order.mobileNumber%></td>
                <td><%=order.price%></td>
                <td><%=order.amount%></td>
                <td><%=(order.total)%></td>
                <td><%=isSwap%></td>
                <td><%=pSwapId%></td>
                <td><%=pSwapName%></td>
                <td><%=pSwapPrice%></td>
                <td><%=pSwapAmount%></td>
                <td><%=swapTotal%></td>
                <td>
                    <button onclick="deleteProduct(<%=order.id%>)">Delete</button>
                </td>
            </tr>
            <%
                }
            %>

        </table>

    <button style="width:170px;margin-top: 20px" ><a href="index.jsp"> Back To Home </a></button>
    
    <script>
        
        document.getElementById("<%=type%>").selected=true;
    </script>
    </center>   
    </body>
</html>
