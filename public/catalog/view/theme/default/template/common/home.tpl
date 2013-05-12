<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
<h1 style="display: none;"><?php echo $heading_title; ?></h1>
<?php echo $content_bottom; ?></div>
</div>
<div id="home-content">
	<div style="width: 563px; float: left; padding-right: 26px; margin-left: 23px">
		<img src="catalog/view/theme/default/image/home-01.png" style="margin-bottom: 11px" />
		<div class="clear"></div>
		<img src="catalog/view/theme/default/image/home-02.png" style="float: left; margin-right: 21px;" />
		<p style="color: #fff;">Established in August 2002, Vital Technical Sdn Bhd is one of the leading bonding solutions providers in the world.<br /><br />

We manufacture, package and distribute a wide range of high quality adhesive, sealant and waterproofing products in a variety of packaging options to cater to the needs of various market segment. <br />
<a href="index.php?route=information/information&information_id=4"><span style="font-style: italic">More</span>&gt;&gt;</a></p>
		<div class="clear"></div>
	</div>
	<div style="float: left; width: 1px; height: 238px; margin-right: 12px; background:url('catalog/view/theme/default/image/dot.png') left bottom no-repeat"></div>
	<div style="width: 290px; float: left">
		<img src="catalog/view/theme/default/image/home-03.png" style="margin-bottom: 11px" />
		<div class="clear"></div>
		<iframe width="290" height="163" src="http://www.youtube.com/embed/uCMH-H8mDXM" frameborder="0" allowfullscreen></iframe>
		<a href="http://www.youtube.com/vitaltechnical" target="_blank"><img src="catalog/view/theme/default/image/links-view-more.png"/></a>
	</div>
	<div class="clear"></div>
	<div style="width: 896px; height: 173px; margin: 10px 0 40px 23px; padding: 12px 0 0 0; background:url('catalog/view/theme/default/image/home-04.gif') left bottom no-repeat">
		<img src="catalog/view/theme/default/image/home-05.png" style="margin-bottom: 5px; margin-left: 50px" />
		<div class="clear"></div>
		<div id="home-carousel">
			<ul class="jcarousel-skin-opencart">
				<?php foreach ($banners as $banner) { ?>
				  <?php if ($banner['link']) { ?>
				  <li><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /><br /><span><?php echo $banner['title']; ?></span></a></li>
				  <?php } else { ?>
				  <li><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /><br /><span><?php echo $banner['title']; ?></span></li>
				  <?php } ?>
				  <?php } ?>
			</ul>			
		
		<div class="clear"></div>
		</div>
	</div>
</div>
<div id="footer">
  <div class="column">
    <h3>Information</h3>
    <ul>      
      <li><a href="index.php?route=information/information&information_id=4">About Us</a></li>
      <li><a href="index.php?route=information/tds-msds">TDS/MSDS</a></li>
      <li><a href="index.php?route=information/contact">Contact</a></li>
    </ul>
  </div>
  <div class="column" style="width: 30%">
    <h3>Products</h3>
    <ul>
      <li><a href="index.php?route=product/category&path=59">Sealant</a></li>
      <li><a href="index.php?route=product/category&path=60">RTV Gasket Maker</a></li>
      <li><a href="index.php?route=product/category&path=61">Epoxy Adhesive</a></li>
      <li><a href="index.php?route=product/category&path=62">Contact Adhesive</a></li>
      <li><a href="index.php?route=product/category&path=63">Solvent Cement</a></li>
      <li><a href="index.php?route=product/category&path=64">Automotive Adhesive &amp; Sealant</a></li>
      <li><a href="index.php?route=product/category&path=65">Household Adhesive &amp; Sealant</a></li>
      <li><a href="index.php?route=product/category&path=66">Super Glue &amp; All Purpose Adhesive</a></li>
      <li><a href="index.php?route=product/category&path=67">Waterproofing Material</a></li>
      <li><a href="index.php?route=product/category&path=68">Professional Caulking Gun</a></li>
    </ul>
  </div>
  <div class="column">
    <h3>Green Adhesives &amp; Sealants</h3>
    <ul>
      <li><a href="index.php?route=information/green-adhesives">Introducion</a></li>
      <li><a href="index.php?route=information/green-adhesives-sealant">Sealant</a></li>
      <li><a href="index.php?route=information/green-adhesives-construction">Construction Adhesive</a></li>
      <li><a href="index.php?route=information/green-adhesives-solvent">Solvent Cement</a></li>
      <li><a href="index.php?route=information/green-adhesives-contact">Contact Adhesive</a></li>
    </ul>
  </div>
  <div class="column" style="width: 20%;">
    <a href="https://www.facebook.com/vitaltechnical" target="_blank"><img src="catalog/view/theme/default/image/icons-fb-grey.gif" style="margin-right: 22px; float: left" /></a>
  	<a href="http://www.youtube.com/vitaltechnical" target="_blank"><img src="catalog/view/theme/default/image/icons-youtube-grey.gif" style="margin-right: 38px; float: left" /></a>
	  <div class="clear"></div>
	  <div style="color: #6d6e71; font-size: 10px; padding-top: 10px">Copyrights &copy; 2013 Vital Technical Sdn Bhd. All rights reserved. </div>
  </div>
</div>
</div>
<script type="text/javascript">
$('#home-carousel ul').jcarousel({
	vertical: false,
	visible: 4,
	scroll: 1,
	wrap: 'circular'
});
$(document).ready(function() {
	$('body').addClass('home');
});
</script>
</body></html>