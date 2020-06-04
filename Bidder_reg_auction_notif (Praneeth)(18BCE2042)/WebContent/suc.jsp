<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
 	<script>
		$(document).ready(function(){
			$("#Modal").modal('show');
		});
	</script>
	<title>Bank</title>
</head>

<!-- 
########
#-BODY-# 
########
-->

<body>

	<!-- 
	##########
	#-NAVBAR-# 
	##########
	-->
	
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<!-- Brand/logo -->
	  	<a class="navbar-brand">Bidder Registration</a>
	  
	  	<!-- Links -->
	 	<ul class="nav navbar-nav ml-auto">
	    	<li class="nav-item">
	      		<a class="nav-link" href="#">Home</a>
	    	</li>
	    	<li class="nav-item">
	      		<a class="nav-link" href="#">Logout</a>
	    	</li>
	  	</ul>
	</nav>
	
	<!-- 
	################
	#-MODAL/POP-UP-# 
	################
	-->
	
	<div class="container-fluid" style="background-color:#FFFFFF; max-width:900px; padding-top:150px">
		<div class="modal modal fade" id="Modal">
	    	<div class="modal-dialog modal-lg modal-dialog-centered">
	      		<div class="modal-content" style="border:green 3px solid;">
	      
	        		<!-- Modal Header -->
	        		<div class="modal-header">
	          			<h4 class="modal-title" style="color:green">Success</h4>
	          			<button type="button" class="close" data-dismiss="modal">&times;</button>
	        		</div>
	        
			        <!-- Modal body -->
			        <div class="modal-body">
			        	You have been <b>registered!</b>
			        </div>
	        
			        <!-- Modal footer -->
			        <div class="modal-footer">
			        	<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
			        </div>
				</div>
			</div>
		</div>
		
		<!-- 
		#################
		#-ALERT ON PAGE-# 
		#################
		-->
		
		<div class="alert alert-success" role="alert">
			<h1 class="alert-heading">Success!</h1>
		  	<p>Congratulations you have been registered as a bidder!<br>Now you can access any auction that is open.</p>
		  	<hr>
		  	<p class="mb-0"><b>Warning!</b><br> If you forget your password or any details have to be updated please approach the nearest bank.</p>
		</div>
	</div>
	
	<!-- Buttons -->
	<div class="form-group">
	    <div class="offset-sm-5" style="color: white;">
	      <a type="button" class="btn btn-primary btn-lg">Home Page</a>
	    </div>
	</div>
</body>
</html>