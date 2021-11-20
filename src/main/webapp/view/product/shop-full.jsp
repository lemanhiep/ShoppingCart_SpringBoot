<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
    
<!-- Mirrored from themepure.net/template/vue/vue/shop-full.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 23 Jun 2021 12:31:33 GMT -->
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
        <link rel="stylesheet" href="/assets/css/jquery-ui.css">
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



        <!-- header start -->
        <jsp:include page="../../title_slide/header.jsp"></jsp:include>
        <!-- header end -->


        <main>

        <!-- breadcrumb-area-start -->
        <section class="breadcrumb-area" data-background="/assets/img/bg/page-title.png">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb-text text-center">
                            <h1>Our Shop</h1>
                            <ul class="breadcrumb-menu">
                                <li><a href="index.html">home</a></li>
                                <li><span>shop</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area-end -->

        <!-- shop-area start -->
        <section class="shop-area pt-100 pb-100">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <!-- tab filter -->
                        <div class="row mb-10">
                            <div class="col-xl-5 col-lg-6 col-md-6">
                                <div class="product-showing mb-40">
                                    <p>SHOWING ${page.number+1} OF ${page.totalPages} RESULTS</p>
                                </div>
                            </div>
                            <div class="col-xl-7 col-lg-6 col-md-6">
                                <div class="shop-tab f-right">
                                    <ul class="nav text-center" id="myTab" role="tablist">
                                    	<li class="nav-item">
                                            <a class="nav-link" id="home-tab" data-toggle="tab" href="#desc" role="tab" aria-controls="desc"
                                                aria-selected="true"><i class="fas fa-sort-amount-up"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#asc" role="tab" aria-controls="asc"
                                                aria-selected="false"><i class="fas fa-sort-amount-down"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home"
                                                aria-selected="true"><i class="fas fa-list-ul"></i> </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
                                                aria-selected="false"><i class="fas fa-th-large"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- tab content -->
                        <div class="tab-content" id="myTabContent">
                        	<div class="tab-pane fade" id="desc" role="tabpanel" aria-labelledby="desc-tab">
                                <div class="row">
                                	<!-- Show 1 Sản Phẩm -->
                                    <c:forEach var="item" items="${saleASC.content}">
                                    <div class="col-lg-4 col-md-6">
                                        <div class="product-wrapper mb-50">
                                            <div class="product-img mb-25">
                                                <a href="product-details.html">
                                                    <img src="/assets/img/product/${item.image1}" alt="">
                                                    <img class="secondary-img" src="/assets/img/product/${item.image2}" alt="">
                                                </a>
                                                <div class="product-action text-center">
                                                    <a href="/cart/add/${item.id}" title="Shoppingb Cart">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                    <a href="#" title="Quick View">
                                                        <i class="flaticon-eye"></i>
                                                    </a>
                                                    <a href="#" data-toggle="tooltip" data-placement="right" title="Compare">
                                                        <i class="flaticon-compare"></i>
                                                    </a>
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
                                	<!-- Show 1 Sản Phẩm -->
                                    
                                </div>
                            </div>
                            <div class="tab-pane fade" id="asc" role="tabpanel" aria-labelledby="asc-tab">
                                <div class="row">
                                	<!-- Show 1 Sản Phẩm -->
                                    <c:forEach var="item" items="${saleDESC.content}">
                                    <div class="col-lg-4 col-md-6">
                                        <div class="product-wrapper mb-50">
                                            <div class="product-img mb-25">
                                                <a href="product-details.html">
                                                    <img src="/assets/img/product/${item.image1}" alt="">
                                                    <img class="secondary-img" src="/assets/img/product/${item.image2}" alt="">
                                                </a>
                                                <div class="product-action text-center">
                                                    <a href="/cart/add/${item.id}" title="Shoppingb Cart">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                    <a href="#" title="Quick View">
                                                        <i class="flaticon-eye"></i>
                                                    </a>
                                                    <a href="#" data-toggle="tooltip" data-placement="right" title="Compare">
                                                        <i class="flaticon-compare"></i>
                                                    </a>
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
                                	<!-- Show 1 Sản Phẩm -->
                                    
                                </div>
                            </div>
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="row">
                                	<!-- Show 1 Sản Phẩm -->
                                    <c:forEach var="item" items="${page.content}">
                                    <div class="col-lg-4 col-md-6">
                                        <div class="product-wrapper mb-50">
                                            <div class="product-img mb-25">
                                                <a href="product-details.html">
                                                    <img src="/assets/img/product/${item.image1}" alt="">
                                                    <img class="secondary-img" src="/assets/img/product/${item.image2}" alt="">
                                                </a>
                                                <div class="product-action text-center">
                                                    <a href="/cart/add/${item.id}" title="Shoppingb Cart">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                    <a href="#" title="Quick View">
                                                        <i class="flaticon-eye"></i>
                                                    </a>
                                                    <a href="#" data-toggle="tooltip" data-placement="right" title="Compare">
                                                        <i class="flaticon-compare"></i>
                                                    </a>
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
                                	<!-- Show 1 Sản Phẩm -->
                                    
                                </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <div class="row">
                                <c:forEach var="item" items="${page.content}">
                                    <div class="col-xl-3">
                                        <div class="product-wrapper mb-30">
                                            <div class="product-img">
                                                <a href="product-details.html">
                                                    <img src="/assets/img/product/${item.image1}" style="width: 100%" alt="">
                                                    <img class="secondary-img" src="/assets/img/product/${item.image2}" style="width: 100%" alt="">
                                                </a>
                                                <div class="sale-tag">
                                                    <span class="new">new</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-9">
                                        <div class="product-content pro-list-content pr-0 mb-50">
                                            <div class="pro-cat mb-10">
                                                <a href="shop.html">decor, </a>
                                                <a href="shop.html">furniture</a>
                                            </div>
                                            <h4>
                                                <a href="product-details.html">${item.name}</a>
                                            </h4>
                                            <div class="product-meta mb-10">
                                                <div class="pro-price">
                                                    <span>$${item.sale} USD</span>
                                                    <span class="old-price">$${item.price} USD</span>
                                                </div>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                                            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                            <div class="product-action">
                                                <a href="/cart/add/${item.id}" title="Shopping Cart">
                                                    <i class="flaticon-shopping-cart"></i>
                                                </a>
                                                <a href="#" title="Quick View">
                                                    <i class="flaticon-eye"></i>
                                                </a>
                                                <a href="#" title="Wishlist"><i class="flaticon-like"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="basic-pagination basic-pagination-2 text-center mt-20">
                            <ul>
                                <li><a href="/product/shop?p=0"><i class="fas fa-angle-left"></i></a></li>
                                <li><a href="/product/shop?p=${page.number-1}"><i class="fas fa-angle-double-left"></i></a></li>
                                <li><a href="/product/shop?p=${page.number+1}"><i class="fas fa-angle-double-right"></i></a></li>
                                <li><a href="/product/shop?p=${page.totalPages-1}"><i class="fas fa-angle-right"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- shop-area end -->


        </main>

        <!-- footer start -->
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
        <script src="/assets/js/jquery-ui.js"></script>
        <script src="/assets/js/popper.min.js"></script>
        <script src="/assets/js/bootstrap.min.js"></script>
        <script src="/assets/js/owl.carousel.min.js"></script>
        <script src="/assets/js/isotope.pkgd.min.js"></script>
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

<!-- Mirrored from themepure.net/template/vue/vue/shop-full.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 23 Jun 2021 12:31:33 GMT -->
</html>
