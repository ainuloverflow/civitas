<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?php echo $titlebar;?></title>

    <link href="<?php echo $url;?>assets/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo $url;?>assets/dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="<?php echo $url;?>assets/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo $url;?>ubah-password-hotspot"><?php echo $navbar;?></a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i><span> <?php echo $name;?> (<?php echo $username;?>);?> </span> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="<?php echo $url;?>logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

             <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
     <!-- /#wrapper -->
      <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><?php echo $kontentitle;?></h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <div class="row">
                <div class="col-lg-4">
                    <form action="<?php echo $url;?>edit-password-hotspot" method="post">
                        <div class="form-group">
                            <p><?php echo $validasi->errorMessages('password', '<p style="color:red">', '</p>');?></p>
                            <label>Password Baru</label>
                            <input id="password" name="password" value="<?php echo $validasi->value('password');?>" type="password" class="form-control" placeholder="Password Baru">
                        </div>

                        <div class="form-group">
                            <p><?php echo $validasi->errorMessages('konfirmasi_password', '<p style="color:red">', '</p>');?></p>
                            <label>Konfirmasi Password Baru</label>
                            <input id="konfirmasi_password" name="konfirmasi_password" value="<?php echo $validasi->value('konfirmasi_password');?>" type="password" class="form-control" placeholder="Konfirmasi Password Baru">
                        </div>        
                        <button type="submit" value="Submit" class="btn btn-primary">Simpan</button>
                    </form>
                </div>
            </div>
    </div>
</div>
    <script src="<?php echo $url;?>assets/bower_components/jquery/dist/jquery.js"></script>
    <script src="<?php echo $url;?>assets/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="<?php echo $url;?>assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="<?php echo $url;?>assets/dist/js/sb-admin-2.js"></script>
</body>

</html>
