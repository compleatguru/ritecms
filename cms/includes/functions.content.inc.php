<?php

function qrpage($size="210x210")
{
//to be called within template
$output='<a href="'.BASE_URL.PAGE.'.m"><img src="http://chart.apis.google.com/chart?chs='.$size.'&amp;cht=qr&amp;chld=%7C0&amp;chl='.BASE_URL.PAGE.'.m" alt="Mobile Version" /></a>';
return $output;
}

function myqr($content="zoriamedia",$size="210x210")
{
// mecard format MECARD:N:Owen,Sean;ADR:76 9th Avenue,New York, NY 10011;TEL:+12125551212;EMAIL:srowen@cool.com;; 
return '<img src="http://chart.apis.google.com/chart?chf=a,s,000000&amp;chs='.
	$size.'&amp;cht=qr&amp;chld=|0&amp;chl='.$content.'" />';
}

?>
