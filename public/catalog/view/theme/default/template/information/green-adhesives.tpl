<?php echo $header; ?>
<div id="content"><?php echo $content_top; ?>
  <h1><?php echo $heading_title; ?></h1>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div id="tabs" class="htabs">
  	<a href="#tab-introduction">Introduction</a>
  	<a href="#tab-products">Green Label Singapore Endorse Products</a>
  	<a href="#tab-low-products">Low VOC Compliant Products</a>
  </div>
  <div id="tab-introduction" class="tab-content"><?php echo $introduction; ?></div>
  <div id="tab-products" class="tab-content"><?php echo $products; ?></div>
  <div id="tab-low-products" class="tab-content">
    <div id="sealant-pagination" class="pagination">
      <div class="text">Page 1 of 2</div>
      <div class="links"> 
        <a href="#arhitectural" id="links1" class="active">1</a> 
        <a href="#construction" id="links2">2</a>
      </div>
    </div>
    <div class="clear"></div>
    <div id="sealant">
      <?php echo $low_products; ?>
    </div>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script>
<script type="text/javascript"><!--
$(document).ready(function() {
  $('#links1').click(function(event){
    event.preventDefault();
    if(!$(this).hasClass("active")) {
      $('.links a').removeClass("active");
      $(this).addClass("active");
      $('#construction').fadeOut();
      $('#arhitectural').fadeIn();
    }
  });
  $('#links2').click(function(event){
    event.preventDefault();
    if(!$(this).hasClass("active")) {
      $('.links a').removeClass("active");
      $(this).addClass("active");
      $('#arhitectural').fadeOut();
      $('#construction').fadeIn();
    }
  });
});
//--></script>