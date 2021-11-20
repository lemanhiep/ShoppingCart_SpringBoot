<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<!DOCTYPE html>
<html>
    
<!-- Mirrored from themepure.net/template/vue/vue/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 23 Jun 2021 12:31:34 GMT -->
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
                            <h1>Shoping Cart</h1>
                            <ul class="breadcrumb-menu">
                                <li><a href="index.html">home</a></li>
                                <li><span>Cart</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area-end -->

        <!-- Cart Area Strat-->
        <section class="cart-area pt-100 pb-100">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                            <div class="table-content table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">Images</th>
                                            <th class="cart-product-name">Product</th>
                                            <th class="product-price">Unit Price</th>
                                            <th class="product-quantity">Quantity</th>
                                            <th class="product-subtotal">Total</th>
                                            <th class="product-remove">Remove</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="item" items="${cart.items}">
										<form action="/cart/update/${item.id}" method="post">
											<input type="hidden" name="id" value="${item.id}">
                                        <tr>
                                            <td class="product-thumbnail"><a href="#"><img src="/assets/img/product/${item.image1}"
                                                        alt=""></a></td>
                                            <td class="product-name"><a href="#">${item.name}</a></td>
                                            <td class="product-price"><span class="amount">$${item.sale}</span></td>
                                            <td class="product-quantity">
                                                <div class="cart-plus-minus"><input name="qty" type="text" onblur="this.form.submit()" value="${item.qty}" /></div>
                                            </td>
                                            <td class="product-subtotal"><span class="amount">$${item.sale * item.qty}</span></td>
                                            <td class="product-remove"><a href="/cart/remove/${item.id}"><i class="fa fa-times"></i></a></td>
                                        </tr>
                                        </form>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="coupon-all" style="float: left;">
                                        <div class="coupon2">
                                            <a href="/product/shop"><input class="btn theme-btn" name="update_cart" value="Continue Shopping" type="submit"></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5 ml-auto">
                                    <div class="cart-page-total">
                                        <h2>Cart totals</h2>
                                        <ul class="mb-20">
                                            <li>Subtotal <span>$${getamount}</span></li>
                                            <li>Total <span>$${getsale}</span></li>
                                        </ul>
                                        <a class="btn theme-btn" href="/shopping-cart/checkout">Proceed to checkout</a>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Cart Area End-->


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

<!-- Mirrored from themepure.net/template/vue/vue/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 23 Jun 2021 12:31:34 GMT -->
</html>
