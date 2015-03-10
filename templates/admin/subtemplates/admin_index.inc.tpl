<h1><?php echo $lang['administration']; ?></h1>

<?php if(isset($msg)): ?>
<p class="ok"><?php if(isset($lang[$msg])) echo $lang[$msg]; else echo $msg; ?></p>
<?php endif;?>

<ul class="options">
<?php if($user_type==1): ?><li><a href="index.php?mode=settings"><img src="<?php echo BASE_URL; ?>templates/admin/images/cog.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_settings']; ?></span></a></li><?php endif; ?>
<?php if($user_type==1): ?><li><a href="index.php?mode=menus"><img src="<?php echo BASE_URL; ?>templates/admin/images/page_link.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_edit_menus']; ?></span></a></li><?php endif; ?>
<li><a href="index.php?mode=galleries"><img src="<?php echo BASE_URL; ?>templates/admin/images/galleries.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_edit_galleries']; ?></span></a></li>
<li><a href="index.php?mode=filemanager"><img src="<?php echo BASE_URL; ?>templates/admin/images/folder.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_filemanager']; ?></span></a></li>
<li><a href="index.php?mode=comments"><img src="<?php echo BASE_URL; ?>templates/admin/images/comments.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_edit_comments']; ?></span></a></li>
<li><a href="index.php?mode=notes"><img src="<?php echo BASE_URL; ?>templates/admin/images/note.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_edit_notes']; ?></span></a></li>
<?php if($settings['global_content_blocks']): ?><li><a href="index.php?mode=gcb"><img src="<?php echo BASE_URL; ?>templates/admin/images/gcb.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_edit_gcb']; ?></span></a></li><?php endif; ?>
<?php if($user_type==1): ?><li><a href="index.php?mode=spam_protection"><img src="<?php echo BASE_URL; ?>templates/admin/images/shield.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_spam_protection']; ?></span></a></li><?php endif; ?>
<li><a href="index.php?mode=users"><img src="<?php echo BASE_URL; ?>templates/admin/images/user.png" alt="" width="16" height="16" /><span><?php if($user_type==1) echo $lang['admin_menu_user_administr']; else echo $lang['admin_menu_edit_userdata']; ?></span></a></li>
<?php if($settings['caching']): ?><li><a href="index.php?clear_cache=true"><img src="<?php echo BASE_URL; ?>templates/admin/images/refresh.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_clear_cache']; ?></span></a></li><?php endif; ?>
<?php if($user_type==1): ?><li><a href="index.php?mode=backup"><img src="<?php echo BASE_URL; ?>templates/admin/images/shield.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_backup']; ?></span></a></li><?php endif; ?>


</ul>
