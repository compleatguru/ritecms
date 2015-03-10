<!DOCTYPE html>
<html lang="<?php echo $lang['lang']; ?>" dir="<?php echo $lang['dir']; ?>">
<head>
<meta http-equiv="content-type" content="text/html; charset=<?php echo $lang['charset']; ?>" />
<title><?php echo $settings['website_title']; ?> - <?php echo $lang['administration']; if(isset($subtitle)) echo ' - ' . $subtitle; ?></title>
<link rel="stylesheet" type="text/css" href="<?php echo BASE_URL; ?>templates/admin/style.css" media="all" />
<link rel="shortcut icon" href="<?php echo BASE_URL; ?>templates/images/favicon.ico" />
<script type="text/javascript" src="<?php echo BASE_URL; ?>js/admin.js"></script>
<?php if($settings['wysiwyg_editor'] && !empty($wysiwyg)): ?>
<script type="text/javascript" src="<?php echo BASE_URL.WYSIWYG_EDITOR; ?>"></script>
<script type="text/javascript">
tinymce.init({
    selector: '#content',
    plugins: "anchor charmap code hr image link nonbreaking pagebreak paste table textcolor visualblocks visualchars",
    toolbar: "undo redo bold italic underline | alignleft aligncenter alignright | bullist numlist outdent indent | link image | forecolor backcolor code"
});
</script>
<?php endif; ?>
</head>
<body onload="on_load('<?php echo $mode; ?>')">

<?php include('../templates/admin/subtemplates/admin_menu.inc.tpl'); ?>

<div id="main">

<?php if(isset($subtemplate)): ?>

<?php include('../templates/admin/subtemplates/'.$subtemplate); ?>

<?php elseif(isset($content)): ?>

<?php echo $content; ?>

<?php elseif(isset($error_message)): ?>

<p class="caution"><?php echo $error_message; ?></p>

<?php else: ?>

<p class="caution"><?php echo $lang['invalid_request']; ?></p>

<?php endif; ?>

</div>

</body>
</html>
