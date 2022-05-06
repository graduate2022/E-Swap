<%@page import = "java.sql.*" %>
<%@page import = "javax.swing.*" %>

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


<body>
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
                        <td><input type= "text" required=""  placeholder = "Enter Your User Name"  id="usernsme" name="usernsme"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type= "password" required=""  placeholder = "Enter Your Password" id="passwd" name="passwd"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Login" formaction="Admin.jsp" />
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

     <%
    try{
        String username = request.getParameter("username");   
        String passwd = request.getParameter("passwd");
        Class.forName("org.apache.derby.jdbc.ClientDriver");  // PostgreSQL JDBC Driver to database connection
        Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/Employee","alaa","000");    
        PreparedStatement pst = conn.prepareStatement("Select username,passwd from info where username=? and passwd=?");
        pst.setString(1, username);
        pst.setString(2, passwd);
        ResultSet rs = pst.executeQuery();                        
        
        if(rs.next())           
           out.println("Valid login credentials");        
        else
          JOptionPane.showMessageDialog(null," Invalid login credentials");

   }
   catch (Exception e){
        out.println("kiooo");
                out.println("Error" + e);

        }
     %>
      
    
   

</body>
</html>