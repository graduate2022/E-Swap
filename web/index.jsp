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
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<style>

label0 {color: yellow; font-size:30px;}
.diva {margin-left: 100px;}
.divb {margin-left: 505px; margin-top: -50px;}
.divc {margin-left: 910px; margin-top: -55px;}

.div1 {height: 160px;  width: 1500px;  background-color: black;}

 b {color: blueviolet; font-size:25px;}
 
.div1 button {margin-left: 1060px; size: 30px; margin-top: -200px; }
.div1 img{width: 550px; height: 150px; margin-left: 400px;}

.div2 input{height: 20px; margin-top: 15px; }
.div2 button{height: 30px;}
.div3 img{width: 300px; height: 300px; margin-left: 100px;}
.div3 select {margin-left: 100px;}
.div4 img{width: 300px; height: 300px; margin-left: 100px;}



</style>  
    <title> Main Page </title>
</head>
<body>
<section>
<nav class="w3-bar w3-black">
<a href="login.jsp" class="w3-button w3-bar-item"> <%=buttonName%> </a>  
<a href="bookorders.jsp" class="w3-button w3-bar-item" > Book Buying Order </a>
<a href="" class="w3-button w3-bar-item"> Swapping Order </a>
<a href="Feedback.jsp" class="w3-button w3-bar-item"> Feedback</a> 

</nav>       

<div class="div1">
<img src="/Graduate/assets/images/logo.jpg" alt="">
</div>
<marquee BGCOLOR="Red" SCROLLAMOUNT="130" SCROLLDELAY="600" >
<label0> Free Delivery (Free project by Esraa Barham) </label0>
</marquee>
    
<marquee BGCOLOR="yellow" SCROLLAMOUNT="110" SCROLLDELAY="600" >
<b> Welcome in our Shop</b>&emsp;&emsp;&emsp;
<b>Date and Time is : <%=  new java.util.Date()%> </b> </marquee> 


<div class="container">
<div class="row">
<div class="div3 col-lg-4">
    
<img src="/Graduate/assets/images/1.jpg" alt="">
<img src="/Graduate/assets/images/2.jpg" alt="">
<img src="/Graduate/assets/images/3.jpg" alt="">
<br>

<div class="diva">
<label>ID :1023    price : 2JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>
    
<div class="divb">
<label>ID : 9800    price : 2.50JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>

<div class="divc">
    <label>ID : 4516</label> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <label>price : 1.65JD</label><br>

<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>

<br>
<div class="div2">
<img src="/Graduate/assets/images/4.jpg" alt="">
<img src="/Graduate/assets/images/5.jpg" alt="">
<img src="/Graduate/assets/images/6.jpg" alt="">
</div>

<div class="diva">
<label>ID :7873 </label> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <label>price : 1.65JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>
    
<div class="divb">
<label>ID : 2589</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <label>price : 2JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>

<div class="divc">
<label>ID : 9876 </label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <label>price : 1.5JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>

<br>
<div class="div3">
<img src="/Graduate/assets/images/7.jpg" alt="">
<img src="/Graduate/assets/images/8.jpg" alt="">
<img src="/Graduate/assets/images/9.jpg" alt="">
</div>

<div class="diva">
<label>ID 20496</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <label>price : JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>
    
<div class="divb">
<label>ID : 4986</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <label>price : JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>

<div class="divc">
<label>ID : 6456</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <label>price : JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>

<br><br><br>
<div class="div4">
<img src= "/Graduate/assets/images/10.jpg" alt="">
<img src="/Graduate/assets/images/11.jpg" alt="">
<img src="/Graduate/assets/images/12.jpg" alt="">
</div>

<div class="diva">
<label>ID :17643 </label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <label>price : 3JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>
    
<div class="divb">
<label>ID : 6578</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <label>price : JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>

<div class="divc">
<label>ID : 4095</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <label>price : 2.40JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>

<br><br><br>
<div class="div4">
<img src= "/Graduate/assets/images/13.jpg" alt="">
<img src="/Graduate/assets/images/14.jpg" alt="">
<img src="/Graduate/assets/images/15.jpg" alt="">
</div>

<div class="diva">
<label>ID :1263 </label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <label>price : 3JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>
    
<div class="divb">
<label>ID : 3476</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <label>price : JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>

<div class="divc">
<label>ID : 4879</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <label>price : 2.40JD</label><br>
<button><a href="bookorders.jsp"> Cash </a></button>
<button><a href=""> Swap </a></button>
</div>

    </div>
    </div>
</div>
<br><br><br><br>


   
    

</body>
</html>