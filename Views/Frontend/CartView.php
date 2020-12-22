<?php
$this->fileLayout="Views/Frontend/Layout_trangtrong.php";
?>

<section class="onshop-block-content onshop-block-cart not-ads ">
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-12 col-xl-12">
                <ul class="onshop-breadcrumb">
                    <li class="onshop-breadcrumb__item">
                        <a href="index.php" class="onshop-breadcrumb__link">Trang chủ</a>
                    </li>
                    <li class="onshop-breadcrumb__item">
                        <a href="index.php?controller=Cart" class="onshop-breadcrumb__link active ">Giỏ hàng</a>
                    </li>
                </ul>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                <div class="title-section-img">
                    <div class="title-logo">
                        <span class="square-first"></span>
                        <span class="square-primary"></span>
                        <span class="square-second"></span>
                    </div>
                    <h2 class="title register">Giỏ hàng của bạn </h2>
                    </span>
                </div>
            </div>
            <div class="col-12 ">
                <form action="index.php?controller=Cart&action=update" method="post">
                <table class="table onshop-table--cart">
                    <thead >
                    <tr>
                        <th>Ảnh</th>
                        <th>Thông tin sản phẩm</th>
                        <th class="text-center">Xoá</th>
                    </tr>
                    <tbody>
                        <?php foreach($_SESSION["cart"] as $product): ?>
                    <tr>
                        <td class="onshop-cart--img">
                            <img src="Assets/Frontend/images/<?php echo $product['img'] ?>" alt="">
                        </td>
                        <td class="onshop-cart--info-item">
                            <a href="product-detail.html" class="title"><?php echo $product['name'];?></a>
                            <p>Đơn giá <?php echo number_format($product['price']-$product['sale']*$product['price']/100); ?></p>
                            <div class="onshop-group--count-amount">
                               <input type="number" style="width: 35px" id="qty" min="1" class="input-control" value="<?php echo $product['number']; ?>" name="product_<?php echo $product['id']; ?>" required="Không thể để trống">
                            </div>
                            <p>Thành tiền: <strong><?php echo number_format($product['number']*($product['price']-$product['sale']*$product['price']/100)); ?></strong></p>
                        </td>
                        <td class="onshop-cart--remove-item">
                            <a href="index.php?controller=Cart&action=delete&id=<?php echo $product['id']; ?>" data-id="2479395"><i class="ti-close"></i></a>
                        </td>
                    </tr>
                        <?php endforeach;?>
                    </tbody>
                    </thead>
                </table>
                <div class="onshop-cart--total-cost">
                    <span class="title">Tổng tiền </span>
                    <span class="cost">
                        <?php echo number_format($this->cartTotal()); ?>₫ <br>
                    </span>
                </div>
                <div class=" onshop-cart--action">
                    <input type="submit" style="width: 150px" class="button pull-right" value="Cập nhật">
                    <button class="onshop-btn onshop-btn--border onshop-text--uppercase"><a style="color: black;" href="index.php">Tiếp tục mua hàng</a></button>
                    <button class="onshop-btn onshop-btn--primary onshop-text--uppercase"><a href="index.php?controller=Cart&action=checkOut" >Thanh toán</a></button>
                </div>
            </form>
        </div>
        </div>
    </div>
</section>