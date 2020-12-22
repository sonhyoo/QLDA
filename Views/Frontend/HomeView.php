<?php
$this->fileLayout="Views/Frontend/Layout_trangchu.php";
?>
<section class="onshop-block-best-sales-product">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                <div class="title-section-img">
                    <div class="title-logo">
                        <span class="square-first"></span>
                        <span class="square-primary"></span>
                        <span class="square-second"></span>
                    </div>
                    <h2 class="title">Sản phẩm bán chạy</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
                  $data = $this->productHot();
                ?>
                <?php foreach ($data as $rows): ?>
            <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 onshop-bg-white">
                <article class="onshop-product">
                    <div class="onshop-product-top">
                        <img class="onshop-product-img" src="Assets/Frontend/images/<?php echo $rows->img; ?>" alt="Ảnh sản phẩm 1">
                        <div class="onshop-product-action">
                            <button class="onshop-btn onshop-btn--product-action mb-3">
                                <i class="ti-shopping-cart"></i>
                            </button>
                            <button class="onshop-btn onshop-btn--product-action">
                                <i class="ti-heart"></i>
                            </button>
                        </div>

                        <?php if($rows->promotion_product==1): ?>
                        <span class="onshop-produt-sale">-<?php echo $rows->sale; ?>%</span>
                         <?php endif;?>
                    </div>
                    <div class="onshop-product-content">
                        <a style="margin-left: 45px" href="index.php?controller=ProductDetail&id=<?php echo $rows->id; ?>" class="onshop-product-title">
                            <?php echo $rows->name;?>
                        </a>
                        <div class="onshop-product-cost">
                        <?php if($rows->promotion_product==1):  ?>
                            <p class="old"><?php echo number_format($rows->price);?>₫</p>
                        <?php endif;?>
                            <p class="present"><?php echo number_format($rows->price*(100-$rows->sale)/100); ?></p>
                        </div>
                        <a href="index.php?controller=ProductDetail&id=<?php echo $rows->id; ?>" class="onshop-btn onshop-btn--border onshop-btn--pd-hz-xlarge onshop-text--uppercase">mua hàng</a>
                    </div>
                </article>
            </div>

                <?php endforeach; ?>
            
        </div>
    </div>
</section>
<section class="onshop-block-new-product">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                <div class="title-section-img">
                    <div class="title-logo">
                        <span class="square-first"></span>
                        <span class="square-primary"></span>
                        <span class="square-second"></span>
                    </div>
                    <h2 class="title">Sản phẩm mới </h2>
                </div>
            </div>
        </div>
        <div class="row">

            <?php
                  $data = $this->productNew();
                ?>
                <?php foreach ($data as $rows): ?>
            <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 onshop-bg-white">
                <article class="onshop-product">
                    <div class="onshop-product-top">
                        <img class="onshop-product-img" src="Assets/Frontend/images/<?php echo $rows->img; ?>" alt="">
                        <div class="onshop-product-action">
                            <button class="onshop-btn onshop-btn--product-action mb-3">
                                <i class="ti-shopping-cart"></i>
                            </button>
                            <button class="onshop-btn onshop-btn--product-action">
                                <i class="ti-heart"></i>
                            </button>
                        </div>
                        <?php if($rows->promotion_product==1): ?>
                        <span class="onshop-produt-sale">-<?php echo $rows->sale; ?>%</span>
                         <?php endif;?>
                    </div>
                    <div class="onshop-product-content">
                              <a style="margin-left: 45px" href="index.php?controller=ProductDetail&id=<?php echo $rows->id; ?>" class="onshop-product-title">
                            <?php echo $rows->name;?>
                        </a>
                        <div class="onshop-product-cost">
                        <?php if($rows->promotion_product==1):  ?>
                            <p class="old"><?php echo number_format($rows->price);?>₫</p>
                        <?php endif;?>
                            <p class="present"><?php echo number_format($rows->price*(100-$rows->sale)/100); ?></p>
                        </div>
                        <a href="index.php?controller=ProductDetail&id=<?php echo $rows->id; ?>" class="onshop-btn onshop-btn--border onshop-btn--pd-hz-xlarge onshop-text--uppercase">mua hàng</a>
                    </div>
                </article>
            </div>

                <?php endforeach; ?>
        </div>
    </div>
</section>
<section class="onshop-block-hot-product">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                <div class="title-section-img">
                    <div class="title-logo">
                        <span class="square-first"></span>
                        <span class="square-primary"></span>
                        <span class="square-second"></span>
                    </div>
                    <h2 class="title">Sản phẩm khuyến mại</h2>
                </div>
            </div>
        </div>
        <div class="row">
            
            <?php
                  $data = $this->productPromotion();
                ?>
                <?php foreach ($data as $rows): ?>
            <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 onshop-bg-white">
                <article class="onshop-product">
                    <div class="onshop-product-top">                        <a href="index.php?controller=ProductDetail&id=<?php echo $rows->id; ?>" class="onshop-product-title"><img class="onshop-product-img" src="Assets/Frontend/images/<?php echo $rows->img; ?>" alt=""></a>
                        <div class="onshop-product-action">
                            <button class="onshop-btn onshop-btn--product-action mb-3">
                                <i class="ti-shopping-cart"></i>
                            </button>
                            <button class="onshop-btn onshop-btn--product-action">
                                <i class="ti-heart"></i>
                            </button>
                        </div>
                        <span class="onshop-produt-sale">-<?php echo $rows->sale; ?>%</span>
                    </div>
                    <div class="onshop-product-content">
                        <a style="margin-left: 45px" href="index.php?controller=ProductDetail&id=<?php echo $rows->id; ?>" class="onshop-product-title">
                            <?php echo $rows->name;?>
                        </a>
                        <div class="onshop-product-cost">
                        <?php if($rows->promotion_product==1):  ?>
                            <p class="old"><?php echo number_format($rows->price);?>₫</p>
                        <?php endif;?>
                            <p class="present"><?php echo number_format($rows->price*(100-$rows->sale)/100); ?></p>
                        </div>
                        <a href="index.php?controller=ProductDetail&id=<?php echo $rows->id; ?>" class="onshop-btn onshop-btn--border onshop-btn--pd-hz-xlarge onshop-text--uppercase">mua hàng</a>
                    </div>
                </article>
            </div>

                <?php endforeach; ?>
        </div>
    </div>
    <div class="bg-image-album"
         style="background-image: url('Assets/Frontend/images/31206558_1069494829866743_829407903399018496_o.jpg');">
        <span class="title onshop-bg-transparent">Bộ sưu tập thu đông 2019</span>
    </div>
</section>