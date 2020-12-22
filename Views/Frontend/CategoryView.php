<aside class="aside-category">
 <ul class="list-unstyled">
        <?php
          foreach ($data as $rows):
        ?>
        <li class="sub-menu-item"><a class="sub-menu-link" href="index.php?controller=ProductCategory&id=<?php echo $rows->id; ?>"><?php echo $rows->name;
                ?>
                </a></li>
        <?php
        endforeach;
        ?>
    </ul>
</aside>