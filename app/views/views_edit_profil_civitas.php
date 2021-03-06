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
    <script src="<?php echo $url;?>assets/bower_components/jquery/dist/jquery.js"></script>
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
                <a class="navbar-brand" href="<?php echo $url;?>edit-profil-civitas"><?php echo $navbar;?></a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i><span> <?php echo $name;?> (<?php echo $username;?>) </span> <i class="fa fa-caret-down"></i>
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
                        <li>
                            <a href="<?php echo $url;?>beranda-civitas"><i class="fa fa-dashboard fa-fw"></i> Beranda</a>
                        </li>
                        <li>
                            <a href="<?php echo $url;?>edit-profil-civitas"><i class="fa fa-user fa-fw"></i> Edit Profil</a>
                        </li>
                        <li>
                            <a href="<?php echo $url;?>ganti-password-hotspot"><i class="fa fa-lock fa-fw"></i> Ganti Password Hotspot</a>
                        </li>
                        <li>
                            <a href="<?php echo $url;?>ganti-password-civitas"><i class="fa fa-lock fa-fw"></i> Ganti Password Civitas</a>
                        </li>
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
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" form action="<?php echo $url;?>validasi-edit-profil-civitas" method="post">                        
                                            <input id="id" name="id" value="<?php echo $edit_profil->id;?>" type="hidden">
                                            <div class="form-group">
                                                <label>Nama</label>
                                                <input id="name" name="name" value="<?php echo $edit_profil->name;?>" type="text" class="form-control" placeholder="Nama">
                                            </div>

                                            <div class="form-group">
                                                <label>Email</label>
                                                <input id="email" name="email" value="<?php echo $edit_profil->email;?>" type="text" class="form-control" placeholder="Email">
                                            </div>

                                            <div class="form-group">
                                                <label>Nomor HP</label>
                                                <input id="phone" name="phone" value="<?php echo $edit_profil->phone;?>" type="text" class="form-control" placeholder="Nomor HP">
                                            </div>
                                            
                                            <div class="form-group">
                                                <label>Alamat</label>
                                                <input id="address" name="address" value="<?php echo $edit_profil->address;?>" type="text" class="form-control" placeholder="Alamat">
                                            </div>
                                            
                                        <button type="submit" value="Submit" class="btn btn-primary">Submit</button>
                                    </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    <!-- jQuery -->
    <script src="<?php echo $url;?>assets/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo $url;?>assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="<?php echo $url;?>assets/bower_components/metisMenu/dist/metisMenu.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="<?php echo $url;?>assets/dist/js/sb-admin-2.js"></script>
</body>

</html>
