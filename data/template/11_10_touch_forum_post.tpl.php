<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); include template('common/mwt_frame'); include template('common/mwt_style'); if($_GET['action']=='reply') { ?>
<script>
jQuery(document).ready(function($) {
// 回复帖子,还是用浮层实现,这里跳转到查看主题页面
var tid = "<?php echo $_GET['tid'];?>";
window.location = "forum.php?mod=viewthread&amp;tid="+tid;
});
</script>
<?php } else { ?>
<script>
jQuery(document).ready(function($) {
require(["jsapp","mwt"],function(jsapp){
var fid = "<?php echo $_GET['fid'];?>";
jsapp.run('forum/newthread',fid);
});
});
</script>
<?php } ?>
