<h1><a href="index.php"><?php echo $lang['administration']; ?></a> &raquo; <a href="index.php?mode=gcb"><?php echo $lang['gcb']; ?></a> &raquo; <?php echo $lang['delete_gcb']; ?></h1>

<p><?php echo str_replace('[title]', $gcb['title'], $lang['delete_gcb_confirm']); ?></p>

<form action="index.php" method="post">
 <div>
  <input type="hidden" name="mode" value="gcb" />
  <input type="hidden" name="delete" value="<?php echo $gcb['id']; ?>" />
  <input type="submit" name="confirmed" value="<?php echo $lang['submit_button_ok']; ?>" />
 </div>
</form>

