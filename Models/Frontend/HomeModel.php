<?php
  trait HomeModel{
      //san pham noi bat
      public function productHot(){
          $conn = Connection::getInstance();
          $query = $conn->query("select name,img, price, id,sale,promotion_product from tbl_product where hotproduct=1 order by id desc limit 0,8");
          return $query->fetchAll();
      }
      //san pham moi
      public function productNew(){
          $conn = Connection::getInstance();
          $query = $conn->query("select name,img,sale, price, id,promotion_product from tbl_product where newproduct=1 order by id desc limit 0,4");
          return $query->fetchAll();
      }
      public function productPromotion(){
          $conn = Connection::getInstance();
          $query = $conn->query("select name,sale,img, price, id,promotion_product from tbl_product where promotion_product=1 order by id desc limit 0,4");
          return $query->fetchAll();
      }
  }
?>