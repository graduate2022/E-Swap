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
       
body {
    background-color: lightpink ;
	}
    </style>
    
</head>



<center>
   
 <br><br><br><br><br>
 
        <form  action="loginAction.jsp" method = "POST" >
    
            <table border="3" cellpadding="4" cellspacing="2">
                <thead>
                    <tr>
                    <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type= "text" required=""  placeholder = "Enter Your User Name"  id="username" name="username"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type= "password" required=""  placeholder = "Enter Your Password" id="passwd" name="passwd"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Login" />
                            &nbsp;&nbsp;
                            <input type="reset" value="Reset" />
                           
                             </td>                        
                    </tr>                    
                </tbody>
            </table>
            
        </form>
             
       <br><br>
   <a href="insertdata_user.jsp" > Create a new account </a>
   
</center>

</html>