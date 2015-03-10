<?php if(isset($included_pages)): ?>
<table class="teaser" border="0" cellpadding="0" cellspacing="0"<?php if($content): ?> style="margin-top:20px;"<?php endif; ?>>

<?php $columns=2; for($i=0;$i<$included_pages_number;$i=$i+$columns): ?>
<tr>
<?php for($ii=$i;$ii<$i+$columns;++$ii): ?>
<td class="<?php if($ii%2==0): ?>scl<?php else: ?>scr<?php endif; ?>">
<?php if(isset($included_pages[$ii])): ?>
<?php if($included_pages[$ii]['teaser_img']): ?>
<a href="<?php echo BASE_URL.$included_pages[$ii]['page']; ?>"><img class="teaser" src="<?php echo BASE_URL.MEDIA_DIR.$included_pages[$ii]['teaser_img']; ?>" alt="<?php echo $included_pages[$ii]['teaser_headline']; ?>" width="<?php echo $included_pages[$ii]['teaser_img_width']; ?>" height="<?php echo $included_pages[$ii]['teaser_img_height']; ?>" /></a>
<?php endif; ?>
<h2 class="teaser"><a href="<?php echo BASE_URL.$included_pages[$ii]['page']; ?>"><?php echo $included_pages[$ii]['teaser_headline']; ?></a></h2>
<p class="teaser"><?php echo $included_pages[$ii]['teaser']; ?><br />
<a href="<?php echo BASE_URL.$included_pages[$ii]['page']; ?>"><?php echo $included_pages[$ii]['link_name']; ?></a></p>
<?php else: ?>
&nbsp;
<?php endif; ?>
</td>
<?php endfor; ?>
</tr>
<?php endfor; ?>

</table>
<?php endif; ?>
