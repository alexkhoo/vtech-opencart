<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <h1><?php echo $heading_title; ?></h1>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  		<input type="hidden" name="product_url" value="<?php echo $hidden_url; ?>" />
        <table class="contact">
            <tr>
                <td>Your Name:</td>
                <td><input type="text" name="your_name" value="<?php echo $your_name; ?>" /><br />
                    <?php if ($error_your_name) { ?>
                    <span class="error"><?php echo $error_your_name; ?></span>
                    <?php } ?>
                </td>
            </tr>
            <tr>
                <td>Your Email:</td>
                <td><input type="text" name="your_email" value="<?php echo $your_email; ?>" /><br />
                    <?php if ($error_your_email) { ?>
                    <span class="error"><?php echo $error_your_email; ?></span>
                    <?php } ?>
                </td>
            </tr>
            <tr>
                <td>Your Friend's Email:</td>
                <td><input type="text" name="your_friends_email" value="<?php echo $your_friends_email; ?>" /><br />
                    <?php if ($error_your_friends_email) { ?>
                    <span class="error"><?php echo $error_your_friends_email; ?></span>
                    <?php } ?>
                </td>
            </tr>
            <tr>
                <td>Message to Your Friend:<br />(Optional) </td>
                <td><textarea name="message" cols="40" rows="10" style="width: 99%;"><?php echo $message; ?></textarea><br />
                </td>
            </tr>
            <tr>
                <td>Enter the code in the box below:</td>
                <td><input type="text" name="captcha" value="<?php echo $captcha; ?>" />
                    <br />
                    <img src="index.php?route=information/tell-a-friend/captcha" alt="" style="margin-top: 5px;" />
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