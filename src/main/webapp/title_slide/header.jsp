
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!-- header start -->
        <header class="transparent-header">
            <div class="header-area box-90">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-xl-2 col-lg-6 col-md-6 col-7 col-sm-3 d-flex align-items-center">
                            <div class="basic-bar cat-toggle">
                                <span class="bar1"></span>
                                <span class="bar2"></span>
                                <span class="bar3"></span>
                            </div>
                            <div class="logo">
                                <a href="index.html"><img src="/assets/img/logo/logo.png" alt=""></a>
                            </div>
                            <div class="category-menu">
                                <h4>Category</h4>
                                <ul>
                                    <li><a href="shop.html"><i class="flaticon-shopping-cart-1"></i> Table lamp</a></li>
                                    <li><a href="shop.html"><i class="flaticon-shopping-cart-1"></i> Furniture</a></li>
                                    <li><a href="shop.html"><i class="flaticon-shopping-cart-1"></i> Chair</a></li>
                                    <li><a href="shop.html"><i class="flaticon-shopping-cart-1"></i> Men</a></li>
                                    <li><a href="shop.html"><i class="flaticon-shopping-cart-1"></i> Women</a></li>
                                    <li><a href="shop.html"><i class="flaticon-shopping-cart-1"></i> Cloth</a></li>
                                    <li><a href="shop.html"><i class="flaticon-shopping-cart-1"></i> Trend</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-6 col-md-8 col-8 d-none d-xl-block">
                            <div class="main-menu">
                                <nav id="mobile-menu">
                                    <ul>
                                        <li>
                                            <a href="/home/index">Home</a>
                                        </li>
                                        <li class="mega-menu">
                                            <a href="/product/shop">Shop</a>
                                        </li>
                                        <li>
                                            <a href="#">Products </a>
                                        </li>
                                        <li>
                                            <a href="blog.html">Blog</a>
                                        </li>
                                        <li>
                                            <a href="#">Pages</a>
                                        </li>
                                        <li>
                                            <a href="contact.html">Contact</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6 col-5 col-sm-9 pl-0">
                            <div class="header-right f-right">
                                <ul>
                                    <li class="search-btn">
                                	<form action="/product/shop" method="post" class="shop-search1">
	                                    <input name="keywords" value="${keywords}" type="text" placeholder="Your keyword....">
	                                    <button><i class="fa fa-search"></i></button>
                                    </form>
                                    </li>
                                    <li class="login-btn"><a href="/index/login"><i class="far fa-user"></i></a></li>
                                    <li class="d-shop-cart"><a href="#"><i class="flaticon-shopping-cart"></i> <span class="cart-count">${getcount}</span></a>
                                        <ul class="minicart">
                                            <c:forEach var="item" items="${cart.items}">
                                            <li>
                                                <div class="cart-img">
                                                    <a href="product-details.html">
                                                        <img src="/assets/img/product/${item.image1}" alt="" />
                                                    </a>
                                                </div>
                                                <div class="cart-content">
                                                    <h3>
                                                        <a href="product-details.html">${item.name}</a>
                                                    </h3>
                                                    <div class="cart-price">
                                                        <span class="new">$${item.sale}</span>
                                                        <span>
                                                            <del>$${item.price}</del>
                                                        </span>
                                                    </div>
                                                    <br>
                                                    <div class="cart-price">
                                                        <span class="new">
                                                            Quantity: ${item.qty}
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="del-icon">
                                                    <a href="/cart/remove/${item.id}">
                                                        <i class="far fa-trash-alt"></i>
                                                    </a>
                                                </div>
                                            </li>
                                            </c:forEach>
                                            <li>
                                                <div class="total-price">
                                                    <span class="f-left">Total:</span>
                                                    <span class="f-right">$${getsale}</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkout-link">
                                                    <a href="/cart/view">Shopping Cart</a>
                                                    <a class="red-color" href="/shopping-cart/checkout">Checkout</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-12 d-xl-none">
                            <div class="mobile-menu"></div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- header end -->