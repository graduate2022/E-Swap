
<%
    String buttonName = "Login";
Boolean loggedIn= (Boolean) session.getAttribute("loggedin");

if(loggedIn!=null && loggedIn){
   buttonName = "Admin page";
}

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="mainproject.css">
    
    <title>Document</title>
</head>
<body>

<section>
<div class="div1"> <b> E-SWAP</b> 
<button><a href="login.jsp"> <%=buttonName%> </a></button> 

</div>

<div class="div2">
<button> Search </button>
<input type="text" placeholder="Search by ID">     
</div>
</section>

<br> 
<div class="container">
<div class="row">
<div class="div3 col-lg-4">
<img src="/Graduate/assets/images/1.jpg" alt="">
<img src="/Graduate/assets/images/2.jpg" alt="">
<img src="/Graduate/assets/images/3.jpg" alt="">
<br><br><br>
<div class="div4">
<img src="/Graduate/assets/images/4.jpg" alt="">
<img src="/Graduate/assets/images/5.jpg" alt="">
<img src="/Graduate/assets/images/6.jpg" alt="">
</div>
<br><br><br>
<div class="div5">
<img src="/Graduate/assets/images/7.jpg" alt="">
<img src="/Graduate/assets/images/8.jpg" alt="">
<img src="/Graduate/assets/images/9.jpg" alt="">
</div>
<br><br><br>
<div class="div6">
<img src= "/Graduate/assets/images/10.jpg" alt="">
<img src="/Graduate/assets/images/7.jpg" alt="">
<img src="/Graduate/assets/images/1.jpg" alt="">
</div>
    </div>
    </div>
</div>

    
<style>
    
.div1 {height: 70px;  width: 1350px; margin-top: 15px;  font-size: 40px; background-color: lightpink;}
.div1 b {margin-left: 610px;}
.div1 button{margin-left: -700px;  }
.div2 input{height: 20px; margin-top: 15px; }
.div2 button{height: 30px;}
.div3 img{width: 300px; height: 300px; margin-left: 100px;}
.div4 img{width: 300px; height: 300px; margin-left: 100px;}
.div5 img{width: 300px; height: 300px; margin-left: 100px;}
.div6 img{width: 300px; height: 300px; margin-left: 100px;}

</style>     
    
</body>
</html>