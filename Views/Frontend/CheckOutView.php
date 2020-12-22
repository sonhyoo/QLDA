<?php 
	$this->fileLayout = "views/frontend/layout_trangtrong.php";
 ?>

<section class="onshop-block-best-sales-product">
	<div class="content" style="margin-top: 150px; margin-left: 320px;margin-right: 320px;margin-bottom: 10px">
		<form method="post" action="index.php?controller=Cart&action=doCheckOut">
 			<div class="panel-heading" style="text-align: center;font-size: 20px;margin-bottom: 10px">Thanh toán giỏ hàng</div>
 			<div class="panel-body">
	 		<!-- row -->
		 	<div class="row" style="margin-bottom: 10px;">
		 		<div class="col-md-2" style="font-size: 16px">Họ tên</div>
		 		<div class="col-md-10"><input type="text" style="height: 30px" required name="fullname" class="form-control"></div>
		 	</div>
		 	<!-- end row -->
		 	<!-- row -->
		 	<div class="row" style="margin-bottom: 10px;">
		 		<div class="col-md-2" style="font-size: 16px">Email</div>
		 		<div class="col-md-10"><input type="email" style="height: 30px" required name="email" class="form-control"></div>
		 	</div>
		 	<!-- end row -->
		 	<!-- row -->
		 	<div class="row" style="margin-bottom: 10px;">
		 		<div class="col-md-2" style="font-size: 16px">Địa chỉ</div>
		 		<div class="col-md-10"><input type="text" style="height: 30px" required name="address" class="form-control"></div>
		 	</div>
		 	<!-- end row -->
		 	<!-- row -->
		 	<div class="row" style="margin-bottom: 10px;">
		 		<div class="col-md-2" style="font-size: 16px">Số điện thoại</div>
		 		<div class="col-md-10"><input type="text"  maxlength="10" style="height: 30px" required name="phone" class="form-control"></div>
		 	</div>
		 	<!-- end row -->
		 	<!-- row -->
		 	<div class="row" style="margin-bottom: 5px;">
		 		<div class="col-md-2"></div>
		 		<div class="col-md-10"><input type="submit" value="Thanh toán" class="btn btn-primary"> <input type="reset" value="Viết lại" class="btn btn-danger"></div>
		 	<!-- end row -->
		 	</div>
		 </div>
		</form>
	</div>
</section>