<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="">
      <meta name="author" content="">
      <title><?=label('title');?> <?= $this->setting->companyname;?></title>
      <!-- jQuery -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery-2.2.2.min.js"></script>
      <script type="text/javascript" src="<?=base_url()?>assets/js/loading.js"></script>
      <!-- normalize & reset style -->
      <link rel="stylesheet" href="<?=base_url();?>assets/css/normalize.min.css"  type='text/css'>
      <link rel="stylesheet" href="<?=base_url();?>assets/css/reset.min.css"  type='text/css'>
      <link rel="stylesheet" href="<?=base_url();?>assets/css/jquery-ui.css"  type='text/css'>
      <!-- google lato font -->
      <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'>
      <!-- Bootstrap Core CSS -->
      <link href="<?=base_url();?>assets/css/bootstrap.min.css" rel="stylesheet">
      <!-- bootstrap-horizon -->
      <link href="<?=base_url();?>assets/css/bootstrap-horizon.css" rel="stylesheet">
      <!-- datatable style -->
      <link href="<?php echo base_url('assets/datatables/css/dataTables.bootstrap.css')?>" rel="stylesheet">
      <!-- font awesome -->
      <link rel="stylesheet" href="<?=base_url();?>assets/css/font-awesome.min.css">
      <!-- include summernote css-->
      <link href="<?=base_url();?>assets/css/summernote.css" rel="stylesheet">
      <!-- waves -->
      <link rel="stylesheet" href="<?=base_url()?>assets/css/waves.min.css">
      <!-- daterangepicker -->
      <link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/css/daterangepicker.css" />
      <!-- css for the preview keyset extension -->
      <link href="<?=base_url()?>assets/css/keyboard-previewkeyset.css" rel="stylesheet">
      <!-- keyboard widget style -->
      <link href="<?=base_url()?>assets/css/keyboard.css" rel="stylesheet">
      <!-- Select 2 style -->
      <link href="<?=base_url()?>assets/css/select2.min.css" rel="stylesheet">
      <!-- Sweet alert swal -->
      <link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/sweetalert.css">
      <!-- datepicker css -->
      <link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/css/bootstrap-datepicker.min.css">
      <!-- Custom CSS -->
      <link href="<?=base_url()?>assets/css/Style-<?=$this->setting->theme?>.css" rel="stylesheet">
      <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
         <div class="container-fluid">
            <div class="navbar-header">
               <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                 <span class="sr-only">Toggle navigation</span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
               </button>
            </div>
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
               <ul class="nav navbar-nav">
                  <?php if($this->user->role === "sales"){?><li style="background-color: #7d0599" class="flat-box"><a style="color: white" href="#C4"><i class="fa fa-search"></i> <b> PRODUCT SEARCH</b></a></li><?php } ?>

                  <li style="background-color: #08990e" class="flat-box"><a style="color: white" href="#C5"><i class="fa fa-credit-card"></i> <b> TABLES</b></a></li>

<?php if($this->user->role === "sales"){?><li style="background-color: #FF4500" class="flat-box"><a style="color: white"  href="#C6"><i class="fa fa-money"></i> <b>PAYMENT</b></a></li><?php } ?>
                 <?php if($this->user->role === "admin"){?><li class="flat-box"><a href="<?=base_url()?>products"><i class="fa fa-archive"></i> <?=label("Product");?></a></li><?php } ?>
                   <?php if($this->user->role === "admin"){?><li class="dropdown">
                    <a href="#" class="dropdown-toggle flat-box" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-users"></i> <?=label("People");?> <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                       <li class="flat-box"><a href="<?=base_url()?>customers"><i class="fa fa-user"></i> <?=label("Customers");?></a></li>
                       <li class="flat-box"><a href="<?=base_url()?>suppliers"><i class="fa fa-truck"></i> <?=label("Suppliers");?></a></li>
                    </ul>
                 </li><?php } ?>
                 
                   <?php if($this->user->role === "sales"){?><li style="visibility: hidden" class="flat-box"><a href="<?=base_url()?>sales"><i class="fa fa-ticket"></i> <?=label("Sales");?></a></li><?php } ?>
                    <?php if($this->user->role === "sales"){?><li style="visibility: hidden" class="flat-box"><a href="<?=base_url()?>sales"><i class="fa fa-ticket"></i> <?=label("Sales");?></a></li><?php } ?>
                    <?php if($this->user->role === "sales"){?><li style="visibility: hidden" class="flat-box"><a href="<?=base_url()?>sales"><i class="fa fa-ticket"></i> <?=label("Sales");?></a></li><?php } ?>
                     <?php if($this->user->role === "sales"){?><li style="visibility: hidden" class="flat-box"><a href="<?=base_url()?>sales"><i class="fa fa-ticket"></i> <?=label("Sales");?></a></li><?php } ?>
                     
