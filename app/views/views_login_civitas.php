<!DOCTYPE html>
<html lang="en">
    <head> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="<?php echo $url;?>assets/bootstrap/css/bootstrap.css">
        <!-- Website CSS style -->
        <link rel="stylesheet" type="text/css" href="<?php echo $url;?>assets/css_custom/main.css">
        <!-- Website Font style -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <!-- Google Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
        <title><?php echo $titlebar;?></title>
	</head>
	<body>
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">Login Web Civitas JTIF</h1>
	               		<!--<hr />-->
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="<?php echo $url;?>login">
                                                    <div class="form-group">
							<label for="username" class="cols-sm-2 control-label">NIP/NIM</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="username" id="username"  placeholder="Masukan NIP/NIM Anda" required/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                                        <input type="password" class="form-control" name="password" id="password"  placeholder="Masukan Password Anda" required/>
								</div>
							</div>
                                                </div>
                                            
                                                <div class="login-register" style="text-align:right;">
                                                    <a href="<?php echo $url;?>email_recovery/">Lupa Password Web Civitas?</a>
                                                </div>
                                       
						<div class="form-group ">
                                                    <button type="submit" name="submit" class="btn btn-primary btn-lg btn-block login-button">Masuk</button>
                                                    <a href="<?php echo $url;?>pedoman-web-civitas" class="btn btn-danger btn-lg btn-block login-button">Pedoman Web Civitas JTIF</a>
                                                    <a href="http://hotspotjtif.unesa.ac.id" class="btn btn-success btn-lg btn-block login-button">Kembali ke Login Hotspot JTIF</a>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="<?php echo $url;?>assets/bootstrap/js/bootstrap.js"></script>
        </body>
</html>