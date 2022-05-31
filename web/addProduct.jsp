<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    Boolean loggedIn2 = (Boolean) session.getAttribute("loggedin");

    if (loggedIn2 == null || !loggedIn2) {
        request.getRequestDispatcher("/no-access.jsp").forward(request, response);
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
        <!--<link rel="stylesheet"  href="graduate.css">-->        
        <title>Add Product</title>

        <style>






            /* Response */
            #uname_response{
                width:50%;
                background: red;
                text-align: center;
                color: white;
                font-weight: bold;
                border-radius: 100px;
                margin: 0 auto;
            }
            .not-exists{
                border-radius: 100px;
                width:100%;
                background: green;
            }
            .exists{
                border-radius: 100px;
                background: red;

                width:100%;
            }


            body {
                font-family: Arial, Helvetica, sans-serif;
                background: linear-gradient(45deg, #cf4e20, #5c408f);
                color:wheat

            }
            * {
                box-sizing: border-box
            }

            /* Full-width input fields */
            input[type=text], input[type=number], input[type=file] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
            }

            input[type=text]:focus, input[type=number]:focus, input[type=file]:focus {
                background-color: #ddd;
                outline: none;
            }

            hr {
                border: 1px solid #f1f1f1;
                margin-bottom: 25px;
            }

            /* Set a style for all buttons */
            button,.cancelbtn {
                background-color: #04AA6D;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }

            button:hover, .cancelbtn:hover {
                opacity:1;
            }

            /* Extra styles for the cancel button */
            .cancelbtn {
                padding: 14px 20px;
                background-color: #f44336;
            }

            /* Float cancel and signup buttons and add an equal width */
            .cancelbtn, .signupbtn {
                float: left;
                width: 50%;
            }

            /* Add padding to container elements */
            .f-container {
                padding: 16px;
                margin: 33px;
            }

            /* Clear floats */
            .clearfix::after {
                content: "";
                clear: both;
                display: table;
            }

            /* Change styles for cancel button and signup button on extra small screens */
            @media screen and (max-width: 300px) {
                .cancelbtn, .signupbtn {
                    width: 100%;
                }
            }

            form{
                width:60%;
                margin: 0 auto;
                /*border: 10px solid;*/
                border-radius: 53px;
            }

            button[disabled]{
                background: gray;
                color: darkgray;
                cursor: unset;
            }
        </style>   

        <%@include file="navbar.jsp" %>

    </head>
    <body>
        <!--        <center>-->
        <!--        <h1> Add Product Page </h1>
               <br>-->


        <form name="orders table" action="addProduct" method="post" enctype="multipart/form-data">
            <div class="f-container">
                <center> <h1 style="font-size:57px;">Add Product</h1> </center>
                <hr>

                <label for="ProductName"><b>Product Name</b></label>
                <input required minlength="3" placeholder="Enter Product Name" maxlength="40"type="text" name="ProductName" value="" size="40" />

                <label for="Price"><b>Price</b></label>
                <input required type="number" min="0.50" name="Price" value="0.5" size="40" step="0.01" />

                <label for="img"><b>Image</b></label>
                <input  required type="file" id="img" name="img" accept="image/*"/>
                <div class="clearfix">
                    <input type="reset" class="cancelbtn" value="Cancel"/>
                    <button id="submit" type="submit" class="signupbtn">Add</button>
                </div>
            </div>
        </form>

        <br><br>
        <div style="width: 400px;text-align: center;margin: 0 auto;">
            <a href="index.jsp" style="display: block;width: 100%;text-decoration: none;color: white;" > 
                <button style="width:100%;">  Back to Home </button> 
            </a>
        </div> 
        <br><br>


    </body>
</html>