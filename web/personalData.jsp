<%-- 
    Document   : personalData
    Created on : May 30, 2022, 9:33:24 PM
    Author     : Alaa
--%>
<%@page import="user.User"%>
<%

    Boolean loggedIn = (Boolean) session.getAttribute("loggedin");

    if (loggedIn == null || !loggedIn) {
        request.getRequestDispatcher("/no-access.jsp").forward(request, response);
    }
    
    User user = User.getUserByUname((String) session.getAttribute("username"));

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>






        /* Response */
        #uname_response{
            background: red;
            text-align: center;
            color: white;
            font-weight: bold;
            border-radius: 100px;
            margin: 0 auto;
            border-radius: 100px;
            background: orange;
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
        input[type=text], input[type=password], input[type=tel] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
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
        .container {
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
            border: 10px solid;
            border-radius: 53px;
        }
        
        button[disabled]{
            background: gray;
    color: darkgray;
    cursor: unset;
        }
        
        input[disabled]{
            background: darkgray;
        }
        
        #show{
            width: 15%;
            border-radius: 60px;
            margin-left: 15px;
            padding: 3px;
        }
    </style>

    <script>
        
        function showHidePass(e){
            e.preventDefault();
            let showBtn = document.getElementById("show");
            let pass =  document.getElementById("pswd");

            if(showBtn.innerHTML ==="Show"){
               pass.type="text";
               showBtn.innerHTML="Hide";
               showBtn.style.backgroundColor="red";
            }else{
               pass.type="password";
               showBtn.innerHTML="Show";  
               showBtn.style.backgroundColor="#04AA6D";
            }
        }
        
        let user = {};
        user.fname = "<%=user.fname %>";
        user.lname = "<%= user.lname%>";
        user.pswd = "<%= user.pswd%>";
        user.address = "<%=user.address%>";
        user.mobile = "<%=user.mobile%>";
        
        function enableDisableButton(e){
            
            let enable = false;
            document.querySelectorAll("input:not([disabled])").forEach(function(el){
                if(enable){
                    return;
                }
                let name = el.name;
                if(user[name] && user[name]!=el.value){
                  enable=true;        
                }
            });
            
            document.getElementById("submit").disabled = !enable;
            
        }
        
    </script>
    <body>

        <form action="updateData" method="post">
            <div class="container">
                <center> <h1 style="font-size:57px;">Personal Data</h1> </center>
                <hr>
                <label for="fname"><b>First Name</b></label>
                <input oninput="enableDisableButton(event)" type="text" value="<%=user.fname%>" placeholder="Enter First Name" name="fname" required>

                <label for="lname"><b>Last Name</b></label>
                <input oninput="enableDisableButton(event)" type="text" value="<%=user.lname%>" placeholder="Enter Last Name" name="lname" required>

                <label for="uname"><b>Username</b></label>
                <div id="uname_response">Username is not updateable</div> 
                <input  value="<%=user.uname%>" type="text" disabled="true">

                <label for="pswd"><b>Password</b></label>
                <button id="show" onclick="showHidePass(event)">Show</button>
                <input oninput="enableDisableButton(event)" type="password" value="<%=user.pswd%>" placeholder="Enter Password" id="pswd" name="pswd" required>

                <label for="address"><b>Address</b></label>
                <input oninput="enableDisableButton(event)" type="text" value="<%=user.address%>" placeholder="Enter Address" name="address" required>

                <label for="mobile"><b>Mobile Number</b></label>
                <input oninput="enableDisableButton(event)" type="tel" value="<%=user.mobile%>" placeholder="Enter Mobile Number" name="mobile" required placeholder="07(7/8/9)XXXXXXX" pattern="07[7-9]{1}[0-9]{7}">

                <div class="clearfix">
                    <input type="reset" class="cancelbtn" value="Clear"/>
                    <button id="submit" disabled="" type="submit" class="signupbtn">Update Data</button>
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
