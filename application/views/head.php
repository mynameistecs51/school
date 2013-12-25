<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <title><?php echo $title;?></title>

  <!-- Bootstrap core CSS -->
  <link href="<?php echo base_url().'css/bootstrap.css';?>" rel="stylesheet">

  <!-- Add custom CSS here -->
  <link href="<?php echo base_url().'css/small-business.css';?>" rel="stylesheet">

</head>

<body>

  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <!--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        You'll want to use a responsive image option so this logo looks good on devices - I recommend using something like retina.js (do a quick Google search for it and you'll find it) -->
        <a class="navbar-brand logo-nav" href="index.php"><h3><p class="label label-default">Scholl_web</p></h3></a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav navbar-right">
          <li ><?php echo anchor('ctl_main/index','หน้าหลัก');?></li>
          <li><?php echo anchor('ctl_main/register',"งานทะเบียน");?></li>
          <li><?php echo anchor('login/curriculum','งานพัฒนาหลักสูตร');?></li>
          <li><?php echo anchor('login/manager','ผู้บริหาร');?></li>
          <li><?php echo anchor('login/teacher','บุคลากร/อาจารย์');?></li>
          <li><?php echo anchor('login/student','บริการนักเรียน');?></li>
          <li><?php echo anchor('login/parent','บริการผู้ปกครอง');?></li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container -->
  </nav>

  <div class="container">