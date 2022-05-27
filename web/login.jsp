<%


Boolean loggedIn= (Boolean) session.getAttribute("loggedin");

if(loggedIn!=null && loggedIn){
   response.sendRedirect(request.getContextPath() + "/Admin.jsp");
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
 .div1 {
margin-top: 50px;
height: 500px;
width: 500px;
background-color: wheat;
border-style: solid;
border-radius: 30px;
}
 form {
position: inherit;
margin-top: 70px;
}
</style>
</head>
<body>
    <center>
        
        <div class="div1"> 
            <form class="a" action="loginAction.jsp" method = "POST" >
    
            <table border="3" cellpadding="4" cellspacing="2" style="width:35% " >
                <thead>
                    <tr style="height:60px">
                    <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr style="height:60px">
                        <td>Username</td>
                        <td><input type= "text" required=""  placeholder = "Enter Your User Name"  id="username" name="username"></td>
                    </tr>
                    <tr style="height:60px">
                        <td>Password</td>
                        <td><input type= "password" required=""  placeholder = "Enter Your Password" id="passwd" name="passwd"></td>
                    </tr>
                    <tr style="height:60px">
                        <td colspan="2" align="center">
                            <input type="submit" value="Log in" />
                            &nbsp;&nbsp;
                            <input type="reset" value="Reset" />
                           
                             </td>                        
                    </tr>                    
                </tbody>
            </table>
            
        </form>
             
       <br><br>
       <button> <a href="index.jsp" > Back to Home </a></button>
       &nbsp;&nbsp;
       <button> <a href="insertdata_user.jsp" > Create a new Account </a></button>
    </div>
    </center>
    
    </body>
</html>