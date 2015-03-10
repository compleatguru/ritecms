<?php if(isset($errors)): ?>
<p id="errors" class="caution"><?php echo $lang['error_headline']; ?></p>
<ul>
 <?php foreach($errors as $error): ?>
 <li><?php if(isset($lang[$error])) echo $lang[$error]; else echo $error; ?></li>
 <?php endforeach; ?>
</ul>
<?php endif; ?>

<?php if($admin): ?>

<?php if(isset($newsletter_data)): ?>
<h2><?php echo $lang['newsletter_email_list']; ?></h2>
<p><textarea onFocus="if(this.value==this.defaultValue) this.select()" readonly="readonly" cols="60" rows="5" /><?php echo $email_list; ?></textarea><br />
<span class="small"><?php echo str_replace('[number]', $email_count, $lang['newsletter_email_count']); ?></span></p>

<h2><?php echo $lang['newsletter_edit_emails']; ?></h2>
<table class="normaltab" cellspacing="1" cellpadding="5" border="0">
<tr>
<th><a href="<?php echo BASE_URL.PAGE; ?>,<?php if($order=='email-asc'): ?>email-desc<?php else: ?>email-asc<?php endif; ?>"><?php echo $lang['newsletter_email']; ?></a></th>
<th><a href="<?php echo BASE_URL.PAGE; ?>,<?php if($order=='time-asc'): ?>time-desc<?php else: ?>time-asc<?php endif; ?>"><?php echo $lang['newsletter_subscribe_time']; ?></a></th>
<th>&nbsp;</th>
</tr>
<?php $i=0; foreach($newsletter_data as $item): ?>
<tr class="<?php if($i % 2 == 0) echo "odd"; else echo "even"; ?>">
<td><a href="mailto:<?php echo $item['email']; ?>"><?php echo $item['email']; ?></a> <small>(<a href="http://<?php echo $item['domain']; ?>"><?php echo $item['domain']; ?></a>)</small></td>
<td><?php echo $lang['newsletter_subscribe_time_format'][$item['id']]; ?></a></td>
<td><form action="<?php echo BASE_URL.PAGE; ?>" method="post"><input type="hidden" name="email_id" value="<?php echo $item['id']; ?>" /><input type="submit" name="delete_email" value="<?php echo $lang['newsletter_email_delete']; ?>"></form>
</td>
</tr>
<?php ++$i; endforeach; ?>
</table>
<?php else: ?>
<p><em><?php echo $lang['newsletter_no_emails']; ?></em></p>
<?php endif; ?>
<form action="<?php echo BASE_URL.PAGE; ?>" method="post"><div>
<?php echo $lang['newsletter_add_email']; ?><br /><input type="text" name="add_email" value="" size="25" /> <input type="submit" name="" value="<?php echo $lang['submit_button_ok']; ?>" />
</div></form>

<?php else: ?>

<?php if(isset($confirm_mail_sent)): ?>
<p><?php echo $lang['newsletter_conf_mail_sent']; ?></p>
<?php elseif(isset($confirmation_ok)): ?>
<p><?php echo $lang['newsletter_conf_ok']; ?></p>
<?php elseif(isset($delete_ok)): ?>
<p><?php echo $lang['newsletter_delete_ok']; ?></p>
<?php elseif(isset($confirmation_failed)): ?>
<p><?php echo $lang['newsletter_conf_failed']; ?></p>
<?php else: ?>
<form action="<?php echo BASE_URL.PAGE; ?>" method="post">
<p><label for="email"><?php echo $lang['newsletter_subscr_email']; ?></label><br />
<input id="email" type="text" name="email" value="<?php if(isset($email)) echo $email; ?>" size="25" maxlength="200" /> <input type="submit" name="" value="<?php echo $lang['submit_button_ok']; ?>" /></p>
<p class="small"><input id="subscribe" type="radio" name="subscribe" value="subscribe" checked="checked" /><label for="subscribe"><?php echo $lang['newsletter_subscribe']; ?></label><br />
<input id="unsubscribe" type="radio" name="subscribe" value="unsubscribe" /><label for="unsubscribe"><?php echo $lang['newsletter_unsubscribe']; ?></label></p>
</form>
<?php endif; ?>

<?php endif; ?>
