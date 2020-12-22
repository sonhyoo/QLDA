<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from onshop.asia/demo-theme/fashion_m_boutique_2/product-detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 10 Apr 2020 07:17:35 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content=" Online Shop">
    <meta name="author" content="Gobiz">


    <title>Chi tiết sản phẩm</title>

    <!-- Bootstrap core CSS -->
    <link href="Assets/Frontend/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="Assets/Frontend/vendor/font-awesome/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900&amp;display=swap"
          rel="stylesheet">
    <!-- Slick core CSS -->
    <link rel="stylesheet" href="Assets/Frontend/webfonts/themify-icons/demo.css">
    <link rel="stylesheet" href="Assets/Frontend/webfonts/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="Assets/Frontend/webfonts/themify-icons/ie7/ie7.css">
    <link rel="stylesheet" href="Assets/Frontend/vendor/slick/slick.css">
    <link rel="stylesheet" href="Assets/Frontend/vendor/slick/slick-theme.css">
    <link rel="stylesheet" href="Assets/Frontend/vendor/manifying-image-zoom/css/magnify.css">
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="Assets/Frontend/css/styles.min.css">
    <link rel="stylesheet" href="Assets/Frontend/css/override.css">

</head>
<body>
<!--Begin header-->

<header class="onshop-header onshop-hidden-md">
    <div class="onshop-header__banner">
        <p class="title">Khuyến mại đặt biệt nhân dịp tết Nguyên đán - <span class="onshop-text--uppercase">Sale off 50% toàn bộ cửa hàng</span>
        </p>
    </div>
    <div class="onshop-header__menu product-detail">
        <div class="onshop-header__logo">
            <a href="index.php?controller=Home"><img src="Assets/Frontend/images/svg2/logo.jpg" alt="Logo"></a>
        </div>
        <div class="d-flex flex-row w-100 h-100 onshop-flex-1">
            <div class="d-flex flex-row w-100 h-100">
                <div class="onshop-search-global">
                    <div class="block-search ">
                        <i class="ti-search"></i>
                        <input type="text" placeholder="Tìm kiếm" class="onshop-input onshop-input--search-global">
                    </div>
                </div>
               
                </div>
                <div class="onshop-list-action">
                    <ul class="list-action login-register ">
                        <li class="action-item ">
                            <a href="index.php?area=Backend&controller=Login" class="action-link">Đăng nhập </a>
                        </li>
                        <li class="action-item ">
                            <a href="register.html" class="action-link">Đăng ký </a>
                        </li>
                        <li class="action-item onshop-hidden">
                            <a href="#" class="action-link " id="user-icon"><i class="ti-user"></i> </a>
                            <ul class="list-action-sub">
                                <li>
                                    <a href="account.html">Tài khoản của tôi </a>
                                </li>
                                <li>
                                    <a href="index-2.html" class="onshop-text--gray">Đăng xuất </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="list-action-only-icon">
                        <li class="action-item">
                            <a href="index.php?controller=Cart" class="action-link">
                                <i class="ti-shopping-cart"></i><?php
                              //lay so luon san pham
                            $cartNumber = 0;
                            if(isset($_SESSION["cart"]) == true) {
                                foreach ($_SESSION["cart"] as $product) {
                                     $cartNumber = $cartNumber + $product["number"];
                                }
                            }

                            ?>
                                <span class="number-item-shop"> <?php echo $cartNumber; ?> </span>
                            
                            </a>
                        </li>
                        <li class="action-item onshop-hidden-md">
                            <a href="#" class="action-link">
                                <i class=" ti-heart"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="onshop-menu">
                <div class="onshop-menu-text">
                    <span class="icon-menu"></span>
                    <span class="menu-text">Menu</span>
                </div>

                <div class="list-menu">
                    <!--Sử dụng cho mobile-->
                    <div class="list-action-user-mobile">
                        <ul class="login-register ">
                            <li><a href="register.html">Đăng ký</a></li>
                            <li><a href="index.php?area=Backend&controller=Login">Đăng nhập </a></li>
                    </div>
                    <!--End-->
                    <ul class="menu">
                        <li class="menu-item">
                            <a href="index-2.html" class="menu-link">Trang chủ</a>
                        </li>
                        <li class="menu-item">
                            <a href="#" class="menu-link ">Sản phẩm
                                <i class="ti-angle-down icon-toogle"></i>
                            </a>
                            <ul class="sub-menu">

                                <li class="sub-menu-item">
                                <?php
                      //load mvc o day
                                    include "Controllers/Frontend/CategoryController.php";
                                    $obj = new categoryController();
                                    $obj->index(); ?>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="introduce.html" class="menu-link">Giới thiệu</a>
                        </li>
                        <li class="menu-item">
                            <a href="blog.html" class="menu-link">Block</a>
                        </li>
                        <li class="menu-item">
                            <a href="contact.html" class="menu-link">Liên hệ</a>
                        </li>
                        <li class="menu-item">
                            <a href="termsofservice.html" class="menu-link">Điều khoản dịch vụ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
    <?php echo $this->view;?>
