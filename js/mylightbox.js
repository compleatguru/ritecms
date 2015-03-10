/*
 * myLightbox 
 * http://mylittlehomepage.net/en/miscellaneous/mylightbox
 * Copyright (c) 2011 Mark Alexander Hoschek
 * Contains the jQuery Hashchange Plugin by "Cowboy" Ben Alman
 * http://benalman.com/projects/jquery-hashchange-plugin/
 * Dual licensed under the MIT and GPL licenses.
 */

// settings:
myLightboxSettings = new Object();
myLightboxSettings['vertical_align'] =      30; // 'center' or number of pixels from top
myLightboxSettings['next_link'] =           '[&raquo;]';
myLightboxSettings['next_link_title'] =     'next';
myLightboxSettings['previous_link']       = '[&laquo;]';
myLightboxSettings['previous_link_title'] = 'previous';
myLightboxSettings['close_link'] =          '[x]';
myLightboxSettings['close_link_title'] =    'close';
myLightboxSettings['html_box'] =            '<div id="mylightbox">\
<div id="mylightbox-header">\
<div id="mylightbox-title"></div>\
<div id="mylightbox-nav"></div>\
<div id="mylightbox-controls"><a href="#" id="mylightbox-close" title="'+myLightboxSettings['close_link_title']+'" onclick="return false"><span>'+myLightboxSettings['close_link']+'</span></a></div>\
</div>\
<div id="mylightbox-photo"></div>\
<p id="mylightbox-description"></p>\
</div>';
myLightboxSettings['html_background'] =     '<div id="mylightbox-background"></div>';
// end settings

(function($,e,b){var c="hashchange",h=document,f,g=$.event.special,i=h.documentMode,d="on"+c in e&&(i===b||i>7);function a(j){j=j||location.href;return"#"+j.replace(/^[^#]*#?(.*)$/,"$1")}$.fn[c]=function(j){return j?this.bind(c,j):this.trigger(c)};$.fn[c].delay=50;g[c]=$.extend(g[c],{setup:function(){if(d){return false}$(f.start)},teardown:function(){if(d){return false}$(f.stop)}});f=(function(){var j={},p,m=a(),k=function(q){return q},l=k,o=k;j.start=function(){p||n()};j.stop=function(){p&&clearTimeout(p);p=b};function n(){var r=a(),q=o(m);if(r!==m){l(m=r,q);$(e).trigger(c)}else{if(q!==m){location.href=location.href.replace(/#.*/,"")+q}}p=setTimeout(n,$.fn[c].delay)}$.browser.msie&&!d&&(function(){var q,r;j.start=function(){if(!q){r=$.fn[c].src;r=r&&r+a();q=$('<iframe tabindex="-1" title="empty"/>').hide().one("load",function(){r||l(a());n()}).attr("src",r||"javascript:0").insertAfter("body")[0].contentWindow;h.onpropertychange=function(){try{if(event.propertyName==="title"){q.document.title=h.title}}catch(s){}}}};j.stop=k;o=function(){return a(q.location.href)};l=function(v,s){var u=q.document,t=$.fn[c].domain;if(v!==s){u.title=h.title;u.open();t&&u.write('<script>document.domain="'+t+'"<\/script>');u.close();q.location.hash=v}}})();return j})()})(jQuery,this);
var popupStatus=0;function loadPopup(){if(popupStatus==0){$("body").append(myLightboxSettings.html_background);$("body").append(myLightboxSettings.html_box);$("#mylightbox-background").css({opacity:"0.7"});$("#mylightbox-background").fadeIn("fast");$("#mylightbox").fadeIn("fast");$(window).bind("resize",function(){centerPopup($("#mylightbox").width(),$("#mylightbox").height())});$("#mylightbox-close").click(function(){window.location.hash="#mylightbox=close"});$("#mylightbox-background").click(function(){window.location.hash="#mylightbox=close"});$(document).keypress(function(a){if(a.keyCode==27&&popupStatus==1){window.location.hash="#mylightbox=close"}});popupStatus=1}}function disablePopup(){$("#mylightbox").fadeOut("fast",remove);$("#mylightbox-background").fadeOut("fast",remove);popupStatus=0;delete myLightboxCurrentWidth}function remove(){$(this).remove()}function centerPopup(b,a){if(myLightboxSettings.vertical_align=="center"){var d=$(window).scrollTop()+$(window).height()/2-a/2}else{var d=$(window).scrollTop()+myLightboxSettings.vertical_align}var c=$(window).width()/2-b/2;if(d<0){d=0}if(c<0){c=0}$("#mylightbox").css({position:"absolute",top:d+"px",left:c+"px"});$("#mylightbox-background").css({height:$(window).height()})}$(function(){var e=new Array();var c=new Array();var d=new Array();var b=new Array();$("a[rel='lightbox']").each(function(f){$(this).click(function(){location.hash="#mylightbox="+f;return false});e.push($(this));c.push($(this).attr("href"));d.push($(this).find("img").attr("alt"));b.push($(this).find("img").attr("title"))});var a=e.length;$(window).hashchange(function(){var k=location.hash;if(k==""){disablePopup()}else{var g=k.split("=");if(g[0]=="#mylightbox"){if(g[1]=="close"){disablePopup()}else{var j=parseInt(g[1]);if(a>1){if(j<a-1){var h=j+1}else{h=0}if(j>0){var i=j-1}else{i=a-1}}if(j<a){loadPopup();if(typeof(myLightboxCurrentWidth)!="undefined"){$("#mylightbox").css({width:myLightboxCurrentWidth+"px"})}if(typeof(i)!="undefined"&&typeof(h)!="undefined"){$("#mylightbox #mylightbox-nav").html('<a id="mylightbox-prev" href="'+c[i]+'" title="'+myLightboxSettings.previous_link_title+'"><span>'+myLightboxSettings.previous_link+'</span></a> &nbsp; <a id="mylightbox-next" href="'+c[h]+'" title="'+myLightboxSettings.next_link_title+'"><span>'+myLightboxSettings.next_link+"</span></a>");$("#mylightbox-prev").click(function(l){$(this).attr("href","#mylightbox="+i)});$("#mylightbox-next").click(function(l){$(this).attr("href","#mylightbox="+h)})}else{$("#mylightbox #mylightbox-nav").html("&nbsp;")}$("#mylightbox #mylightbox-title").html("");$("#mylightbox-photo").html('<div id="mylightbox-throbber"></div>');$("#mylightbox-description").html("");if(typeof(myLightboxCurrentWidth)=="undefined"){centerPopup($("#mylightbox").outerWidth(),$("#mylightbox").outerHeight())}var f=new Image();f.onload=function(){$("#mylightbox #mylightbox-title").html(d[j]);$("#mylightbox-photo").hide();if(typeof(h)!="undefined"){$("#mylightbox-photo").html('<a id="mylightbox-next-img" href="'+c[h]+'"><img src="'+c[j]+'" /></a>');$("#mylightbox-next-img").click(function(l){$(this).attr("href","#mylightbox="+h)})}else{$("#mylightbox-photo").html('<img src="'+c[j]+'" />')}$("#mylightbox-description").html(b[j]);$("#mylightbox-photo").fadeIn("fast");myLightboxCurrentWidth=f.width;$("#mylightbox").css({width:myLightboxCurrentWidth+"px"});centerPopup($("#mylightbox").outerWidth(),$("#mylightbox").outerHeight())};f.src=c[j]}}}else{disablePopup()}}});$(window).hashchange()});
