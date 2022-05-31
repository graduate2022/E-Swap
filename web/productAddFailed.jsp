<%-- 
    Document   : orderSuccess
    Created on : May 27, 2022, 11:33:59 PM
    Author     : Alaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="navbar.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif !important;
                background: white!important;
                color:black !important;

            }
            .s-msg{
                margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
            }
            
            .s-btn{
                
                 top: 80%;
 
            }
            
            .fa-times-circle{
                    font-size: 112px;
    text-align: center;
    position: relative;
    left: 37%;
    color: red;
            }
            </style>
    </head>
    <body>
        <div class="s-msg">
            <div class="fa fa-times-circle"></div>
        <h1>Failed to add the Product!</h1>
        </div>  
    </body>
</html>
