<%-- 
    Document   : loginAction
    Created on : Apr 28, 2022, 1:15:56 AM
    Author     : Alaa
--%>

<%@page import="user.UserUtil"%>
<%@page import = "java.sql.*" %>
<%@page import = "javax.swing.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%


Boolean loggedIn= (Boolean) session.getAttribute("loggedin");

if(loggedIn!=null && loggedIn){
    
   response.sendRedirect(request.getContextPath() + "/Admin.jsp");
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    boolean valid = false;
    boolean empty = false;
    String username = request.getParameter("username"); 
    UserUtil userUtil = new UserUtil();

    try{
        String passwd = request.getParameter("passwd");
    
        empty = username == null;
        valid= userUtil.validateLogin(username, passwd);
   }
   catch (Exception e){
                out.println("Error" + e);
        }
   

if(valid){

                session.setAttribute("loggedin",true);
                session.setAttribute("isAdmin",userUtil.isAdmin);
                
                session.setAttribute("username",username);
                if(userUtil.isAdmin){
                response.sendRedirect(request.getContextPath() + "/Admin.jsp");
                }else{
                response.sendRedirect(request.getContextPath() + "/userDashboard.jsp");
                }


}
else{

                       if(!empty) {
                    out.println("<h2> Username or Password is wrong!</h2>");
                       }
%>

<jsp:include page="login.jsp"/>
<%

}

%>
      
    
</body>
</html>
