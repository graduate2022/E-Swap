<%@page import="product.Product"%>
<%@page import="java.util.ArrayList"%>
<%
    String buttonName = "Login";
Boolean loggedIn= (Boolean) session.getAttribute("loggedin");

if(loggedIn!=null && loggedIn){
   buttonName = "Admin page";
}

    ArrayList<Product> products = Product.getAllProducts();

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="mainproject.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
    
    <style>
* {
  box-sizing: border-box;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 33.33%;
  padding: 10px;
  height: 430px; /* Should be removed. Only for demonstration */
  border: 7px solid antiquewhite;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

.container{
    margin:80px;
    background-color: beige;
}
.details{
    font-size: 20px;
    margin: 10px;
}
</style>

<style>

label0 {color: yellow; font-size:30px;}

.div1 {height: 160px;  width: 2000px;  background-color: black;}

 b {color: blueviolet; font-size:25px;}
 
.div1 button {margin-left: 1060px; size: 30px; margin-top: -150px; }
.div1 img{ width: 550px; height: 150px; margin-left: 550px;}

img{
    width: 300px;
    height:300px;
}

</style>  
    <title> Main Page </title>
</head>
<body>
<section>
<nav class="w3-bar w3-black">
<a href="login.jsp" class="w3-button w3-bar-item"> <%=buttonName%> </a>  
<a href="signin.jsp" class="w3-button w3-bar-item"> Sign in </a>
<a href="Feedback.jsp" class="w3-button w3-bar-item"> Feedback</a> 
</nav>       
</section>

<div class="div1">
<img src="/Graduate/assets/images/logo.jpg" alt="">
</div>
<marquee BGCOLOR="Red" SCROLLAMOUNT="100" SCROLLDELAY="600" >
<label0> Free Delivery </label0>
</marquee>
    
<marquee BGCOLOR="yellow" SCROLLAMOUNT="110" SCROLLDELAY="600" >
<b> Welcome in our Shop</b>&emsp;&emsp;&emsp;
<b>Date and Time is : <%=  new java.util.Date()%> </b></marquee> 
<div class="container">
<div class="row">
     <%              
                for (Product product : products) {

            %>
  <div class="column">
      <center>
      <img src="/Graduate/assets/images/<%=product.imgName%>">
      <div class="details">
       <span><%=product.name%></span>
    <span>Price: <%=product.price%> JD</span>   
      </div>
    
    <div>
        <button><a href="bookorders.jsp?id=<%=product.id%>"> cach </a></button>        
        <button> Swap </button>
    </div>
      </center>
  </div>
<%}%>


</div>
</div>
</body>
</html>