<footer class="onshop-footer onshop-hidden-md">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xl-12">
                <div class="onshop-footer__content">
                    <div class="onshop-footer__content__top">
                        <img class="onshop-footer__logo" src="Assets/Frontend/images/svg2/logo.jpg" alt="">
                        <form class="register-receive-message">
                            <input type="text" class="onshop-input onshop-input--receive-message"
                                   placeholder="Nhập email của bạn để đăng ký nhận tin">
                            <button type="button" class="onshop-btn onshop-btn--receive-message">Đăng ký</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="offset-1 col-10 offset-lg-3 col-lg-3 col-xl-3 offset-1">
                <ul class="list-info-footer">
                    <li class="list-info-footer--item">
                        <a href="#" class="list-info-footer--link">
                            <i class="ti-location-pin icon-info-footer"></i>
                            120 Trần Duy Hưng, Phường Trung Hòa, Quận Cầu Giấy, Hà
                            Nội, Việt Nam
                        </a>
                    </li>
                    <li class="list-info-footer--item">
                        <a href="#" class="list-info-footer--link">
                            <i class="ti-mobile icon-info-footer"></i>
                            (024) 7309 1168
                        </a>
                    </li>
                    <li class="list-info-footer--item">
                        <a href="#" class="list-info-footer--link">
                            <i class="ti-email icon-info-footer"></i>
                            cskh@m-studio.com.vn</a>
                    </li>
                </ul>
            </div>
            <div class="offset-1 col-10 col-lg-2 col-xl-2 offset-1">
                <ul class="list-info-footer">
                    <li class="list-info-footer--item active">
                        <a href="#" class="list-info-footer--link">Giới thiệu
                        </a>
                    </li>
                    <li class="list-info-footer--item">
                        <a href="#" class="list-info-footer--link">
                            Liên hệ

                        </a>
                    </li>
                    <li class="list-info-footer--item">
                        <a href="#" class="list-info-footer--link">
                            Chính sách đổi trả
                        </a>
                    </li>
                    <li class="list-info-footer--item">
                        <a href="#" class="list-info-footer--link">
                            Câu hỏi thường gặp
                        </a>
                    </li>
                </ul>
            </div>
            <div class="offset-1 col-10 offset-lg-0 offset-xl-0 col-lg-3 col-xl-3 ">
                <ul class="list-info-footer">
                    <li class="list-info-footer--item">
                        <a href="#" class="list-info-footer--link">Tài khoản của tôi
                        </a>
                    </li>
                    <li class="list-info-footer--item">
                        <a href="#" class="list-info-footer--link">
                            Giỏ hàng

                        </a>
                    </li>
                    <li class="list-info-footer--item">
                        <a href="#" class="list-info-footer--link">
                            Sản phẩm yêu thích
                        </a>
                    </li>
                    <li class="list-info-footer--item">
                        <a href="#" class="list-info-footer--link">
                            Lịch sử mua hàng
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="onshop-footer__bottom">
        <ul class="onshop-block-social">
            <li class="social-item">
                <a href="#" class="onshop-btn--social "><i class="ti-facebook"></i></a>
            </li>
            <li class="social-item">
                <a href="#" class="onshop-btn--social "><i class="ti-instagram"></i></a>
            </li>
            <li class="social-item">
                <a href="#" class="onshop-btn--social "><i class="ti-youtube"></i></a>
            </li>
        </ul>
        <span class="license">© Bản quyền thuộc về Onshop</span>
    </div>
</footer>
<div class="onshop-block-product-detail-action-mobile ">
    <input type="text" class="onshop-input onshop-input--default" value="1">
    <button class="onshop-btn onshop-btn--primary mr-2">Thêm vào giỏ</button>
    <button class="onshop-btn onshop-btn--primary onshop-text--uppercase">Mua ngay </button>
</div>
<!-- Bootstrap core JavaScript -->

<script src="Assets/Frontend/vendor/jquery/jquery.min.js"></script>
<script src="Assets/Frontend/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="Assets/Frontend/vendor/slick/slick.min.js"></script>
<script src="Assets/Frontend/vendor/manifying-image-zoom/js/jquery.magnify.js"></script>
<script src="Assets/Frontend/vendor/manifying-image-zoom/js/jquery.magnify-mobile.js"></script>

<script src="Assets/Frontend/js/main.min.js"></script>

</body>


<!-- Mirrored from onshop.asia/demo-theme/fashion_m_boutique_2/product-detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 10 Apr 2020 07:17:36 GMT -->
</html>