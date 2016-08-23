<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); if($_GET['forumlist']) { ?>
  <?php include template('forum/forumlist'); } elseif($_GET['newthread']) { ?>
  <?php include template('forum/post'); } elseif($_GET['uc']) { ?>
  <?php include template('home/uc'); } elseif($_GET['setting']) { ?>
  <?php include template('home/setting'); } elseif($_GET['about']) { ?>
  <?php include template('home/about'); } else { ?>
  <?php include template('index'); } ?>

