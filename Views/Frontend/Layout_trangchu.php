<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from onshop.asia/demo-theme/fashion_m_boutique_2/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 10 Apr 2020 07:17:13 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content=" Online Shop">
    <meta name="author" content="Gobiz">


    <title>Trang chủ</title>

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

<header class="onshop-header">
    <div class="onshop-header__banner ">
        <p class="title">Khuyến mại đặt biệt nhân dịp tết Nguyên đán - <span class="onshop-text--uppercase">Sale off 50% toàn bộ cửa hàng</span>
        </p>
    </div>
    <div class="onshop-header__menu">
        <div class="onshop-header__logo">
            <a href="index.php?controller=Home"><img src="Assets/Frontend/images/svg2/logo.jpg" alt="Logo"></a>
        </div>
        <div class="d-flex flex-row w-100 h-100 onshop-flex-1">
            <div class="d-flex flex-row w-100 h-100">
                <div class="onshop-search-global">
                    <div class="block-search">
                        <i class="ti-search"></i>
                        <input type="text" placeholder="Tìm kiếm" class="onshop-input onshop-input--search-global">
                    </div>
                    <div class="onshop-search-result">
                        <ul class="onshop-search-list-suggest">
                            <li>
                                <a href="#">Vest white on white</a>
                            </li>
                            <li>
                                <a href="#">Vest 2018</a>
                            </li>
                            <li>
                                <a href="#">Vest 2019</a>
                            </li>
                            <li>
                                <a href="#">Vest thu đông </a>
                            </li>
                        </ul>
                        <div class="view-result">
                            <button class="onshop-btn onshop-btn--link onshop-text--green">Xem kết quả</button>
                        </div>
                    </div>
                </div>
                <div class="onshop-list-action">
                    <ul class="list-action login-register">
                        <li class="action-item onshop-hidden">
                            <a href="index.php?area=Backend&controller=Login" class="action-link">Đăng nhập </a>
                        </li>
                        <li class="action-item onshop-hidden">
                            <a href="register.html" class="action-link">Đăng ký </a>
                        </li>
                        <li class="action-item">
                            <a href="index.php?area=Backend&controller=Login" class="action-link " id="user-icon"><i class="ti-user"></i> </a>
                        </li>
                    </ul>
                    <ul class="list-action-only-icon">
                        <li class="action-item">
                            <a href="index.php?controller=Cart" class="action-link">
                                <i class="ti-shopping-cart"></i>
                                <?php
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
                        </ul>
                        <ul class="info-user onshop-hidden">
                            <li><a href="account.html">Tài khoản của tôi</a></li>
                            <li><a href="index-2.html">Đăng xuất </a></li>
                        </ul>
                    </div>
                    <!--End-->
                    <ul class="menu">
                        <li class="menu-item">
                            <a href="index.php?controller=Home" class="menu-link">Trang chủ</a>
                        </li>
                        <li class="menu-item">
                            <a href="#" class="menu-link ">Sản phẩm
                                <i class="ti-angle-down icon-toogle"></i>
                            </a>
                            <ul class="sub-menu">
                                <li class="sub-menu-child-item">
                                            <?php
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
<section class="onshop-top-content ">
    <ul class="onshop-menu--sub onshop-hidden-md">
           
                <li class="onshop-menu--sub__item"><a class="onshop-menu--sub__link" href="index.php?controller=ProductCategory&id=1">Sữa
                </a></li>
                <li class="onshop-menu--sub__item"><a class="onshop-menu--sub__link" href="index.php?controller=ProductCategory&id=2">Bỉm
                </a></li>
                <li class="onshop-menu--sub__item"><a class="onshop-menu--sub__link" href="index.php?controller=ProductCategory&id=3">Quần áo cho bé
                </a></li>
                <li class="onshop-menu--sub__item"><a class="onshop-menu--sub__link" href="index.php?controller=ProductCategory&id=4">Quần áo cho mẹ
                </a></li>
    </ul>
    <div class="onshop-block-slideshow">
        <img class="d-block w-100 img-slide-top-content onshop-block-banner-1" src="Assets/Frontend/images/slide1.jpg"
             alt="First slide">
        <img class="d-block w-100 img-slide-top-content onshop-block-banner-2" src="Assets/Frontend/images/slide2.jpg" alt="First slide">
        <img class="d-block w-100 img-slide-top-content onshop-block-banner-3" src="Assets/Frontend/images/slide3.jpg" alt="First slide">
    </div>
    <div class="onshop-menu--sub--mobile ">
        <div class="title">
            <h4>Danh mục sản phẩm</h4>
        </div>
        <ul class="onshop-menu--sub">
            <ul class="onshop-menu--sub onshop-hidden-md">
                <?php
          foreach ($data as $rows):
        ?>
        <li class="onshop-menu--sub__item"><a class="onshop-menu--sub__link" href="index.php?controller=ProductCategory&id=<?php echo $rows->id; ?>"><?php 
            echo $rows->name;
            ?>
                </a></li>
        <?php
        endforeach;
        ?>
        </ul>
    </div>
