<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <h1><?php echo $heading_title; ?></h1>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  		<input type="hidden" name="product_url" value="<?php echo $a; ?>" />
        <table class="contact">
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="<?php echo $name; ?>" /><br />
                    <?php if ($error_name) { ?>
                    <span class="error"><?php echo $error_name; ?></span>
                    <?php } ?>
                </td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" value="<?php echo $email; ?>" /><br />
                    <?php if ($error_email) { ?>
                    <span class="error"><?php echo $error_email; ?></span>
                    <?php } ?>
                </td>
            </tr>
            <tr>
                <td>Contact Number:</td>
                <td><input type="text" name="contact_number" value="<?php echo $contact_number; ?>" /><br />
                </td>
            </tr>
            <tr>
                <td>My List:</td>
                <td><ul style="margin-bottom: 0">
                    <?php foreach ($mylist_products as $mylist_product) { ?>
                    <li id="<?php echo $mylist_product['product_id']; ?>"><a href="<?php echo $mylist_product['href']; ?>"><?php echo $mylist_product['name']; ?></a><a class="remove" onclick="removeMyList('<?php echo $mylist_product['product_id']; ?>');"></a></li>
                    <? } ?>
                  </ul><br />
                </td>
            </tr>
            <tr>
                <td>Comments or Enquiries: </td>
                <td><textarea name="message" cols="40" rows="10" style="width: 99%;"><?php echo $message; ?></textarea><br />
                </td>
            </tr>
            <tr>
                <td>Enter the code in the box below:</td>
                <td><input type="text" name="captcha" value="<?php echo $captcha; ?>" />
                    <br />
                    <img src="index.php?route=information/enquiry/captcha" alt="" style="margin-top: 5px;" />
                    <?php if ($error_captcha) { ?>
                    <span class="error"><?php echo $error_captcha; ?></span>
                    <?php } ?>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Submit" class="button"/></td>
            </tr>
        </table>
  </form>
  
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>