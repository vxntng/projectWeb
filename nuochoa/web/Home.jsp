<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>NUOC HOA HOME</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />

        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css1/style.css" rel="stylesheet" type="text/css" media="all" />	
        <link href="css/styles.css" rel="stylesheet" />
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Fashion Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Libre+Baskerville:400,700,400italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <!--//fonts-->
    </head>
    <body style="background-image:  url(https://img.freepik.com/free-photo/grunge-paint-background_1409-1337.jpg?w=2000)"> 
        <%@include file="components/navBarComponent.jsp" %>
        <!--header-->

        <!--content-->

        <div class="content">
            <div class="container">
                <div class="women-in">
                    <div class="col-md-12 col-d">
                        <div class="banner">
                            <div class="text-center text-white">

                                <h1 class="display-4 fw-bolder">XXIV Store</h1>
                                <p class="uk-panel uk-text-meta uk-margin uk-text-center">You deserve to be happy</p>

                                <p class="lead fw-normal text-white-50 mb-0">
                                    Chào mừng các bạn đến với XXIV store – một tiệm nước hoa nho nhỏ lấy cảm hứng từ những con người có cảm xúc đặc biệt biệt với hương thơm mê hoặc
                                </p>
                            </div>
                        </div>
                        <!---->
                        <div class="row">
                            <div class="col-md-3 mb-5">
                                <h3>List Categories</h3>
                                <ul class="list-group">

                                    <c:forEach items="${listCategories}" var="C">
                                        <li class="list-group-item"><a href="filter-category?categoryId=${C.id}">${C.name}</a></li>

                                    </c:forEach>


                                </ul>
                            </div>


                            <div class="col-md-3 mb-5">
                                <h3>Thuong Hieu</h3>

                                <c:forEach items="${thuonghieu}" var="C">
                                    <li class="list-group-item"><a href="searchth?th_id=${C.idth}">${C.nameth}</a></li>

                                </c:forEach>
                            </div>
                            <div class="col-md-6 mb-5">
                                <h3>PRICE</h3>
                                <form action="giatang" class="d-flex mx-auto">
                                    <button class="btn btn-dark" type="submit">
                                        PRICE (LOW - HIGH)
                                    </button>

                                </form>
                                <form action="giamdan" class="d-flex mx-auto">

                                    <button class="btn btn-dark" type="submit">
                                        PRICE (HIGH - LOW )
                                    </button>
                                </form>



                            </div>
                        </div>
                        <div class="in-line">
                            <div class="para-an">
                                <h3>List Products</h3>
                                <p>Check our all new products in this section.</p>
                            </div>
                            <c:choose>
                                <c:when test="${listProducts==null || listProducts.size()==0}">
                                    <h3 style="color: red"> NO MORE PRODUCTS</h3>
                                </c:when>
                                <c:otherwise>
                                    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                        <ul class="pagination">
                                            <li class="page-item"><a class="page-link" href="home?page=${page-1}">Previous</a></li>
                                                <c:forEach begin="1" end="${totalPage}" var="i">
                                                <li class="page-item ${i == page?"active":""}"><a class="page-link" href="home?page=${i}">${i}</a></li>
                                                </c:forEach>
                                            <li class="page-item"><a class="page-link" href="home?page=${page+1}">Next</a></li>
                                        </ul>
                                    </nav>
                                </c:otherwise>
                            </c:choose>
                            <div
                                class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center"
                                >

                                <c:forEach items="${listProducts}" var="P">
                                    <div class="col mb-5">
                                        <div class="card h-100">
                                            <!-- Sale badge-->
                                            <div
                                                class="badge bg-dark text-white position-absolute"
                                                style="top: 0.5rem; right: 0.5rem"
                                                >
                                                Sale
                                            </div>
                                            <!-- Product image-->

                                            <a href="detail?productId=${P.id}">
                                                <img
                                                    class="card-img-top"
                                                    src="${P.imageUrl}"
                                                    alt="..."
                                                    />
                                            </a>

                                            <!-- Product details-->
                                            <div class="card-body p-4">
                                                <div class="text-center">
                                                    <!-- Product name-->
                                                    <h5 class="fw-bolder">${P.name}</h5>
                                                    <!-- Product reviews-->
                                                    <div
                                                        class="d-flex justify-content-center small text-warning mb-2"
                                                        >
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                        <div class="bi-star-fill"></div>
                                                    </div>
                                                    <!-- Product price-->

                                                    $${P.price}

                                                </div>
                                            </div>
                                            <!-- Product actions-->
                                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                <%--   <c:if test="${sessionScope.account != null }">--%>
                                                <div class="text-center">
                                                    <a class="btn btn-outline-dark mt-auto" href="add-to-cart?productId=${P.id}"
                                                       >Add to cart</a
                                                    >
                                                </div>
                                                <%--  </c:if>--%>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>


                            </div>

                        </div>
                    </div>
                    <div class="col-md-0 col-m-left">
                        <div class="twitter-in">
                            <h5>Contact</h5>
                            <span class="twitter-ic">	</span>
                            <div class="up-date">
                                <p>FaceBook:</p>
                                <a href="https://www.facebook.com/">https://www.facebook.com</a>

                            </div>
                            <div class="up-date">
                                <p>Instagram</p>
                                <a href="https://www.instagram.com/?hl=en">https://www.instagram.com/?hl=en</a>

                            </div>

                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <!---->
                <div class="lady-in-on">
                    <div class="buy-an">
                        <h3>OTHER PRODUCTS</h3>
                        <p>Check our all new products in this section.</p>
                    </div>
                    <ul id="flexiselDemo1">
                        <c:forEach items="${listProducts}" var="P">
                            <li><a href="detail?productId=${P.id}"><img class="img-responsive women" src="${P.imageUrl}" alt=""></a>
                                <div class="hide-in">
                                    <p>${P.name}</p>
                                    <span>${P.price}  |  <a href="add-to-cart?productId=${P.id}">Buy Now </a></span>
                                </div></a></li>
                            </c:forEach>
                    </ul>
                    <script type="text/javascript">
                        $(window).load(function () {
                            $("#flexiselDemo1").flexisel({
                                visibleItems: 4,
                                animationSpeed: 1000,
                                autoPlay: true,
                                autoPlaySpeed: 3000,
                                pauseOnHover: true,
                                enableResponsiveBreakpoints: true,
                                responsiveBreakpoints: {
                                    portrait: {
                                        changePoint: 480,
                                        visibleItems: 1
                                    },
                                    landscape: {
                                        changePoint: 640,
                                        visibleItems: 2
                                    },
                                    tablet: {
                                        changePoint: 768,
                                        visibleItems: 3
                                    }
                                }
                            });

                        });
                    </script>
                    <script type="text/javascript" src="js/jquery.flexisel.js"></script>
                </div>
            </div>
        </div>
        <!---->
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>