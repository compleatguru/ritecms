<div id="admin">
<p class="left"><a href="<?php echo BASE_URL; ?>"><img src="<?php echo BASE_URL; ?>templates/admin/images/home.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_home']; ?></span></a><?php if($admin): ?> &nbsp;<a href="<?php echo BASE_URL; ?>cms/index.php"><img src="<?php echo BASE_URL; ?>templates/admin/images/cog.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_admin']; ?></span></a> &nbsp;<a href="<?php echo BASE_URL; ?>cms/index.php?mode=pages"><img src="<?php echo BASE_URL; ?>templates/admin/images/pages.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_page_overview']; ?></span></a> &nbsp;<a href="<?php echo BASE_URL; ?>cms/index.php?mode=edit"><img src="<?php echo BASE_URL; ?>templates/admin/images/create_page.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_new_page']; ?></span></a><?php endif; ?></p>
<p class="right">&nbsp;
<?php if(defined('PAGE') && $authorized_to_edit): ?>
<span class="small"><?php echo $lang['admin_menu_act_page_actions']; ?></span> &nbsp;<a href="<?php echo BASE_URL; ?>cms/index.php?mode=edit&amp;id=<?php echo $id; ?>"><img src="<?php echo BASE_URL; ?>templates/admin/images/edit.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_edit_page']; ?></span></a> &nbsp;<a href="<?php echo BASE_URL; ?>cms/index.php?mode=pages&amp;delete_page=<?php echo $id; ?>" onclick="return confirm_link('<?php echo rawurlencode($lang['admin_menu_delete_page_conf']); ?>',this)"><img src="<?php echo BASE_URL; ?>templates/admin/images/delete.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_delete_page']; ?></span></a> &nbsp;<span style="color:#c0c0c0;">|</span>&nbsp;
<?php endif; ?>
<?php if($admin): ?>
<a href="<?php echo BASE_URL; ?>cms/index.php?mode=logout"><img src="<?php echo BASE_URL; ?>templates/admin/images/logout.png" alt="" width="16" height="16" /><span><?php echo $lang['admin_menu_logout']; ?></span></a>
<?php endif; ?>
</p>
</div>
