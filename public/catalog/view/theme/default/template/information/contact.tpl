<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
    <h1><?php echo $heading_title; ?></h1>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  
  <div style="float: left; width: 48%;">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <table class="contact">
            <tr>
                <td>Title:</td>
                <td><select id="title" name="title">
                        <option value="Mr.">Mr.</option>
                        <option value="Mrs.">Mrs.</option>
                        <option value="Miss">Miss</option>
                        <option value="Dr">Dr</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><?php echo $entry_name; ?></td>
                <td><input type="text" name="name" value="<?php echo $name; ?>" /><br />
                    <?php if ($error_name) { ?>
                    <span class="error"><?php echo $error_name; ?></span>
                    <?php } ?>
                </td>
            </tr>
            <tr>
                <td>Company Name:</td>
                <td><input type="text" name="company" value="<?php echo $company; ?>" />
                </td>
            </tr>
            <tr>
                <td>Position in Company:</td>
                <td><input type="text" name="position" value="<?php echo $position; ?>" />
                </td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><textarea name="enquiry_address" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry_address; ?></textarea>
                </td>
            </tr>
            <tr>
                <td>City:</td>
                <td><input type="text" name="enquiry_city" value="<?php echo $enquiry_city; ?>" />
                </td>
            </tr>
            <tr>
                <td>Province/State:</td>
                <td><input type="text" name="enquiry_state" value="<?php echo $enquiry_state; ?>" />
                </td>
            </tr>
            <tr>
                <td>Postal/Zip:</td>
                <td><input type="text" name="enquiry_postal" value="<?php echo $enquiry_postal; ?>" />
                </td>
            </tr>
            <tr>
                <td>Country:</td>
                <td><input type="text" name="enquiry_country" value="<?php echo $enquiry_country; ?>" /><br />
                    <?php if ($error_country) { ?>
                    <span class="error"><?php echo $error_country; ?></span>
                    <?php } ?>
                </td>
            </tr>
            <tr>
                <td><?php echo $entry_email; ?></td>
                <td><input type="text" name="email" value="<?php echo $email; ?>" /><br />
                    <?php if ($error_email) { ?>
                    <span class="error"><?php echo $error_email; ?></span>
                    <?php } ?>
                </td>
            </tr>
            <tr>
                <td>Tel No:</td>
                <td><input type="text" name="enquiry_tel" value="<?php echo $enquiry_tel; ?>" /><br />
                    <?php if ($error_tel) { ?>
                    <span class="error"><?php echo $error_tel; ?></span>
                    <?php } ?>
                </td>
            </tr>
            <tr>
                <td>Fax No:</td>
                <td><input type="text" name="enquiry_fax" value="<?php echo $enquiry_fax; ?>" />
                </td>
            </tr>
            <tr>
                <td>Nature of Enquiry:</td>
                <td><select id="nature" name="nature">
                        <option value="General Enquiry">General Enquiry</option>
                        <option value="Local Quote">Local Quote</option>
                        <option value="Export Quote">Export Quote</option>
                        <option value="Seeking Agency">Seeking Agency</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><?php echo $entry_enquiry; ?></td>
                <td><textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea><br />
                    <?php if ($error_enquiry) { ?>
                    <span class="error"><?php echo $error_enquiry; ?></span>
                    <?php } ?>
                </td>
            </tr>
            <tr>
                <td><?php echo $entry_captcha; ?></td>
                <td><input type="text" name="captcha" value="<?php echo $captcha; ?>" />
                    <br />
                    <img src="index.php?route=information/contact/captcha" alt="" style="margin-top: 5px;" />
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
  </div>
  <div style="float: right; width: 48%;">
    <table class="contact">
        <tr>
            <td><?php echo $text_address; ?></td><td>:</td><td><?php echo $store; ?><br /><?php echo $address; ?></td>
        <?php if ($telephone) { ?>
        </tr>
        <tr>
            <td><?php echo $text_telephone; ?></td><td>:</td><td><?php echo $telephone; ?></td>
        </tr>
        <?php } ?>
        <?php if ($fax) { ?>
        <tr>
            <td><?php echo $text_fax; ?></td><td>:</td><td><?php echo $fax; ?></td>
        </tr>
        <?php } ?>
        <tr>
            <td>E-mail</td><td>:</td><td><a href="mailto:sales@vitaltechnical.com">sales@vitaltechnical.com</a></td>
        </tr>
        <tr>
            <td>Coordinates</td><td>:</td><td>3.304692, 101.561903</td>
        </tr>
        <tr>
            <td colspan="3">
                <iframe width="418" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com.my/maps?q=Vital+Technical+Sdn+Bhd&amp;hl=en&amp;sll=3.754634,109.489746&amp;sspn=12.75609,21.643066&amp;hq=Vital+Technical+Sdn+Bhd&amp;t=m&amp;ie=UTF8&amp;hnear=&amp;cid=7672884485663378696&amp;ll=3.33247,101.562252&amp;spn=0.05998,0.071754&amp;z=13&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com.my/maps?q=Vital+Technical+Sdn+Bhd&amp;hl=en&amp;sll=3.754634,109.489746&amp;sspn=12.75609,21.643066&amp;hq=Vital+Technical+Sdn+Bhd&amp;t=m&amp;ie=UTF8&amp;hnear=&amp;cid=7672884485663378696&amp;ll=3.33247,101.562252&amp;spn=0.05998,0.071754&amp;z=13&amp;iwloc=A&amp;source=embed">View Larger Map</a></small>
            </td>
        </tr>
        
    </table>
  </div>
  <div class="clear"></div>
  
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>