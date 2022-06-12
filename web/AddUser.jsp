<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    String title = "Sign Up";

    Boolean addUser = Boolean.parseBoolean(request.getParameter("add"));

    if (addUser) {
        title = "Add User";
    }

%>
<!DOCTYPE html>
<html>
    
     <link href="/Graduate/pages/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<link href="/Graduate/pages/css/style.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:200,300,400,500,600,700" rel="stylesheet">

  
    
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
            font-family: Arial, Helvetica, sans-serif !important;
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
            background-color: #ddd ;
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
            border: 0;
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
            margin: 0 auto;
            margin-top: 170px;
            border: 10px solid;
            border-radius: 53px;
        }
        
        button[disabled]{
            background: gray;
    color: darkgray;
    cursor: unset;
        }
    </style>

 
    <body>

        
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
			</ul>
		</div>
	</div>
	</nav>
</div>
</header>
        

        
        <form action="addUser" method="post">
            <div class="f-container">
                <center> <h1 style="font-size:57px;"><%=title%></h1> </center>
                <p>Please fill in this form to create an account.</p>
                <hr>

                <label for="fname"><b>First Name</b></label>
                <input type="text" placeholder="Enter First Name" name="fname" required>

                <label for="lname"><b>Last Name</b></label>
                <input type="text" placeholder="Enter Last Name" name="lname" required>

                <label for="uname"><b>Username</b></label>
                <div id="uname_response" class="response" ></div> 
                <input  value="" type="text" placeholder="Enter Username" id="uname" name="uname" required>

                <label for="pswd"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="pswd" required>

                <label for="address"><b>Address</b></label>
                <input type="text" placeholder="Enter Address" name="address" required>

                <label for="mobile"><b>Mobile Number</b></label>
                <input type="tel" placeholder="Enter Mobile Number" name="mobile" required placeholder="07(7/8/9)XXXXXXX" pattern="07[7-9]{1}[0-9]{7}">

                <div class="clearfix">
                    <input type="reset" class="cancelbtn" value="Cancel"/>
                    <button id="submit" type="submit" class="signupbtn"><%=title%></button>
                </div>
            </div>
        </form>

        <br><br>
        <div style="width: 400px;text-align: center;margin: 0 auto;">
            <a href="login.jsp" style="display: block;width: 100%;text-decoration: none;color: white;" > 
                <button style="width:100%;">  Back login </button> 
            <a href="index.jsp" style="display: block;width: 100%;text-decoration: none;color: white;" > 
                <button style="width:100%;">  Back to Home </button> 

            </a>
        </div> 
        <br><br>


        <script>

            document.getElementById("uname").addEventListener("change", function () {
                document.getElementById("submit").disabled = true;
                var uname = document.getElementById("uname").value.trim();
                let resDiv = document.getElementById("uname_response");

                if (uname != '') {
                    resDiv.style.display = "block";
                    var xhr = new XMLHttpRequest();
                    xhr.onreadystatechange = function () {
                        // In local files, status is 0 upon success in Mozilla Firefox
                        if (xhr.readyState === XMLHttpRequest.DONE) {
                            var status = xhr.status;
                            if (status === 0 || (status >= 200 && status < 400)) {
                                // The request has been completed successfully
                                let found = JSON.parse(xhr.responseText).found;
                                if (!found) {
                                    document.getElementById("submit").disabled = false;

                                    resDiv.innerHTML = "<p class='not-exists'>Available.</p>";
                                } else {
                                    resDiv.innerHTML = "<p class='exists'> Username Already in use.</p>";
                                }
                            } else {
                                resDiv.innerHTML = "<p class='sexists'>Username Already in use.</p>";
                            }
                        }
                    };
                    xhr.open("POST", "/Graduate/checkUsername?uname=" + uname);
                    xhr.send();
                } else {
                    resDiv.style.display = "none";
                }
            });

        </script>

    </body>
</html>
