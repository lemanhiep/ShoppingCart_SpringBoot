<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
    
<!DOCTYPE html>
<html>

    
<!-- Mirrored from themepure.net/template/vue/vue/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 23 Jun 2021 12:34:04 GMT -->
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
                            <h1>Login</h1>
                            <ul class="breadcrumb-menu">
                                <li><a href="index.html">home</a></li>
                                <li><span>Login</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area-end -->

        <!-- login Area Strat-->
        <section class="login-area pt-100 pb-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="basic-login">
                            <h3 class="text-center mb-60">Signup From Here</h3>
                            <form:form action="/index/register" modelAttribute="register" method="post">
                                <label for="name">Username <span>**</span></label>
                                <form:errors path="username" cssClass="error"></form:errors>
                                <form:input path="username" name="username" id="name" type="text" placeholder="Enter Username..." />
                                <label for="fullname">Fullname <span>**</span></label>
                                <form:errors path="fullname" cssClass="error"></form:errors>
                                <form:input path="fullname" name="fullname" id="fullname" type="text" placeholder="Enter Fullname..." />
                                <label for="email-id">Email Address <span>**</span></label>
                                <form:errors path="email" cssClass="error"></form:errors>
                                <form:input path="email" name="email" id="email-id" type="text" placeholder="Enter Email address..." />
                                <label for="pass">Password <span>**</span></label>
                                <form:errors path="password" cssClass="error"></form:errors>
                                <form:input path="password" name="password" id="pass" type="password" placeholder="Enter Password..." />
                                <div class="mt-10"></div>
                                <button class="btn theme-btn-2 w-100">Register Now</button>
                                <div class="or-divide"><span>or</span></div>
                                <a href="/index/login" class="btn theme-btn w-100">Login Now</a>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- login Area End-->


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

<!-- Mirrored from themepure.net/template/vue/vue/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 23 Jun 2021 12:34:04 GMT -->
</html>
