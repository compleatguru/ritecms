function hide_comment_form()
 {
  document.getElementById('commentform').style.display='none';
  document.getElementById('show_commentform').style.display='block';
 }

function show_comment_form()
 {
  document.getElementById('commentform').style.display='block';
  document.getElementById('show_commentform').style.display='none';
  location.hash='commentform';
  document.getElementById('comment_text').focus();
 }

function show_comments()
 {
  document.getElementById('commentcontainer').style.display='block';
  document.getElementById('commentlink').style.display='none';
  location.hash='comments';
 }
