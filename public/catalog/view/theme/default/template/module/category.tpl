<div id="my-list" class="box">
  <div class="box-content">
    <div class="box-heading">My List</div>
      <ul class="box-category">
        <?php foreach ($mylist_products as $mylist_product) { ?>
        <li id="<?php echo $mylist_product['product_id']; ?>"><a href="<?php echo $mylist_product['href']; ?>"><?php echo $mylist_product['name']; ?></a><a class="remove" onclick="removeMyList('<?php echo $mylist_product['product_id']; ?>');"></a></li>
        <? } ?>
      </ul>
      <a href="index.php?route=information/enquiry" class="btn"><img src="catalog/view/theme/default/image/btn-enquiry.png" /></a>
      <div class="clear"></div>
  </div>
</div>

<div class="box">
  <div class="box-content">
    <ul class="box-category">
      <?php foreach ($categories as $category) { ?>
      <li>
        <?php if ($category['category_id'] == $category_id) { ?>
        <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
        <?php } else { ?>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php } ?>
        <?php if ($category['children']) { ?>
        <ul>
          <?php foreach ($category['children'] as $child) { ?>
          <li>
            <?php if ($child['category_id'] == $child_id) { ?>
            <a href="<?php echo $child['href']; ?>" class="active"> - <?php echo $child['name']; ?></a>
            <?php } else { ?>
            <a href="<?php echo $child['href']; ?>"> - <?php echo $child['name']; ?></a>
            <?php } ?>
          </li>
          <?php } ?>
        </ul>
        <?php } ?>
      </li>
      <?php } ?>
    </ul>
  </div>
</div>

<div id="facebook">
<div class="fb-like-box" data-href="http://www.facebook.com/platform" data-width="308" data-show-faces="true" data-stream="true" data-header="true"></div>
</div>
