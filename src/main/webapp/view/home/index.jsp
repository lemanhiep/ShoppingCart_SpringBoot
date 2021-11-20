<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
    
<!DOCTYPE html>
<html>

<!-- Mirrored from themepure.net/template/vue/vue/index-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 23 Jun 2021 12:28:02 GMT -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Vue - Clean Minimal eCommerce HTML Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="manifest" href="site.html">
		<link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicon.png">
        <!-- Place favicon.ico in the root directory -->

		<!-- CSS here -->
        <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="/assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="/assets/css/animate.min.css">
        <link rel="stylesheet" href="/assets/css/magnific-popup.css">
        <link rel="stylesheet" href="/assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="/assets/css/flaticon.css">
        <link rel="stylesheet" href="/assets/css/meanmenu.css">
        <link rel="stylesheet" href="/assets/css/meanmenu.css">
        <link rel="stylesheet" href="/assets/css/slick.css">
        <link rel="stylesheet" href="/assets/css/default.css">
        <link rel="stylesheet" href="/assets/css/style.css">
        <link rel="stylesheet" href="/assets/css/responsive.css">
    </head>
    <body>


        <!-- preloader -->
        <div id="preloader">
            <div class="preloader">
                <span></span>
                <span></span>
            </div>
        </div>
        <!-- preloader end  -->

        <!-- header -->
		<jsp:include page="../../title_slide/header.jsp"></jsp:include>
        <!-- header end -->
        

        <main>
            <!-- slider-area start -->
            <section class="slider-area pos-relative">
                <div class="slider-active">
                    <div class="single-slider slider-2 slide-1-style slide-height-2 d-flex align-items-center" data-background="/assets/img/slider/slide2-1.jpg">
                        <div class="shape-title bounce-animate">
                            <h2>2019</h2>
                        </div>
                        <div class="shape-icon bounce-animate">
                            <img src="/assets/img/slider/shape-icon.png" alt="">
                        </div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xl-7">
                                    <div class="slide-content pt-80">
                                        <span data-animation="fadeInRight" data-delay=".2s">Women Collection</span>
                                        <h1 data-animation="fadeInUp" data-delay=".5s">New Arrivals</h1>
                                        <div class="slider-price mb-25" data-animation="fadeInUp" data-delay=".7s">
                                            <span>$56.00</span>
                                            <span class="old-price">$98.00</span>
                                        </div>
                                        <div class="slide-btn">
                                            <a class="btn theme-btn" href="../product/shop-full.jsp" data-animation="fadeInLeft" data-delay=".9s">shop now</a>
                                            <a class="btn white-btn" href="../product/shop-full.jsp" data-animation="fadeInRight" data-delay="1.1s">category</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slider slider-2 slide-1-style slide-height-2 d-flex align-items-center" data-background="/assets/img/slider/slide2-2.jpg">
                        <div class="shape-title bounce-animate">
                            <h2 class="home-2-shape">2019</h2>
                        </div>
                        <div class="shape-icon bounce-animate">
                            <img src="/assets/img/slider/shape-icon.png" alt="">
                        </div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xl-7">
                                    <div class="slide-content pt-80">
                                        <span data-animation="fadeInRight" data-delay=".2s">Women Collection</span>
                                        <h1 data-animation="fadeInUp" data-delay=".5s">Women Product</h1>
                                        <div class="slider-price mb-25" data-animation="fadeInUp" data-delay=".7s">
                                            <span>$56.00</span>
                                            <span class="old-price">$98.00</span>
                                        </div>
                                        <div class="slide-btn">
                                            <a class="btn theme-btn" href="../product/shop-full.jsp" data-animation="fadeInLeft" data-delay=".9s">shop now</a>
                                            <a class="btn white-btn" href="../product/shop-full.jsp" data-animation="fadeInRight" data-delay="1.1s">category</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slider slider-2 slide-1-style slide-height-2 d-flex align-items-center" data-background="/assets/img/slider/slide2-3.jpg">
                        <div class="shape-title bounce-animate">
                            <h2 class="home-2-shape">2019</h2>
                        </div>
                        <div class="shape-icon bounce-animate">
                            <img src="/assets/img/slider/shape-icon.png" alt="">
                        </div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xl-7">
                                    <div class="slide-content pt-80">
                                        <span data-animation="fadeInRight" data-delay=".2s">Women Collection</span>
                                        <h1 data-animation="fadeInUp" data-delay=".5s">Trend Collection</h1>
                                        <div class="slider-price mb-25" data-animation="fadeInUp" data-delay=".7s">
                                            <span>$56.00</span>
                                            <span class="old-price">$98.00</span>
                                        </div>
                                        <div class="slide-btn">
                                            <a class="btn theme-btn" href="../product/shop-full.jsp" data-animation="fadeInLeft" data-delay=".9s">shop now</a>
                                            <a class="btn white-btn" href="../product/shop-full.jsp" data-animation="fadeInRight" data-delay="1.1s">category</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- slider-area end -->

            <!-- banner area start -->
            <section class="banner-area pt-30 box-90">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="banner-2 pos-relative mb-30">
                                <a href="shop.html"><img src="/assets/img/banner/banner-2/banner1.jpg" alt=""></a>
                                <div class="banner-trend">
                                    <span>Trendy Item</span>
                                    <h2><a href="shop.html">New Year Trend Coming 2019</a></h2>
                                    <div class="discover-link">
                                        <a href="shop.html">discover</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="banner-2 pos-relative mb-30">
                                <a href="shop.html"><img src="/assets/img/banner/banner-2/banner2.jpg" alt=""></a>
                                <div class="banner-look">
                                    <span>Get the look</span>
                                    <h2>Festive Looks</h2>
                                    <img src="/assets/img/icon/look.png" alt="">
                                    <p>Your delivery of outfit ideas, updated daily</p>
                                    <a href="../product/shop-full.jsp" class="btn theme-btn">discover</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- banner area end -->

            <!-- product-area start -->
            <section class="product-area box-90 pt-70 pb-40">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-5 col-lg-12">
                            <div class="area-title mb-50">
                                <h2>Brand New Products</h2>
                                <p>Browse the huge variety of our products</p>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-12">
                            <div class="product-tab mb-40">
                                <ul class="nav product-nav  justify-content-xl-end" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home"
                                            aria-selected="true">New Product</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
                                            aria-selected="false">Sale</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="product-tab-content">
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="product-slider owl-carousel">
                                        	<!-- Sản Phẩm Đơn -->
                                            <c:forEach var="item" items="${page.content}">
                                            <div class="pro-item">
                                                <div class="product-wrapper mb-50">
                                                    <div class="product-img mb-25">
                                                        <a href="product-details.html">
                                                            <img src="/assets/img/product/${item.image1}" alt="">
                                                            <img class="secondary-img" src="/assets/img/product/${item.image2}" alt="">
                                                        </a>
                                                        <div class="product-action text-center">
                                                            <a href="/cart/add/${item.id}" title="Shopping Cart">
                                                                <i class="flaticon-shopping-cart"></i>
                                                            </a>
                                                            <a href="#" title="Quick View">
                                                                <i class="flaticon-eye"></i>
                                                            </a>
                                                            <a href="#" data-toggle="tooltip" data-placement="right" title="Compare">
                                                                <i class="flaticon-compare"></i>
                                                            </a>
                                                        </div>
                                                        <div class="sale-tag">
                                                            <span class="new">new</span>
                                                            <span class="sale">sale</span>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <div class="pro-cat mb-10">
                                                            <a href="shop.html">decor, </a>
                                                            <a href="shop.html">furniture</a>
                                                        </div>
                                                        <h4>
                                                            <a href="product-details.html">${item.name}</a>
                                                        </h4>
                                                        <div class="product-meta">
                                                            <div class="pro-price">
                                                                <span>$${item.sale} USD</span>
                                                                <span class="old-price">$${item.price} USD</span>
                                                            </div>
                                                        </div>
                                                        <div class="product-wishlist">
                                                            <a href="#"><i class="far fa-heart" title="Wishlist"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </c:forEach>
                                        	<!-- Sản Phẩm Đơn -->
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="product-slider owl-carousel">
                                        	<!-- Sản Phẩm Đơn -->
                                            <c:forEach var="item" items="${sale.content}">
                                            <div class="pro-item">
                                                <div class="product-wrapper mb-50">
                                                    <div class="product-img mb-25">
                                                        <a href="product-details.html">
                                                            <img src="/assets/img/product/${item.image1}" alt="">
                                                            <img class="secondary-img" src="/assets/img/product/${item.image2}" alt="">
                                                        </a>
                                                        <div class="product-action text-center">
                                                            <a href="#" title="Shoppingb Cart">
                                                                <i class="flaticon-shopping-cart"></i>
                                                            </a>
                                                            <a href="#" title="Quick View">
                                                                <i class="flaticon-eye"></i>
                                                            </a>
                                                            <a href="#" data-toggle="tooltip" data-placement="right" title="Compare">
                                                                <i class="flaticon-compare"></i>
                                                            </a>
                                                        </div>
                                                        <div class="sale-tag">
                                                            <span class="new">new</span>
                                                            <span class="sale">sale</span>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <div class="pro-cat mb-10">
                                                            <a href="shop.html">decor, </a>
                                                            <a href="shop.html">furniture</a>
                                                        </div>
                                                        <h4>
                                                            <a href="product-details.html">${item.name}</a>
                                                        </h4>
                                                        <div class="product-meta">
                                                            <div class="pro-price">
                                                                <span>$${item.sale} USD</span>
                                                                <span class="old-price">$${item.price} USD</span>
                                                            </div>
                                                        </div>
                                                        <div class="product-wishlist">
                                                            <a href="#"><i class="far fa-heart" title="Wishlist"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </c:forEach>
                                        	<!-- Sản Phẩm Đơn -->
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                                        <div class="product-slider owl-carousel">
                                        	<!-- Sản Phẩm Đơn -->
                                            <c:forEach var="item" items="${page.content}">
                                            <div class="pro-item">
                                                <div class="product-wrapper mb-50">
                                                    <div class="product-img mb-25">
                                                        <a href="product-details.html">
                                                            <img src="/assets/img/product/${item.image1}" alt="">
                                                            <img class="secondary-img" src="/assets/img/product/${item.image2}" alt="">
                                                        </a>
                                                        <div class="product-action text-center">
                                                            <a href="#" title="Shoppingb Cart">
                                                                <i class="flaticon-shopping-cart"></i>
                                                            </a>
                                                            <a href="#" title="Quick View">
                                                                <i class="flaticon-eye"></i>
                                                            </a>
                                                            <a href="#" data-toggle="tooltip" data-placement="right" title="Compare">
                                                                <i class="flaticon-compare"></i>
                                                            </a>
                                                        </div>
                                                        <div class="sale-tag">
                                                            <span class="new">new</span>
                                                            <span class="sale">sale</span>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <div class="pro-cat mb-10">
                                                            <a href="shop.html">decor, </a>
                                                            <a href="shop.html">furniture</a>
                                                        </div>
                                                        <h4>
                                                            <a href="product-details.html">${item.name}</a>
                                                        </h4>
                                                        <div class="product-meta">
                                                            <div class="pro-price">
                                                                <span>$${item.sale} USD</span>
                                                                <span class="old-price">$${item.price} USD</span>
                                                            </div>
                                                        </div>
                                                        <div class="product-wishlist">
                                                            <a href="#"><i class="far fa-heart" title="Wishlist"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </c:forEach>
                                        	<!-- Sản Phẩm Đơn -->
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="contact1" role="tabpanel" aria-labelledby="contact-tab1">
                                        <div class="product-slider owl-carousel">
                                        	<!-- Sản Phẩm Đơn -->
                                            <c:forEach var="item" items="${page.content}">
                                            <div class="pro-item">
                                                <div class="product-wrapper mb-50">
                                                    <div class="product-img mb-25">
                                                        <a href="product-details.html">
                                                            <img src="/assets/img/product/${item.image1}" alt="">
                                                            <img class="secondary-img" src="/assets/img/product/${item.image2}" alt="">
                                                        </a>
                                                        <div class="product-action text-center">
                                                            <a href="#" title="Shoppingb Cart">
                                                                <i class="flaticon-shopping-cart"></i>
                                                            </a>
                                                            <a href="#" title="Quick View">
                                                                <i class="flaticon-eye"></i>
                                                            </a>
                                                            <a href="#" data-toggle="tooltip" data-placement="right" title="Compare">
                                                                <i class="flaticon-compare"></i>
                                                            </a>
                                                        </div>
                                                        <div class="sale-tag">
                                                            <span class="new">new</span>
                                                            <span class="sale">sale</span>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <div class="pro-cat mb-10">
                                                            <a href="shop.html">decor, </a>
                                                            <a href="shop.html">furniture</a>
                                                        </div>
                                                        <h4>
                                                            <a href="product-details.html">${item.name}</a>
                                                        </h4>
                                                        <div class="product-meta">
                                                            <div class="pro-price">
                                                                <span>$${item.sale} USD</span>
                                                                <span class="old-price">$${item.price} USD</span>
                                                            </div>
                                                        </div>
                                                        <div class="product-wishlist">
                                                            <a href="#"><i class="far fa-heart" title="Wishlist"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </c:forEach>
                                        	<!-- Sản Phẩm Đơn -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- product-area end -->

            <!-- features-area start -->
            <section class="features-area box-90">
                <div class="container-fluid">
                    <div class="theme-soft-bg fix pt-100 pb-50">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="area-title text-center mb-50">
                                    <h2>Special Features</h2>
                                    <p>Get special services from our shop.</p>
                                </div>
                            </div>
                        </div>
                        <div class="features">
                            <div class="single-seatures width-20 mb-50 text-center">
                                <i class="flaticon-shopping-cart-1"></i>
                                <span>Free Delivery</span>
                                <h3>Free Delivery</h3>
                            </div>
                            <div class="single-seatures width-20 mb-50 text-center">
                                <i class="flaticon-good"></i>
                                <span>100% Customer</span>
                                <h3>Feedbacks</h3>
                            </div>
                            <div class="single-seatures width-20 mb-50 text-center">
                                <i class="flaticon-return-1"></i>
                                <span>10 Days</span>
                                <h3>For Free Return</h3>
                            </div>
                            <div class="single-seatures width-20 mb-50 text-center">
                                <i class="flaticon-return"></i>
                                <span>Payment</span>
                                <h3>Secure System</h3>
                            </div>
                            <div class="single-seatures width-20 mb-50 text-center">
                                <i class="flaticon-customer-service"></i>
                                <span>24/7</span>
                                <h3>Online Supports</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- features-area end -->

            <!-- latest-blog-area start -->
            <section class="latest-blog-area pt-95 pb-60 box-90">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="area-title text-center mb-50">
                                <h2>News Feeds</h2>
                                <p>Check it out every updates</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="latest-news mb-40">
                                <div class="news__thumb mb-25">
                                    <img src="/assets/img/blog/latest/lb4.jpg" alt="">
                                </div>
                                <div class="news__caption white-bg">
                                    <div class="news-meta mb-15">
                                        <span><i class="far fa-calendar-check"></i> Sep 15, 2018 </span>
                                        <span><a href="#"><i class="far fa-user"></i> Diboli</a></span>
                                        <span><a href="#"><i class="far fa-comments"></i> 23 Comments</a></span>
                                    </div>
                                    <h2><a href="blog-details.html">Inspiration Is Under Construction Business &
                                    Fashion 2019. In this situation we do that..</a></h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo..</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="latest-news mb-40">
                                <div class="news__thumb mb-25">
                                    <img src="/assets/img/blog/latest/lb5.jpg" alt="">
                                </div>
                                <div class="news__caption white-bg">
                                    <div class="news-meta mb-15">
                                        <span><i class="far fa-calendar-check"></i> Sep 15, 2018 </span>
                                        <span><a href="#"><i class="far fa-user"></i> Joly</a></span>
                                        <span><a href="#"><i class="far fa-comments"></i> 23 Comments</a></span>
                                    </div>
                                    <h2><a href="blog-details.html">Inspiration Is Under Construction Business &
                                    Fashion 2019. In this situation we do that..</a></h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo..</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="latest-news mb-40">
                                <div class="news__thumb mb-25">
                                    <img src="/assets/img/blog/latest/lb6.jpg" alt="">
                                </div>
                                <div class="news__caption white-bg">
                                    <div class="news-meta mb-15">
                                        <span><i class="far fa-calendar-check"></i> Sep 15, 2018 </span>
                                        <span><a href="#"><i class="far fa-user"></i> Joly</a></span>
                                        <span><a href="#"><i class="far fa-comments"></i> 23 Comments</a></span>
                                    </div>
                                    <h2><a href="blog-details.html">Inspiration Is Under Construction Business &
                                    Fashion 2019. In this situation we do that..</a></h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- latest-blog-area end -->

            <!-- subscribe-area start -->
            <section class="subscribe-area box-105">
                <div class="subscribe-inner black-bg pt-70 pb-20">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xl-5">
                                <div class="subscribe d-flex fix">
                                    <div class="subscribe-icon">
                                        <img src="/assets/img/icon/subscribe.png" alt="">
                                    </div>
                                    <div class="area-title white-color mb-50">
                                        <h2>Newsletter</h2>
                                        <p>Subsribe here for get every single updates</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-7">
                                <div class="subscribe fix">
                                    <div class="subscribe-form mb-50">
                                        <form action="#">
                                            <input type="text" placeholder="Enter your email address">
                                            <button class="btn theme-btn" type="submit">subscribe now</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- subscribe-area end -->
        </main>

        <!-- footer -->
        <jsp:include page="../../title_slide/footer.jsp"></jsp:include>
        <!-- footer end -->

    <!-- Fullscreen search -->
    <div class="search-wrap">
        <div class="search-inner">
            <i class="fas fa-times search-close" id="search-close"></i>
            <div class="search-cell">
                <form method="get">
                    <div class="search-field-holder">
                        <input type="search" class="main-search-input" placeholder="Search Entire Store...">
                    </div>
                </form>
            </div>
        </div>
    </div> <!-- end fullscreen search -->





		<!-- JS here -->
        <script src="/assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="/assets/js/popper.min.js"></script>
        <script src="/assets/js/bootstrap.min.js"></script>
        <script src="/assets/js/owl.carousel.min.js"></script>
        <script src="/assets/js/isotope.pkgd.min.js"></script>
        <script src="/assets/js/one-page-nav-min.js"></script>
        <script src="/assets/js/slick.min.js"></script>
        <script src="/assets/js/jquery.meanmenu.min.js"></script>
        <script src="/assets/js/ajax-form.js"></script>
        <script src="/assets/js/wow.min.js"></script>
        <script src="/assets/js/jquery.scrollUp.min.js"></script>
        <script src="/assets/js/jquery.final-countdown.min.js"></script>
        <script src="/assets/js/imagesloaded.pkgd.min.js"></script>
        <script src="/assets/js/jquery.magnific-popup.min.js"></script>
        <script src="/assets/js/plugins.js"></script>
        <script src="/assets/js/main.js"></script>
    </body>

<!-- Mirrored from themepure.net/template/vue/vue/index-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 23 Jun 2021 12:29:01 GMT -->
</html>
