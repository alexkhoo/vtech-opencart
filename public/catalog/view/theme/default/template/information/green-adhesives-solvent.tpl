<?php echo $header; ?>
<div id="content"><?php echo $content_top; ?>
  <h1><?php echo $heading_title; ?></h1>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div class="htabs" id="tabs">
    <a href="index.php?route=information/green-adhesives" style="display: inline;">Introduction</a>
    <a href="index.php?route=information/green-adhesives-sealant" style="display: inline;">Sealant</a>
    <a href="index.php?route=information/green-adhesives-construction" style="display: inline;">Construction Adhesive</a>
    <a class="selected" href="index.php?route=information/green-adhesives-solvent" style="display: inline;">Solvent Cement</a>
    <a href="index.php?route=information/green-adhesives-contact" style="display: inline;">Contact Adhesive</a>
  </div>
  <div id="tab-solvent" class="tab-content"><?php echo $solvent; ?></div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>