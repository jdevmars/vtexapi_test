<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vtex Credentials Results</title>
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
               <div class="main-header">
                  <h4>Test results (${time})</h4>
               </div>
            </div>
	<div class="row dashboard-header">
               <div class="col-lg-3 col-md-6">
                  <div class="card dashboard-product">
                     <span>Scroll documents</span>
                     <h2 class="dashboard-total-products"><%=request.getAttribute("scroll_code")%></h2>
                     <span class="label label-warning"><%=request.getAttribute("scroll_message")%></span><a href="https://developers.vtex.com/docs/api-reference/master-data-api-v2#get-/api/dataentities/-dataEntityName-/scroll" target="_blank">Scroll documents</a>
                     <div class="side-box">
                        <i class="ti-signal text-warning-color"></i>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6">
                  <div class="card dashboard-product">
                     <span>List all SKU Ids</span>
                     <h2 class="dashboard-total-products"><%=request.getAttribute("list_skus_code")%></h2>
                     <span class="label label-warning"><%=request.getAttribute("list_skus_message")%></span><a href="https://developers.vtex.com/docs/api-reference/catalog-api#get-/api/catalog_system/pvt/sku/stockkeepingunitids" target="_blank">List all SKU IDs</a>
                     <div class="side-box ">
                        <i class="ti-signal text-warning-color"></i>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6">
                  <div class="card dashboard-product">
                     <span> List orders</span>
                     <h2 class="dashboard-total-products"><%=request.getAttribute("list_orders_code")%></h2>
                     <span class="label label-warning"><%=request.getAttribute("list_orders_message")%></span><a href="https://developers.vtex.com/docs/api-reference/orders-api#get-/api/oms/pvt/orders" target="_blank"> List orders</a>
                     <div class="side-box">
                        <i class="ti-signal text-warning-color"></i>
                     </div>
                  </div>
               </div>
            </div>
	<div class="row">
		<!--Basic Form starts-->
		<div class="col-lg-12">
			<div class="card">
				<div class="card-header">
					<h5 class="card-header-text">Here you have the results:</h5>
					<div class="f-right">
						<a href="" data-toggle="modal" data-target="#basic-form-Modal"><i
							class="icofont icofont-code-alt"></i></a>
					</div>
				</div>
				<div class="card-block">
					<p class="m-b-20">
						Results for: <span style="color:red">Scroll documents</span>
					</p>
					<div><span style="color:blue">Response code</span>: <%=request.getAttribute("scroll_code")%></div>
					<div><span style="color:blue">Response message</span>: <%=request.getAttribute("scroll_message")%></div>
					<div><span style="color:blue">Response body</span>: <%=request.getAttribute("scroll_body")%></div>
				</div>
				<hr/>
				<div class="card-block">
					<p class="m-b-20">
						Results for: <span style="color:red">List all SKU Ids</span>
					</p>
					<div><span style="color:blue">Response code</span>: <%=request.getAttribute("list_skus_code")%></div>
					<div><span style="color:blue">Response message</span>: <%=request.getAttribute("list_skus_message")%></div>
					<div><span style="color:blue">Response body</span>: <%=request.getAttribute("list_skus_body")%></div>
				</div>
				<hr/>
				<div class="card-block">
					<p class="m-b-20">
						Results for: <span style="color:red">List orders</span>
					</p>
					<div><span style="color:blue">Response code</span>: <%=request.getAttribute("list_orders_code")%></div>
					<div><span style="color:blue">Response message</span>: <%=request.getAttribute("list_orders_message")%></div>
					<div><span style="color:blue">Response body</span>: <%=request.getAttribute("list_orders_body")%></div>
				</div>
			</div>
		</div>
	</div>
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
</body>
</html>