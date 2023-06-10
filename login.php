<?php include('header.php');?>

</div>
<div class="content" style="background-image: url(https://images.unsplash.com/photo-1580403272353-17317f175e63?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80">
	<div class="wrap">
		<div class="content-top" style="min-height:300px;padding:50px">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
				  <div class="panel-heading">Login</div>
				  <div class="panel-body">
				  	<?php include('msgbox.php');?>
				<p class="login-box-msg">Sign in</p>
				<div style="text-align: left; padding-left: 10px;">
					<h2>Flair8cafe</h2>
				</div>
				<form action="process_login.php" method="post">
      	<div class="form-group has-feedback">
        	<input name="Email" type="text" size="25" placeholder="Email" class="form-control" placeholder="Email"/>
        	<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      	</div>
      	<div class="form-group has-feedback">
        	<input name="Password" type="password" size="25" placeholder="Password" class="form-control" placeholder="Password" />
        	<span class="glyphicon glyphicon-lock form-control-feedback"></span>
      	</div>
      	<div class="form-group">
          <button type="submit" class="btn btn-primary">Login</button>
          <p class="login-box-msg" style="padding-top:20px">Don't have an account? <a href="registration.php">Register</a></p>
      	</div>
    	</form>
		</div>
	</div>
	</div>
	<div class="clear"></div>
</div>
<?php include('footer.php');?>
</div>
