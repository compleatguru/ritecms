<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html lang="<?php echo $lang['lang']; ?>" dir="<?php echo $lang['dir']; ?>">
<head>
<meta http-equiv="content-type" content="text/html; charset=<?php echo $lang['charset']; ?>">
<meta name="robots" content="<?php if($status>1): ?>index, follow<?php else: ?>noindex, noarchive<?php endif; ?>" />
<meta name="description" content="<?php if($description) echo $description; else echo $settings['default_description']; ?>" />
<meta name="keywords" content="<?php if($keywords) echo $keywords; else echo $settings['default_keywords']; ?>" />
<meta name="generator" content="phpSQLiteCMS <?php echo $settings['version']; ?>" />
<title><?php echo $settings['website_title']; if($page_title): ?> - <?php echo $page_title; elseif($title): ?> - <?php echo $title; endif; ?></title>
<link rel="stylesheet" type="text/css" href="<?php echo BASE_URL; ?>templates/mobile.css" media="handheld"  />
<?php if($settings['rss_feed']): ?>
<link rel="alternate" type="application/rss+xml" title="RSS" href="<?php echo BASE_URL.$settings['rss_feed']; ?>" />
<?php endif; ?>
<link rel="shortcut icon" href="<?php echo BASE_URL; ?>templates/images/favicon.ico" />
</head>
<body>

<div id="top">
<div class="logo"><h1><a href="<?php echo BASE_URL; ?>"><?php echo $settings['website_title']; ?></a></h1></div>
</div>

<?php if($menu_1 && isset($menus[$menu_1])): ?>
<div id="nav">
<ul id="navlist">
<?php foreach($menus[$menu_1] as $item): ?><li><a href="<?php echo $item['link']; ?>.m" title="<?php echo $item['title']; ?>"<?php if($item['accesskey']!=''): ?> accesskey="<?php echo $item['accesskey']; ?>"<?php endif; ?><?php if(!empty($item['section']) && $item['section']==$section[0]): ?> id="current"<?php endif; ?>><?php echo $item['name']; ?></a></li><?php endforeach; ?>
</ul>
</div>
<?php endif; ?>

<div id="mainwrapper">
<div id="main">

<?php echo $content; ?>
</div>
</div>

<div id="bottomwrapper">
<div id="bottom">
<p class="left"><?php /* echo $settings['website_footnote_1']; */ ?><?php if($type!='news' && $type!='search' && $type!='notes' && $type!='guestbook') echo $lang['page_last_modified']; ?></p>
<p class="right"><?php echo $settings['website_footnote_2']; ?></p>
</div>
</div>
