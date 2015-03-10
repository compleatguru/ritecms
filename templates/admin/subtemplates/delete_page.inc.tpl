<h1><a href="index.php"><?php echo $lang['administration']; ?></a> &raquo; <a href="index.php?mode=pages"><?php echo $lang['page_overview']; ?></a> &raquo; <?php echo $lang['delete_page_headline']; ?></h1>

<p class="caution"><?php echo $lang['caution']; ?></p>
<p><?php echo str_replace('[page]',stripslashes($page['page']),$lang['delete_page_confirm']); ?></p>

<form action="index.php" method="post">
<div>
<input type="hidden" name="mode" value="pages" />
<input type="hidden" name="delete_page" value="<?php echo $page['id']; ?>" />
<input type="submit" name="confirmed" value="<?php echo $lang['delete_page_submit']; ?>" />
</div>
</form>

