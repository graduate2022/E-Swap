<%-- 
    Document   : logoutAction
    Created on : May 7, 2022, 8:57:09 PM
    Author     : Alaa
--%>
<%
session.removeAttribute("loggedin");
session.invalidate();
request.getRequestDispatcher("/").forward(request, response);
%>