<%@page import="product.Product"%>
<%@page import="java.util.ArrayList"%>
<%
    String buttonName = "Login";
Boolean loggedIn= (Boolean) session.getAttribute("loggedin");

if(loggedIn!=null && loggedIn){
   buttonName = "Dashboard";
}

    ArrayList<Product> products = Product.getAllProducts();

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <style>


            h2{
                background: red !important;
                width: 50% !important;
                margin: 0px auto!important;
                margin-top:110px !important;
                border-radius: 100px !important;
                color: white !important;
                text-align: center !important;
            }




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
                font-family: Arial, Helvetica, sans-serif !important;
                background: linear-gradient(45deg, #cf4e20, #5c408f);
                color:wheat !important;

            }
            * {
                box-sizing: border-box
            }

            /* Full-width input fields */
            input[type=text], input[type=password], input[type=tel], input[type=email], input[type=number],input[type=file] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
                color: black;
            }

            input[type=text]:focus, input[type=password]:focus, input[type=tel]:focus, input[type=email]:focus, input[type=number]:focus, input[type=file]:focus {
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
                color: white !important;
                padding: 14px 20px !important;
                margin: 8px 0 !important;
                font-family: Arial !important;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }

            .ob button{
                width: 30%;
                display: block;
                text-decoration: none;
                color:white;
                margin: 0 auto;
            }

            .ob button a{
                text-decoration: none;
                color:white;
                width:100%;
                height:100%;
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
                margin: 31px;
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
                margin: 0px auto;
                margin-top: 170px;
                border: 10px solid;
                border-radius: 53px;
            }
        </style>

<link href="/Graduate/pages/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<link href="/Graduate/pages/css/style.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:200,300,400,500,600,700" rel="stylesheet">

<header class="item header margin-top-0">
<div class="wrapper">
	<nav role="navigation" class="navbar navbar-white navbar-embossed navbar-lg navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button data-target="#navbar-collapse-02" data-toggle="collapse" class="navbar-toggle" type="button">
			<i class="fa fa-bars"></i>
			<span class="sr-only">Toggle navigation</span>
			</button>
			<a href="index..jsp" class="navbar-brand brand"> eSwap </a>
		</div>
		<div id="navbar-collapse-02" class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="propClone"><a href="index..jsp">Home</a></li>
				<li class="propClone"><a href="/Graduate/pages/shop.jsp">Shop</a></li>
                                <%if(loggedIn==null || !loggedIn){%>
				<li class="propClone"><a href="/Graduate/AddUser.jsp">Sign Up</a></li>
                                <%}%>
				<li class="propClone"><a href="/Graduate/login.jsp"><%=buttonName%></a></li>
				<li class="propClone"><a href="#">Contact</a></li>
			</ul>
		</div>
	</div>
	</nav>
</div>
</header>

    
