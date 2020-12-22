<?php
$this->fileLayout="Views/Frontend/Layout_trangtrong.php";
?>

<section class="onshop-block-detail-product">
    <div class="onshop-block-detail-product--mobile-top">
        <img class="img-product-mobile" src="Assets/Frontend/images/<?php echo $record->img;?>" alt="">
        <img class="img-product-mobile" src="Assets/Frontend/images/<?php echo $record->img;?>" alt="">
        <img class="img-product-mobile" src="Assets/Frontend/images/<?php echo $record->img;?>" alt="">
    </div>
    <span class="number-image-product-detail">2/7</span>
    <div class="onshop-action-top-detail-product ">
        <button class="onshop-btn onshop-btn--back-product-detail-mobile"><i class="ti-arrow-left"></i></button>
        <h1 class="title"><?php echo $record->name;  ?></h1>
        <button class="onshop-btn onshop-btn--cart-product-detail-mobile"><i class="ti-shopping-cart"></i><span
                class="number-item-shop">3</span></button>
    </div>
    <div class="container">
        <div class="row ">
            <div class="col-12 col-lg-12 col-xl-12 onshop-hidden-md">
                <ul class="onshop-breadcrumb">
                    <li class="onshop-breadcrumb__item">
                        <a href="index.php" class="onshop-breadcrumb__link">Trang chủ</a>
                    </li>
                    <li class="onshop-breadcrumb__item">
                        <a href="sort-product.html" class="onshop-breadcrumb__link">Sản phẩm</a>
                    </li>
                    <li class="onshop-breadcrumb__item">
                        <a href="#" class="onshop-breadcrumb__link active"><?php echo $record->name;?></a>
                    </li>
                </ul>
            </div>
            <div class="col-12 col-lg-6 col-xl-6 onshop-hidden-md">
                <div class="onshop-product--image-detail ">
                    <img src="Assets/Frontend/images/<?php echo $record->img;?>" alt=""
                         class="onshop-magnify-image onshop-product--image-detail--zoom"
                         data-magnify-src="Assets/Frontend/images/<?php echo $record->img;?>">
                </div>
                <div class="onshop-product--desc-detail ">
                    <h3 class="title">Mô tả chi tiết </h3>
                    <p class="desc">
                        <?php echo $record->content; ?>
                    </p>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-6">
                <div class="onshop-product-detail-info">
                    <h1 class="title onshop-hidden-md">
                        <?php echo $record->name;?>
                        <?php if($record->newproduct=1):?>
                        <span class="onshop-tag onshop-tag--primary ">Mới</span>
                        <?php endif;?>
                        <?php if($record->promotion_product=1):?>
                        <span class="onshop-tag onshop-tag--green ">-10%</span>
                        <?php endif;?>  
                    </h1>
                    <div class="title-mobile">
                        <div class="title-mobile-left">
                            <h1 class="title"><?php echo $record->name;?></h1>
                            <div class="cost-mobile ">
                                <span class="old"><?php echo $record->price; ?>đ</span>
                                <span class="present">
                                    <?php echo number_format($record->price-$record->price*$record->sale/100);?>đ</span>
                            </div>
                        </div>
                        <div class="onshop-tag-product-detail-mobile">
                            <span class="onshop-tag onshop-tag--primary">Mới</span>
                            <span class="onshop-tag onshop-tag--border-green">Còn hàng</span>
                            <span class="onshop-tag onshop-tag--green">-10%</span>
                        </div>

                    </div>
                    <div class="rate">
                        <div class="evaluate">
                        </div>
                    <div class="cost onshop-hidden-md">
                        <span class="old"><?php echo $record->price; ?>đ</span>
                        <span class="present"><?php echo $record->price-$record->price*$record->sale/100;?>đ</span>
                    </div>
                    <div class="sort-desc--mobile">
                        <h3 class="title">mô tả ngắn:</h3>
                        <p class="desc">
                            <?php echo $record->description;  ?>
                        </p>
                    </div>
                    <div class="onshop-product--desc-detail--mobile ">
                        <h3 class="title">Mô tả ngắn: </h3>
                        <p class="desc">
                            <?php echo $record->description;  ?>
                        </p>
                    </div>
                    <div class="list-action onshop-hidden-md">
                        <div class="d-flex flex-row">
                            <button class="onshop-btn onshop-btn--action-icon onshop-btn--primary"><i
                                    class="ti-heart"></i></button>
                            <button class="onshop-btn onshop-btn--action-icon onshop-btn--primary" disabled><i
                                    class="ti-shopping-cart"></i>
                            </button>

                            <a href="index.php?controller=Cart&action=add&id=<?php echo $record->id; ?>" class="onshop-btn onshop-btn--border onshop-btn--pd-hz-xlarge onshop-text--uppercase">Cho vào giỏ hàng</a>
                        </div>
                        <div class="list-action-share">
                            <span>Chia sẻ </span>
                            <a href="#"><i class="ti-facebook"></i></a>
                            <a href="#"><i class="ti-google"></i></a>
                            <a href="#"><i class="ti-twitter"></i></a>
                        </div>
                    </div>
        
</section>