<?php if($this->user->role === "admin"){?><li class="flat-box"><a href="<?=base_url()?>sales"><i class="fa fa-ticket"></i> <?=label("Sales");?></a></li><?php } ?>
                   <?php if($this->user->role === "admin"){?><li class="flat-box"><a href="<?=base_url()?>expences"><i class="fa fa-usd"></i> <?=label("Expense");?></a></li><?php } ?>
                   <?php if($this->user->role === "admin"){?><li class="dropdown">
                    <a href="#" class="dropdown-toggle flat-box" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-bookmark"></i> <?=label("Categories");?> <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                       <li class="flat-box"><a href="<?=base_url()?>categories"><i class="fa fa-archive"></i> <?=label("Product");?></a></li>
                       <li class="flat-box"><a href="<?=base_url()?>categorie_expences"><i class="fa fa-usd"></i> <?=label("Expense");?></a></li>
                    </ul>
                 </li><?php } ?>
                 <?php if($this->user->role === "admin"){?><li class="flat-box"><a href="<?=base_url()?>settings?tab=setting"><i class="fa fa-cogs"></i> <?=label("Setting");?></a></li><?php } ?>
                 <?php if($this->user->role === "admin"){?><li class="flat-box"><a href="<?=base_url()?>stats"><i class="fa fa-line-chart"></i> <?=label("Reports");?></a></li><?php } ?>
                   <li  style="background-color: #990000" class="flat-box"><a  style="color: white" href="<?=base_url()?>logout" title="<?=label('LogOut');?>"><i class="fa fa-sign-out fa-lg"></i> OUT</a></li>
               </ul>

            </div>
            <div id="loadingimg"></div>
         </div>
         <!-- /.container -->
      </nav>
      <!-- Page Content -->


      <?=$yield?>




      <!-- slim scroll script -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.slimscroll.min.js"></script>
      <!-- waves material design effect -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/waves.min.js"></script>
      <!-- Bootstrap Core JavaScript -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/bootstrap.min.js"></script>
      <!-- keyboard widget dependencies -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.keyboard.js"></script>
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.keyboard.extension-all.js"></script>
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.keyboard.extension-extender.js"></script>
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.keyboard.extension-typing.js"></script>
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.mousewheel.js"></script>
      <!-- select2 plugin script -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/select2.min.js"></script>
      <!-- dalatable scripts -->
      <script src="<?php echo base_url('assets/datatables/js/jquery.dataTables.min.js')?>"></script>
      <script src="<?php echo base_url('assets/datatables/js/dataTables.bootstrap.js')?>"></script>
      <!-- summernote js -->
      <script src="<?=base_url()?>assets/js/summernote.js"></script>
      <!-- chart.js script -->
      <script src="<?=base_url()?>assets/js/Chart.js"></script>
      <!-- moment JS -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/moment.min.js"></script>
      <!-- Include Date Range Picker -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/daterangepicker.js"></script>
      <!-- Sweet Alert swal -->
      <script src="<?=base_url()?>assets/js/sweetalert.min.js"></script>
      <!-- datepicker script -->
      <script src="<?=base_url()?>assets/js/bootstrap-datepicker.min.js"></script>
      <!-- creditCardValidator script -->
      <script src="<?=base_url()?>assets/js/jquery.creditCardValidator.js"></script>
      <!-- creditCardValidator script -->
      <script src="<?=base_url()?>assets/js/credit-card-scanner.js"></script>
      <script src="<?=base_url()?>assets/js/jquery.redirect.js"></script>
      <!-- ajax form -->
      <script src="<?=base_url()?>assets/js/jquery.form.min.js"></script>
      <!-- custom script -->
      <script src="<?=base_url()?>assets/js/app.js"></script>
   </body>
</html>