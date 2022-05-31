<%

    Boolean loggedIn = (Boolean) session.getAttribute("loggedin");
    Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");

    if (loggedIn != null && loggedIn) {
        if(isAdmin != null && isAdmin){
            response.sendRedirect(request.getContextPath() + "/Admin.jsp");
        }else{
            response.sendRedirect(request.getContextPath() + "/userDashboard.jsp");
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Login page </title>

        <link rel="stylesheet"  href="graduate.css">

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
                font-family: Arial, Helvetica, sans-serif;
                background: linear-gradient(45deg, #cf4e20, #5c408f);
                color:wheat !important;

            }
            * {
                box-sizing: border-box
            }

            /* Full-width input fields */
            input[type=text], input[type=password], input[type=tel] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
                color: black;
            }

            input[type=text]:focus, input[type=password]:focus, input[type=tel]:focus {
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
    </head>
    <body>
        <!--<center>-->

        <!-- HEADER =============================-->
<header class="item header margin-top-0">
<div class="wrapper">
	<nav role="navigation" class="navbar navbar-white navbar-embossed navbar-lg navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button data-target="#navbar-collapse-02" data-toggle="collapse" class="navbar-toggle" type="button">
			<i class="fa fa-bars"></i>
			<span class="sr-only">Toggle navigation</span>
			</button>
			<a href="index.jsp" class="navbar-brand brand"> eSwap </a>
		</div>
		<div id="navbar-collapse-02" class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="propClone"><a href="index.jsp">Home</a></li>
				<li class="propClone"><a href="/Graduate/pages/shop.jsp">Shop</a></li>
				<li class="propClone"><a href="/Graduate/AddUser.jsp">Sign Up</a></li>
				<li class="propClone"><a href="/Graduate/login.jsp">Log In</a></li>
				<li class="propClone"><a href="#">Contact</a></li>
			</ul>
		</div>
	</div>
	</nav>
</div>
</header>

        

        <form action="loginAction.jsp" method="post">
            <div class="f-container">
                <center> <h1 style="font-size:57px;">Log In</h1> </center>
                <hr>

                <label for="uname"><b>Username</b></label>
                <input  value="" type="text" placeholder="Enter Your Username" id="username" name="username" required>

                <label for="pswd"><b>Password</b></label>
                <input type="password" placeholder="Enter Your Password" id="passwd" name="passwd" required>


                <div class="clearfix">
                    <input type="reset" class="cancelbtn" value="Clear"/>
                    <button type="submit" class="signupbtn">Log In</button>
                </div>
            </div>
        </form>


        <div class="ob"> 

            <br><br>
            <!--<button> <a href="AddUser.jsp" > Create a new Account </a></button>-->

            <div style="width: 400px;text-align: center;margin: 0 auto;">
                <a href="AddUser.jsp" style="display: block;width: 100%;text-decoration: none;color: white;" > 
                    <button style="width:100%;">  Create a new Account </button> 
                </a>
            </div>       
            <br>

            <div style="width: 400px;text-align: center;margin: 0 auto;">
                <a href="index.jsp" style="display: block;width: 100%;text-decoration: none;color: white;" > 
                    <button style="width:100%;">  Back to Home </button> 
                </a>
            </div> 
            <br><br>


        </div>
        <!--</center>-->

    </body>
</html>