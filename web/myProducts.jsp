<%-- 
    Document   : myProducts
    Created on : May 20, 2022, 8:58:35 PM
    Author     : Alaa
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="product.Product"%>

<%
    String title ="My Products";
    Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");
    Boolean showAllProducts = Boolean.parseBoolean(request.getParameter("showAllProducts"));
    ArrayList<Product> products;
    if(isAdmin != null && isAdmin && showAllProducts){
    products = Product.getAllProducts();
    title="All Products";
    }else{
    products = Product.getCurrentUserProducts((String) session.getAttribute("username"));
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=title%></title>
        <style>
            table{
                margin:90px auto;
                background: beige;
            }
            table, th, td {
                border:1px solid black;
            }
        </style>
    <style>

    body{
    background-color: burlywood ;
    
    }
       </style>
        <script>
            function validate(element) {
                const isValid = element.checkValidity();
                if (!isValid) {
                    element.reportValidity();
                }
                return isValid;
            }
            function enableUpdateButton(event, id) {
                
               let productName = document.getElementById("name-" + id);
                let productPrice = document.getElementById("Price-" + id);
                let isValid = validate(productName) && validate(productPrice);
                
                
                if (isValid)
                    document.getElementById(id).removeAttribute("disabled");
                else
                    document.getElementById(id).setAttribute("disabled", true);

            }

            function deleteProduct(id) {
                var xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function () {
                    // In local files, status is 0 upon success in Mozilla Firefox
                    if (xhr.readyState === XMLHttpRequest.DONE) {
                        var status = xhr.status;
                        if (status === 0 || (status >= 200 && status < 400)) {
                            // The request has been completed successfully
                            alert("product with id " + id + " is deleted");
                            document.getElementById("row-" + id).remove();
                        } else {
                            alert("failed to delete product with id " + id);
                        }
                    }
                };
                xhr.open("POST", "/Graduate/deleteProductAction?id=" + id);
                xhr.send();



            }

            function updateProduct(id) {
                let productName = document.getElementById("name-" + id).value;
                let productPrice = document.getElementById("Price-" + id).value;
                let productImg = document.getElementById("img-" + id).files[0];
                const formData = new FormData();
                if (productImg) {
                    formData.append('img', productImg);
                }
                formData.append('Price', productPrice);
                formData.append('ProductName', productName);
                formData.append('id', id);

                var xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === XMLHttpRequest.DONE) {
                        var status = xhr.status;
                        if (status === 0 || (status >= 200 && status < 400)) {
                            debugger;
                            alert("product with id " + id + " is updated");
                            if(xhr.responseText && xhr.responseText.length)
                            document.getElementById("img-src-" + id).src = "/Graduate/assets/images/" + xhr.responseText;
                        } else {
                            alert("failed to update product with id " + id);
                        }
                    }
                };
                xhr.open("POST", "/Graduate/updateProductAction");
                xhr.send(formData);
            }
        </script>
    </head>
    <body>
    <center>        
        <h1> <%=title%> Page </h1>

        <table>
            <tr>
                <th>ID</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Image</th>
                <th>update</th>
                <th>delete</th>


            </tr>

            <%              
                for (Product product : products) {

            %>

            <tr id="row-<%=product.id%>">
                <td><%=product.id%></td>
                <td><input required maxlength ="40" minlength ="3" type="text" value="<%=product.name%>" id="name-<%=product.id%>" oninput="enableUpdateButton(event ,<%=product.id%>)"/></td>
                <td><input required min="1" type="number" id="Price-<%=product.id%>" value="<%=product.price%>" size="40" step="0.01" oninput="enableUpdateButton(event ,<%=product.id%>)" /></td>
                <td><input type="file" id="img-<%=product.id%>" accept="image/*" oninput="enableUpdateButton(<%=product.id%>)">
                    <hr>
                    <img id="img-src-<%=product.id%>" width="300" height="200" src="/Graduate/assets/images/<%=product.imgName%>"/>
                </td>

                <td>
                    <button id="<%=product.id%>" disabled="true" onclick="updateProduct(<%=product.id%>)">update</button>
                </td>
                <td>
                    <button onclick="deleteProduct(<%=product.id%>)">delete</button>
                </td>
            </tr>
            <%
                }
            %>

        </table>

    <button><a href="index.jsp"> Back To Home </a></button>
    </center>   
    </body>
</html>