</section>
<div>
<?php
    echo $this->view;
 ?>
</div>
<section class="onshop-block-best-post">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                <div class="title-section-img">
                    <div class="title-logo">
                        <span class="square-first"></span>
                        <span class="square-primary"></span>
                        <span class="square-second"></span>
                    </div>
                    <h2 class="title">Bài viết nổi bật</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                <article class="onshop-post">
                    <div class="onshop-post-img">
                        <img src="Assets/Frontend/images/anh2.png" alt="">
                    </div>
                    <div class="onshop-post-info">
                        <a href="detail-post.html" class="title" >
                            TRẢI NGHIỆM “HẾT MÌNH” LỄ HỘI FIESTA ĐẦY MÀU SẮC THÔNG QUA BST MÙA HÈ 2019 CỦA PEDRO
                        </a>
                        <div class="author-time">
                            <span class="author">Dương NT</span>
                            <span class="time">15/04/2019</span>
                        </div>
                        <p class="description">Pedro vừa ra mắt các sản phẩm lý tưởng dành cho mùa hè năm nay. BST mới
                            lấy cảm hứng từ lễ hội Fiesta mang đậm sắc màu nhiệt đới.</p>
                        <button type="button" class="onshop-btn onshop-btn--primary onshop-btn--pd-hz-large">Xem bài
                            viết
                        </button>
                    </div>
                </article>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                <article class="onshop-post">
                    <div class="onshop-post-img">
                        <img src="Assets/Frontend/images/anh1.png" alt="">
                    </div>
                    <div class="onshop-post-info">
                        <a href="detail-post.html" class="title">
                            TRẢI NGHIỆM “HẾT MÌNH” LỄ HỘI FIESTA ĐẦY MÀU SẮC THÔNG QUA BST MÙA HÈ 2019 CỦA PEDRO
                        </a>
                        <div class="author-time">
                            <span class="author">Dương NT</span>
                            <span class="time">15/04/2019</span>
                        </div>
                        <p class="description">Pedro vừa ra mắt các sản phẩm lý tưởng dành cho mùa hè năm nay. BST mới
                            lấy cảm hứng từ lễ hội Fiesta mang đậm sắc màu nhiệt đới.</p>
                        <button type="button" class="onshop-btn onshop-btn--primary onshop-btn--pd-hz-large">Xem bài
                            viết
                        </button>
                    </div>
                </article>
            </div>
        </div>
    </div>
</section>
<section class="onshop-block-brand">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                <div class="title-section-img">
                    <div class="title-logo">
                        <span class="square-first"></span>
                        <span class="square-primary"></span>
                        <span class="square-second"></span>
                    </div>
                    <h2 class="title">Thương hiệu </h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                <div class="onshop-slide-brand">
                    <img class="d-block w-100 img-slide-brand" src="Assets/Frontend/images/thuonghieu1.jpg" alt="First slide">
                    <img class="d-block w-100 img-slide-brand" src="Assets/Frontend/images/thuonghieu2.jpg" alt="First slide">
                    <img class="d-block w-100 img-slide-brand" src="Assets/Frontend/images/thuonghieu3.jpg" alt="First slide">
                    <img class="d-block w-100 img-slide-brand" src="Assets/Frontend/images/thuonghieu4.jpg" alt="First slide">
                    <img class="d-block w-100 img-slide-brand" src="Assets/Frontend/images/thuonghieu5.png" alt="First slide">
                    <img class="d-block w-100 img-slide-brand" src="Assets/Frontend/images/thuonghieu6.png" alt="First slide">
                    <img class="d-block w-100 img-slide-brand" src="Assets/Frontend/images/thuonghieu7.jpg" alt="First slide">
                </div>
            </div>
        </div>
    </div>
</section>
<footer class="onshop-footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xl-12">
                <div class="onshop-footer__content">
                    <div class="onshop-footer__content__top">
                        <img class="onshop-footer__logo" style="width: 200px;" src="Assets/Frontend/images/svg2/logo.jpg" alt="">
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
<!-- Bootstrap core JavaScript -->

<script src="Assets/Frontend/vendor/jquery/jquery.min.js"></script>
<script src="Assets/Frontend/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="Assets/Frontend/vendor/slick/slick.min.js"></script>
<script src="Assets/Frontend/vendor/manifying-image-zoom/js/jquery.magnify.js"></script>
<script src="Assets/Frontend/vendor/manifying-image-zoom/js/jquery.magnify-mobile.js"></script>
<script src="Assets/Frontend/js/main.min.js"></script>

</body>


<!-- Mirrored from onshop.asia/demo-theme/fashion_m_boutique_2/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 10 Apr 2020 07:17:26 GMT -->
</html>