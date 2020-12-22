<?php
$this->fileLayout="Views/Frontend/Layout_trangtrong.php";
?>
    <div class="tabs-container">
        <div class="clearfix">
            <h2 style="font-weight: bold; color:red;">
                <?php
                  $conn = Connection::getInstance();
                  $query = $conn->prepare("select name from tbl_category where id=:id");
                  $query->execute(array("id"=>$id));
                  $category = $query->fetch();
                  echo isset($category->name)?$category->name:"";
                ?>
            </h2>
        </div>
    </div>

    
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
                </div>
            </div>
        </div>
        <div class="row">
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
                        <div class="evaluate">
                            <img class="svg img-star active" src="Assets/Frontend/images/svg2/off.svg" alt="">
                            <img class="svg img-star active" src="Assets/Frontend/images/svg2/off.svg" alt="">
                            <img class="svg img-star active" src="Assets/Frontend/images/svg2/off.svg" alt="">
                            <img class="svg img-star active" src="Assets/Frontend/images/svg2/off.svg" alt="">
                            <img class="svg img-star " src="Assets/Frontend/images/svg2/off.svg" alt="">
                        </div>
                        <a href="index.php?controller=ProductDetail&id=<?php echo $rows->id; ?>" class="onshop-product-title">
                            <?php echo $rows->name;?>
                        </a>
                        <div class="onshop-product-cost">
                        <?php if($rows->promotion_product==1):  ?>
                            <p class="old"><?php echo $rows->price;?>₫</p>
                        <?php endif;?>
                            <p class="present"><?php echo $rows->price*(100-$rows->sale)/100; ?></p>
                        </div>
                        <button type="button" class="onshop-btn onshop-btn--border  onshop-text--uppercase "> mua ngay
                        </button>
                    </div>
                </article>
            </div>

                <?php endforeach; ?>
          
</section>