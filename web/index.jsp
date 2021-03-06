<%@page import="product.Product"%>
<%@page import="java.util.ArrayList"%>
<%
    String buttonName = "Login";
Boolean loggedIn= (Boolean) session.getAttribute("loggedin");

if(loggedIn!=null && loggedIn){
   buttonName = "Dashboard";
}

    ArrayList<Product> products = Product.getAllProducts();

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="">
<link href="/Graduate/pages/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<link href="/Graduate/pages/css/style.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:200,300,400,500,600,700" rel="stylesheet">
</head>
<body>


<!-- HEADER =============================-->
<header class="item header margin-top-0">
<div class="wrapper">
	<nav role="navigation" class="navbar navbar-white navbar-embossed navbar-lg navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button data-target="#navbar-collapse-02" data-toggle="collapse" class="navbar-toggle" type="button">
			<i class="fa fa-bars"></i>
			<span class="sr-only">Toggle navigation</span>
			</button>
			<a href="index.jsp" class="navbar-brand brand"> eSwap </a>
		</div>
		<div id="navbar-collapse-02" class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="propClone"><a href="index.jsp">Home</a></li>
				<li class="propClone"><a href="/Graduate/pages/shop.jsp">Shop</a></li>
                                <%if(loggedIn==null || !loggedIn){%>
				<li class="propClone"><a href="/Graduate/AddUser.jsp">Sign Up</a></li>
                                <%}%>
				<li class="propClone"><a href="/Graduate/login.jsp"><%=buttonName%></a></li>
				</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<div class="text-homeimage">
					<div class="maintext-image" data-scrollreveal="enter top over 1.5s after 0.1s">
						 New Shopping Experience
					</div>
					<div style="color:darkgoldenrod !important;" class="maintext-image yel" data-scrollreveal="enter bottom over 1.7s after 0.3s">
                                            Start <span style="color:darkgoldenrod;">Swapping</span> Products
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</header>


<!-- STEPS =============================-->
<div class="item content">
	<div class="container toparea">
		<div class="row text-center">
			<div class="col-md-4">
				<div class="col editContent">
					<span class="numberstep"><i class="fa fa-retweet"></i></span>
					<h3 class="numbertext">Swap Products</h3>
					<p>
                                            Our site make you able to swap products with others.
					</p>
				</div>
				<!-- /.col-md-4 -->
			</div>
			<!-- /.col-md-4 col -->
			<div class="col-md-4 editContent">
				<div class="col">
					<span class="numberstep"><i class="fa fa-money"></i></span>
					<h3 class="numbertext">Cash Payment</h3>
					<p>
                                            Our site make it easier for you to buy any product, by paying by cash on delivery time.
					</p>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.col-md-4 col -->
			<div class="col-md-4 editContent">
				<div class="col">
					<span class="numberstep"><i class="fa fa-car"></i></span>
					<h3 class="numbertext">Free Delivery</h3>
					<p>
                                         
                                           Our site introduce a free delivery for any product that you buy. 
                                           
                                        </p>
				</div>
			</div>
		</div>
	</div>
</div>
	
	

<!-- BUTTON =============================-->
<div class="item content" style="margin: 90px;">
	<div class="container text-center">
            
		<a style="width: 500px" href="/Graduate/pages/shop.jsp" class="homebrowseitems">
                    Shop Now  
		</a>
	</div>
</div>
<br/>





<!-- FOOTER =============================-->
<div class="footer text-center">
	<div class="container">
		<div class="row">
			<p class="footernote">
				 Connect with eSwap
			</p>
			<ul class="social-iconsfooter">
                                <li><a href="https://api.whatsapp.com/send?phone=962782477422&app=facebook&entry_point=page_cta"><i class="fa fa-phone"></i></a></li>
				<li><a href="https://www.facebook.com/ESwap-104416452302224/"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
			</ul>
			<p>
				 &copy; 2022 eSwap<br/>
			</p>
		</div>
	</div>
</div>

<!-- SCRIPTS =============================-->
<script src="/Graduate/pages/js/jquery-.js"></script>
<script src="/Graduate/pages/js/bootstrap.min.js"></script>
<script src="/Graduate/pages/js/anim.js"></script>
<script>
//----HOVER CAPTION---//	  
jQuery(document).ready(function ($) {
	$('.fadeshop').hover(
		function(){
			$(this).find('.captionshop').fadeIn(150);
		},
		function(){
			$(this).find('.captionshop').fadeOut(150);
		}
	);
});
</script>
	
</body>
</html>