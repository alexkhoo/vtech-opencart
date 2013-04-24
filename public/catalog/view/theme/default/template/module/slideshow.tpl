<div class="slideshow">
  <div id="title"></div>
  <div id="man"></div>
  <div id="category-list">
    <div class="box">
  <div class="box-content">
    <ul class="box-category">
            <li>
                <a href="index.php?route=product/category&amp;path=59">Sealant</a>
                    <ul>
                    <li>
                        <a href="index.php?route=product/category&amp;path=59_69"> - Green Label Products</a>
                      </li>
                    <li>
                        <a href="index.php?route=product/category&amp;path=59_70"> - Ms Polymer Sealant</a>
                      </li>
                    <li>
                        <a href="index.php?route=product/category&amp;path=59_71"> - PU Sealants</a>
                      </li>
                    <li>
                        <a href="index.php?route=product/category&amp;path=59_72"> - Silicone Sealants</a>
                      </li>
                    <li>
                        <a href="index.php?route=product/category&amp;path=59_73"> - Acrylic Sealants</a>
                      </li>
                    <li>
                        <a href="index.php?route=product/category&amp;path=59_74"> - Construction/ Panel Adhesive Sealants</a>
                      </li>
                    <li>
                        <a href="index.php?route=product/category&amp;path=59_75"> - Other Sealants</a>
                      </li>
                  </ul>
              </li>
            <li>
                <a href="index.php?route=product/category&amp;path=60">RTV Gasket Maker</a>
                      </li>
            <li>
                <a href="index.php?route=product/category&amp;path=61">Epoxy Adhesive</a>
                      </li>
            <li>
                <a href="index.php?route=product/category&amp;path=62">Contact Adhesive</a>
                      </li>
            <li>
                <a href="index.php?route=product/category&amp;path=63">Solvent Cement</a>
                      </li>
            <li>
                <a href="index.php?route=product/category&amp;path=64">Automotive Adhesive &amp; Sealant</a>
                      </li>
            <li>
                <a href="index.php?route=product/category&amp;path=65">Household Adhesive &amp; Sealant</a>
                      </li>
            <li>
                <a href="index.php?route=product/category&amp;path=66">Super Glue &amp; All Purpose Adhesive</a>
                      </li>
            <li>
                <a href="index.php?route=product/category&amp;path=67">Waterproofing Material</a>
                      </li>
            <li>
                <a href="index.php?route=product/category&amp;path=68">Professional Caulking Gun</a>
                      </li>
          </ul>
  </div>
</div>
  </div>
  <div id="slideshow<?php echo $module; ?>" class="nivoSlider" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
    <?php } ?>
  </div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#slideshow<?php echo $module; ?>').nivoSlider({
    directionNav: false, // Next & Prev navigation
        controlNav: false,
        pauseOnHover: false
  });
});
--></script>