<%@page import="product.Product"%>
<%@page import="java.util.ArrayList"%>
<%
    String buttonName = "Login";
    Boolean loggedIn = (Boolean) session.getAttribute("loggedin");

    if (loggedIn != null && loggedIn) {
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
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:200,300,400,500,600,700" rel="stylesheet">

    <head>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/2.3.0/mustache.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="author" content="colorlib.com">
        <style id="" media="all">/* devanagari */
            @font-face {
                font-family: 'Poppins';
                font-style: normal;
                font-weight: 400;
                font-display: swap;
                src: url(/fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrJJbecmNE.woff2) format('woff2');
                unicode-range: U+0900-097F, U+1CD0-1CF6, U+1CF8-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FB;
            }
            /* latin-ext */
            @font-face {
                font-family: 'Poppins';
                font-style: normal;
                font-weight: 400;
                font-display: swap;
                src: url(/fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrJJnecmNE.woff2) format('woff2');
                unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
            }
            /* latin */
            @font-face {
                font-family: 'Poppins';
                font-style: normal;
                font-weight: 400;
                font-display: swap;
                src: url(/fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrJJfecg.woff2) format('woff2');
                unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
            }
        </style>
        <link href="https://colorlib.com/etc/searchf/colorlib-search-3/css/main.css" rel="stylesheet">
        <meta name="robots" content="noindex, follow">
        <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js" nonce="e0a1e303-085e-476d-9c42-9afa1a49f024"></script><script defer="" referrerpolicy="origin" src="/cdn-cgi/zaraz/s.js?z=JTdCJTIyZXhlY3V0ZWQlMjIlM0ElNUIlNUQlMkMlMjJ4JTIyJTNBMC42MjUxOTE3NTYxMTg4OTY5JTJDJTIydyUyMiUzQTEzNjYlMkMlMjJoJTIyJTNBNzY4JTJDJTIyaiUyMiUzQTYyNSUyQyUyMmUlMjIlM0ExMzY2JTJDJTIybCUyMiUzQSUyMmh0dHBzJTNBJTJGJTJGY29sb3JsaWIuY29tJTJGZXRjJTJGc2VhcmNoZiUyRmNvbG9ybGliLXNlYXJjaC0zJTJGJTIyJTJDJTIyciUyMiUzQSUyMmh0dHBzJTNBJTJGJTJGY29sb3JsaWIuY29tJTJGd3AlMkZ0ZW1wbGF0ZSUyRmNvbG9ybGliLXNlYXJjaC0zJTJGJTIyJTJDJTIyayUyMiUzQTI0JTJDJTIybiUyMiUzQSUyMlVURi04JTIyJTJDJTIybyUyMiUzQS0xODAlMkMlMjJxJTIyJTNBJTVCJTVEJTdE"></script><script nonce="e0a1e303-085e-476d-9c42-9afa1a49f024">(function(w, d){!function(a, e, t, r){a.zarazData = a.zarazData || {}, a.zarazData.executed = [], a.zaraz = {deferred:[]}, a.zaraz.q = [], a.zaraz._f = function(e){return function(){var t = Array.prototype.slice.call(arguments); a.zaraz.q.push({m:e, a:t})}}; for (const e of["track", "set", "ecommerce", "debug"])a.zaraz[e] = a.zaraz._f(e); a.addEventListener("DOMContentLoaded", (() => {var t = e.getElementsByTagName(r)[0], z = e.createElement(r), n = e.getElementsByTagName("title")[0]; for (n && (a.zarazData.t = e.getElementsByTagName("title")[0].text), a.zarazData.x = Math.random(), a.zarazData.w = a.screen.width, a.zarazData.h = a.screen.height, a.zarazData.j = a.innerHeight, a.zarazData.e = a.innerWidth, a.zarazData.l = a.location.href, a.zarazData.r = e.referrer, a.zarazData.k = a.screen.colorDepth, a.zarazData.n = e.characterSet, a.zarazData.o = (new Date).getTimezoneOffset(), a.zarazData.q = []; a.zaraz.q.length; ){const e = a.zaraz.q.shift(); a.zarazData.q.push(e)}z.defer = !0; for (const e of[localStorage, sessionStorage])Object.keys(e).filter((a => a.startsWith("_zaraz_"))).forEach((t => {try{a.zarazData["z_" + t.slice(7)] = JSON.parse(e.getItem(t))} catch {a.zarazData["z_" + t.slice(7)] = e.getItem(t)}})); z.referrerPolicy = "origin", z.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(a.zarazData))), t.parentNode.insertBefore(z, t)}))}(w, d, 0, "script"); })(window, document);</script></head>

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
                            <li class="propClone"><a href="/Graduate">Home</a></li>
                            <li class="propClone"><a href="/Graduate/pages/shop.jsp">Shop</a></li>
                                <%if (loggedIn == null || !loggedIn) {%>
                            <li class="propClone"><a href="/Graduate/AddUser.jsp">Sign Up</a></li>
                                <%}%>
                            <li class="propClone"><a href="/Graduate/login.jsp"><%=buttonName%></a></li>
                            <li class="propClone"><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="text-pageheader">
                            <div class="maintext-image" data-scrollreveal="enter bottom over 1.7s after 0.1s">
                                Shop
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- CONTENT =============================-->
    <section class="item content">
        <div class="container toparea">
            <div class="underlined-title">
                <div class="editContent">
                    <h1 class="text-center latestitems">OUR PRODUCTS</h1>
                </div>
                <div class="wow-hr type_short">
                    <span class="wow-hr-h">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </span>
                </div>


                <div class="s003" style="min-height: 0px">
                    <form>
                        <div class="inner-form">
                            <div class="input-field second-wrap">
                                <input onkeyup="getProducts(event)"id="search" type="text" placeholder="Enter Keywords?">
                            </div>
                            <div class="input-field third-wrap">
                                <button class="btn-search" type="button" onclick="getProducts(event)">
                                    <svg class="svg-inline--fa fa-search fa-w-16" aria-hidden="true" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                    <path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path>
                                    </svg>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>


                <div id="p-data" class="row">
                    <%
                        for (Product product : products) {

                    %>

                    <div class="col-md-4">
                        <div class="productbox">
                            <div class="fadeshop">
                                <div class="captionshop text-center" style="display: none;">
                                    <h3><%=product.name%></h3>

                                    <br><br><br><br>
                                    <p>
                                        <a href="/Graduate/bookorders.jsp?id=<%=product.id%>" class="learn-more detailslearn"><i class="fa fa-money"></i> Cash</a>
                                        <a href="/Graduate/swapOrder.jsp?id=<%=product.id%>" class="learn-more detailslearn"><i class="fa fa-retweet"></i> Swap</a>
                                    </p>
                                </div>
                                <span class="maxproduct"><img style="height: 333px; width: 332px" src="/Graduate/assets/images/<%=product.imgName%>" alt=""></span>
                            </div>
                            <div class="product-details">
                                <h1><%=product.name%></h1>
                                <span class="price">
                                    <span class="edd_price"><%=product.price%> JD</span>
                                </span>
                            </div>
                        </div>
                    </div>

                    <% }%>

                </div>
            </div>
        </div>
    </section>


    <!-- FOOTER =============================-->
    <div class="footer text-center">
        <div class="container">
            <div class="row">
                <p class="footernote">
                    Connect with eSwap
                </p>
                <ul class="social-iconsfooter">
                    <li><a href="#"><i class="fa fa-phone"></i></a></li>
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
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

    <!-- Load JS here for greater good =============================-->
    <script src="js/jquery-.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/anim.js"></script>
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
            });</script>
    <script id="product_template" type="text/template">

		<div class="col-md-4">
        <div class="productbox">            
        <div class="fadesh                op">
            <div class="captionshop text-center" style="displ                    ay: none;">
             <h3>                    <{{name}}</h3>

                <br><br><br><br>
                                    <p>
                              <a href="/Graduate/bookorders.jsp?id={{id}}" class="learn-more detailslearn"><i class="fa fa-money"></i> C                        ash</a>
                    <a href="/Graduate/swapOrder.jsp?id={{id}}" class="learn-more detailslearn"><i class="fa fa-r                    etweet"></i                > Swap</a>
                 </p>
            </div>
            <span class="maxproduct"><img style="height: 333px; width: 332px" src="/Graduate/assets/images/{{imgname}}" alt=""></spa            n>
                    </div>
        <div class="product                -details">
                            <h1>{{name}}</h1>
                            <span class="price">
                <span cl                ass="edd_pric            e">{{price}        } JD</span    >
       </span>
        </div>
    </div>
</div>

</script>

<script>


function getProducts(event) {
    event.preventDefault();
    let id = document.getElementById("search").value;
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
    // In local files, status is 0 upon success in Mozilla Firefox
    if (xhr.readyState === XMLHttpRequest.DONE) {
    var status = xhr.status;
    if (status === 0 || (status >= 200 && status < 400)) {
    // The request has been completed successfully
    res = JSON.parse(xhr.responseText);
    displayData(res);
    } else {


    notFound();
    }
    }
    };
    xhr.open("POST", "/Graduate/searchProductByName?    name="+ id);
    xhr.send();
}



function displayData(data){


    let res = data.res;
    res = JSON.parse(res);
    let tem = document.getElementById("product_template");
    let products = [];
    for (var i = 0; i < res.length; i++){
    products.push(Mustache.render(tem.innerHTML, res[i]));
    }

    $("#p-data").html(products.toString());
}

function notFound(){

    $("#p-data").html('<h1 style="margin: 5%;text-align: center;">No Results Found</h1>');
    }

</script>
</body>
</html>
