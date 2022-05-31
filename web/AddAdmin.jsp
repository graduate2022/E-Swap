<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

Boolean loggedIn2= (Boolean) session.getAttribute("loggedin");
Boolean isAdmin2 = (Boolean) session.getAttribute("isAdmin");
if(loggedIn2==null || !loggedIn2 || isAdmin2 == null || !isAdmin2){
   request.getRequestDispatcher("/no-access.jsp").forward(request, response);
}
%>
<!DOCTYPE html>
<html>

    <body>
        <%@include file="navbar.jsp" %>
        <form action="addAdmin" method="post">
            <div class="f-container">
                <center> <h1 style="font-size:57px;">Add Amin</h1> </center>
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
                    <button id="submit" type="submit" class="signupbtn">Add Admin</button>
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
