<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vtex Credentials</title>
<!-- Favicon icon -->
   <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
   <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">

   <!-- Google font-->
   <link href="https://fonts.googleapis.com/css?family=Ubuntu:400,500,700" rel="stylesheet">

   <!-- themify -->
   <link rel="stylesheet" type="text/css" href="assets/icon/themify-icons/themify-icons.css">

   <!-- iconfont -->
   <link rel="stylesheet" type="text/css" href="assets/icon/icofont/css/icofont.css">

   <!-- simple line icon -->
   <link rel="stylesheet" type="text/css" href="assets/icon/simple-line-icons/css/simple-line-icons.css">

   <!-- Required Fremwork -->
   <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap/css/bootstrap.min.css">

   <!-- bash syntaxhighlighter css -->
   <link type="text/css" rel="stylesheet" href="assets/plugins/syntaxhighlighter/styles/shCoreDjango.css" />

   <!-- Style.css -->
   <link rel="stylesheet" type="text/css" href="assets/css/main.css">

   <!-- Responsive.css-->
   <link rel="stylesheet" type="text/css" href="assets/css/responsive.css">
</head>
<body>
	<div class="row">
		<!--Basic Form starts-->
		<div class="col-lg-6">
			<div class="card">
				<div class="card-header">
					<h5 class="card-header-text">Enter Vtex Credentials</h5>
					<div class="f-right">
						<a href="" data-toggle="modal" data-target="#basic-form-Modal"><i
							class="icofont icofont-code-alt"></i></a>
					</div>
				</div>
				<div class="modal fade modal-flex" id="basic-form-Modal"
					tabindex="-1" role="dialog">
					<div class="modal-dialog modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h5 class="modal-title">Code Explanation for Basic Form</h5>
							</div>
							<!-- end of modal-header -->
							<div class="modal-body">
								<pre class="brush: html;">
			                      &lt;note&gt;Write this code inside &lt;form&gt; tag

									/* For Email Address*/

									&lt;div class="form-group"&gt;
									    &lt;label for="exampleInputEmail" class="form-control-label"&gt;Email address&lt;/label&gt;
									        &lt;input type="email" class="form-control" id="exampleInputEmail" placeholder="Enter email"&gt;
									&lt;/div&gt;

									/* For Password*/

									&lt;div class="form-group"&gt;
									    &lt;label for="exampleInputPassword" class="form-control-label"&gt;Password&lt;/label&gt;
									        &lt;input type="password" class="form-control" id="exampleInputPassword" placeholder="Password"&gt;
									&lt;/div&gt;

									/* For checkbox */

									&lt;div class="form-group"&gt;
									    &lt;div class="checkbox checkbox-primary" id="chkremember"&gt;
									            &lt;input type="checkbox"&gt;
									                &lt;label&gt;Remember me&lt;/label&gt;
									    &lt;/div&gt;
									&lt;/div&gt;

									/* for submit button */

									&lt;button type="submit" class="btn btn-success waves-effect waves-light"&gt;Sign in
									&lt;/button&gt;
                      			  </pre>
							</div>
							<!-- end of modal-body -->
						</div>
						<!-- end of modal-content -->
					</div>
					<!-- end of modal-dialog -->
				</div>
				<!-- end of modal -->

				<div class="card-block">
					<p class="m-b-20">
						You will test 3 Vtex Endpoints: Scroll documents, List all SKU Ids and List orders
					</p>

					<form method="post" action="<%=request.getContextPath()%>/Test">
						<div class="form-group">
							<label for="account_name" class="form-control-label">Account name</label> <label id="account_name_error" style="color: red; display:none;">*mandatory field</label>
							<input type="text" class="form-control" id="account_name" name="account_name" placeholder="Enter account name">
						</div>
						<div class="form-group">
							<label for="environment" class="form-control-label">Environment</label> 
							<input type="text" class="form-control" id="environment" name="environment" placeholder="vtexcommercestable" value="vtexcommercestable" readonly>
						</div>
						<div class="form-group">
							<label for="appkey" class="form-control-label">X-VTEX-API-AppKey</label> <label id="appkey_error" style="color: red; display:none;">*mandatory field</label>
							<input type="text" class="form-control" id="appkey" name="appkey" placeholder="Enter the AppKey">
						</div>
						<div class="form-group">
							<label for="apptoken" class="form-control-label">X-VTEX-API-AppToken</label> <label id="apptoken_error" style="color: red; display:none;">*mandatory field</label>
							<input type="text" class="form-control" id="apptoken" name="apptoken" placeholder="Enter the AppToken">
						</div>
						<div class="form-group">
							<label for="data_entity" class="form-control-label">Data Entity (used for Scroll Documents)</label> <label id="data_entity_error" style="color: red; display:none;">*mandatory field</label>
							<input type="text" class="form-control" id="data_entity" name="data_entity" placeholder="Enter the Data Entity Name" value="CL">
						</div>
						<button type="submit" id="submit" class="btn btn-success waves-effect waves-light m-r-30" onclick="validate()">Test</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.js" integrity="sha512-8Z5++K1rB3U+USaLKG6oO8uWWBhdYsM3hmdirnOEWp8h2B1aOikj5zBzlXs8QOrvY9OxEnD2QDkbSKKpfqcIWw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	
	<!-- Required Jqurey -->
   <script src="assets/plugins/jquery/dist/jquery.min.js"></script>
   <script src="assets/plugins/jquery-ui/jquery-ui.min.js"></script>
   <script src="assets/plugins/tether/dist/js/tether.min.js"></script>

   <!-- Required Fremwork -->
   <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

   <!-- waves effects.js -->
   <script src="assets/plugins/Waves/waves.min.js"></script>

   <!-- Scrollbar JS-->
   <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
   <script src="assets/plugins/jquery.nicescroll/jquery.nicescroll.min.js"></script>

   <!--classic JS-->
   <script src="assets/plugins/classie/classie.js"></script>

   <!-- notification -->
   <script src="assets/plugins/notification/js/bootstrap-growl.min.js"></script>

   <!-- Highliter js -->
   <script type="text/javascript" src="assets/plugins/syntaxhighlighter/scripts/shCore.js"></script>
   <script type="text/javascript" src="assets/plugins/syntaxhighlighter/scripts/shBrushJScript.js"></script>
   <script type="text/javascript" src="assets/plugins/syntaxhighlighter/scripts/shBrushXml.js"></script>
   <script type="text/javascript">
      SyntaxHighlighter.all();
   </script>

   <!-- custom js -->
   <script type="text/javascript" src="assets/js/main.min.js"></script>
   <script type="text/javascript" src="assets/pages/elements.js"></script>
   <script src="assets/js/menu.min.js"></script>
   
   <script>
	function validate(){
       
		  
		    if($("#account_name").val().length == 0) {
		    	// window.alert("You have not informed an account name!");
		    	$("#account_name_error").show();
		    	//location.reload(true);
		    }
		    if($("#appkey").val().length == 0) {
		    	// window.alert("Inform the AppKey!");
		    	$("#appkey_error").show();
		    	//location.reload(true);
		    }
		    if($("#apptoken").val().length == 0) {
		    	// window.alert("Inform the AppToken!");
		    	$("#apptoken_error").show();
		    	//location.reload(true);
		    }
		    if($("#data_entity").val().length == 0) {
		    	// window.alert("Data Entity should not be empty!");
		    	$("#data_entity_error").show();
		    	//location.reload(true);
		    }
		  
		    //setTimeout(function(), 3000);
		
   }
	</script>
   
</body>
</html>