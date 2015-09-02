﻿<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Digital City Impulse</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="resources/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect.
    -->
<link rel="stylesheet" href="resources/dist/css/skins/skin-blue.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="resources/js/html5shiv.min.js"></script>
        <script src="resources/js/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Select2 -->
<link rel="stylesheet" href="resources/plugins/select2/select2.min.css">
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="resources/plugins/iCheck/all.css">

<!-- Owl Carousel Assets -->
<link href="resources/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="resources/owl-carousel/owl.theme.css" rel="stylesheet">
<link href="resources/owl-carousel/owl.transitions.css" rel="stylesheet">


<style>
.example-modal .modal {
	position: relative;
	top: auto;
	bottom: auto;
	right: auto;
	left: auto;
	display: block;
	z-index: 1;
}

.example-modal .modal {
	background: transparent !important;
}
</style>

<style>
#owl-demo .owl-item div {
	padding: 5px;
}

#owl-demo .owl-item img {
	display: block;
	width: 100%;
	height: auto;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}
</style>



</head>
<!--
  BODY TAG OPTIONS:
  =================
  Apply one or more of the following classes to get the
  desired effect
  |---------------------------------------------------------|
  | SKINS         | skin-blue                               |
  |               | skin-black                              |
  |               | skin-purple                             |
  |               | skin-yellow                             |
  |               | skin-red                                |
  |               | skin-green                              |
  |---------------------------------------------------------|
  |LAYOUT OPTIONS | fixed                                   |
  |               | layout-boxed                            |
  |               | layout-top-nav                          |
  |               | sidebar-collapse                        |
  |               | sidebar-mini                            |
  |---------------------------------------------------------|
  -->
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<!-- Main Header -->
		<header class="main-header">

			<!-- Logo -->
			<a href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>DCI</b></span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>DigitalCityImpulse</b></span>
			</a>

			<!-- Header Navbar -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
				<!-- Navbar Right Menu -->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->

						<!-- User Account Menu -->
						<li class="dropdown user user-menu">
							<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <!-- The user image in the navbar-->
								<img src="http://tp3.sinaimg.cn/3919059838/180/5732413570/0"
								class="user-image" alt="User Image"> <!-- hidden-xs hides the username on small devices so only the image appears. -->
								<span class="hidden-xs">Arwen Hong</span>
						</a>
							<ul class="dropdown-menu">
								<!-- The user image in the menu -->
								<li class="user-header"><img
									src="http://tp3.sinaimg.cn/3919059838/180/5732413570/0"
									class="img-circle" alt="User Image">
									<p>
										Arwen Hong - ITer in the future <small>Member since
											Aug. 2015</small>
									</p></li>
								<!-- Menu Body -->
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="#" class="btn btn-default btn-flat">Profile</a>
									</div>
									<div class="pull-right">
										<a href="#" class="btn btn-default btn-flat">Sign out</a>
									</div>
								</li>
							</ul>
						</li>
						<!-- Control Sidebar Toggle Button -->
						<li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">

			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">

				<!-- Sidebar user panel (optional) -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="http://tp3.sinaimg.cn/3919059838/180/5732413570/0"
							class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>Arwen Hong</p>
						<!-- Status -->
						<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div>


				<!-- Sidebar Menu -->
				<ul class="sidebar-menu">
					<li class="header"></li>
					<li><a href="#"><i class="fa fa-th-large"></i> <span>Dashboard</span></a></li>
					<li class="header">USER</li>
					<!-- Optionally, you can add icons to the links -->
					<li><a href="#"><i class="fa fa-map-pin"></i> <span>My
								Regions</span></a></li>
					<li><a href="#"><i class="fa fa-area-chart"></i> <span>My
								Anlysis</span></a></li>
					<li><a href="#"><i class="fa fa-files-o"></i> <span>My
								Annotation</span></a></li>
					<li class="header">SYSTEM</li>
					<li><a href="#"><i class="fa fa-map-marker"></i> <span>Msg
								on map</span></a></li>
					<li><a href="#"><i class="fa fa-bar-chart"></i> <span>Data
								Anlysis</span></a></li>
					<li class="active"><a href="#"><i class="fa fa-book"></i>
							<span>Corpus Annotation</span></a></li>
				</ul>
				<!-- /.sidebar-menu -->
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Corpus Annotation <small>Please help us do the corpus
						annotation.</small>
				</h1>
			</section>

			<!-- Main content -->
			<section class="content">

				<!-- Annotation Settings and Start Button -->
				<div class="row">
					<!-- Annotation Settings -->
					<div class="col-md-8">
						<div class="box box-default">
							<div class="box-header with-border">
								<h3 class="box-title">Annotation Settings</h3>
							</div>
							<!-- /.box-header -->
							<div class='box-body'>
								<div class="col-md-12">
									<div class="form-group">
										<label>Message Language</label> <select
											class="form-control select2" id="annotation-lang"
											multiple="multiple"
											data-placeholder="Select Message Language"
											style="width: 100%;">
											<option value="en">English</option>
											<option value="fr">French</option>
											<option value="zh-Hans">Chinese(Simplified)</option>
											<option value="zh-Hant">Chinese (Traditional)</option>
											<option value="ja">Japanese</option>
											<option value="de">German</option>
											<option value="ar">Arabic</option>
										</select>
									</div>
									<!-- /.form-group -->
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label>Annotation Part</label> <br> <label
											style="font-weight: normal"> <input type="radio"
											name="annotation-part" value="word-and-img" class="minimal"
											checked> Annotate both word and images
										</label> <br> <label style="font-weight: normal"> <input
											type="radio" name="annotation-part" value="word-only"
											class="minimal"> Annotate only word
										</label> <br> <label style="font-weight: normal"> <input
											type="radio" name="annotation-part" value="img-only"
											class="minimal"> Annotate only images
										</label>
									</div>
								</div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->

					</div>
					<!-- End of Annotation Settings -->

					<!-- Start Button -->
					<div class="col-md-4">
						<button class="btn btn-app btn-flat" id="start-annotation"
							data-toggle="modal" data-target="#annotation-modal">
							<i class="fa fa-play-circle"></i> Start Annotation!
						</button>
					</div>
					<!-- End of Start Button -->

				</div>
				<!-- /.row -->


			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->


		<!--Annotation Modal-->
		<div class="example-modal modal fade" id="annotation-modal"
			tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
			aria-hidden="true">
			<div class="modal">
				<div class="modal-dialog">
					<div class="modal-content">

						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title">Annotation Module</h4>
						</div>
						<!-- /.modal-header -->

						<div class="modal-body">
							<div class="container-fluid">
								<div class="row">
									<ul class="nav">


										<br>
										<!-- Image Annotation Part -->
										<li><div class="row">
												<div class="col-md-12">
													<div id="owl-demo" class="owl-carousel">
														<div>
															<center>
																<p>Beautiful sky........綺麗なそら。雨以外の毎日は本当に癒される。</p>
															</center>
															<div class="btn-group col-md-12">
																<center>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-smile-o"></i>Positive
																	</button>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-meh-o"></i>Neutral
																	</button>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-frown-o"></i>Negative
																	</button>
																</center>
															</div>
														</div>
														<div>
															<img class="col-md-12"
																src="assets/img/thumbsgallery/image1.jpg" />
															<div class="btn-group col-md-12">
																<center>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-smile-o"></i>Positive
																	</button>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-meh-o"></i>Neutral
																	</button>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-frown-o"></i>Negative
																	</button>
																</center>
															</div>
														</div>
														<div>
															<img class="col-md-12"
																src="assets/img/thumbsgallery/image2.jpg" />
															<div class="btn-group col-md-12">
																<center>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-smile-o"></i>Positive
																	</button>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-meh-o"></i>Neutral
																	</button>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-frown-o"></i>Negative
																	</button>
																</center>
															</div>
														</div>
														<div>
															<img class="col-md-12"
																src="assets/img/thumbsgallery/image3.jpg" />
															<div class="btn-group col-md-12">
																<center>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-smile-o"></i>Positive
																	</button>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-meh-o"></i>Neutral
																	</button>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-frown-o"></i>Negative
																	</button>
																</center>
															</div>
														</div>
														<div>
															<img class="col-md-12"
																src="assets/img/thumbsgallery/image4.jpg" />
															<div class="btn-group col-md-12">
																<center>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-smile-o"></i>Positive
																	</button>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-meh-o"></i>Neutral
																	</button>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-frown-o"></i>Negative
																	</button>
																</center>
															</div>
														</div>
														<div>
															<img class="col-md-12"
																src="assets/img/thumbsgallery/image5.jpg" />
															<div class="btn-group col-md-12">
																<center>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-smile-o"></i>Positive
																	</button>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-meh-o"></i>Neutral
																	</button>
																	<button type="button" class="btn btn-app">
																		<i class="fa fa-frown-o"></i>Negative
																	</button>
																</center>
															</div>
														</div>
													</div>
													<!--/.owl-demo-->
												</div>
												<!-- /.col-md-12 -->
											</div></li>
										<!-- End of Image Annotation Part -->

									</ul>
								</div>
							</div>
							<!-- /.container-fluid -->
						</div>
						<!-- /.modal-body -->

						<div class="modal-footer">
							<button type="button" id="btn-skip"
								class="btn btn-danger pull-left">Skip</button>
							<button type="button" id="btn-next" class="btn btn-success">Next</button>
						</div>
						<!-- /.modal-footer -->

					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
		</div>
		<!-- /.example-modal -->


		<!-- Main Footer -->
		<footer class="main-footer">
			<!-- To the right -->
			<div class="pull-right hidden-xs">Anything you want</div>
			<!-- Default to the left -->
			<strong>Copyright &copy; 2015 <a href="#">Company</a>.
			</strong> All rights reserved.
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li class="active"><a href="#control-sidebar-home-tab"
					data-toggle="tab"><i class="fa fa-home"></i></a></li>
				<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
						class="fa fa-gears"></i></a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane active" id="control-sidebar-home-tab">
					<h3 class="control-sidebar-heading">Recent Activity</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript::;"> <i
								class="menu-icon fa fa-birthday-cake bg-red"></i>
								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
									<p>Will be 23 on April 24th</p>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

					<h3 class="control-sidebar-heading">Tasks Progress</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript::;">
								<h4 class="control-sidebar-subheading">
									Custom Template Design <span
										class="label label-danger pull-right">70%</span>
								</h4>
								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-danger"
										style="width: 70%"></div>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

				</div>
				<!-- /.tab-pane -->
				<!-- Stats tab content -->
				<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
					Content</div>
				<!-- /.tab-pane -->
				<!-- Settings tab content -->
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<form method="post">
						<h3 class="control-sidebar-heading">General Settings</h3>
						<div class="form-group">
							<label class="control-sidebar-subheading"> Report panel
								usage <input type="checkbox" class="pull-right" checked>
							</label>
							<p>Some information about this general settings option</p>
						</div>
						<!-- /.form-group -->
					</form>
				</div>
				<!-- /.tab-pane -->
			</div>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED JS SCRIPTS -->

	<!-- jQuery 2.1.4 -->
	<script src="resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!-- Bootstrap 3.3.5 -->
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<!-- DataTables -->
	<script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="resources/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<!-- SlimScroll -->
	<script src="resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="resources/plugins/fastclick/fastclick.min.js"></script>
	<!-- AdminLTE App -->
	<script src="resources/dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="resources/dist/js/demo.js"></script>
	<!-- page script -->

	<!-- Select2 -->
	<script src="resources/plugins/select2/select2.full.min.js"></script>
	<!-- iCheck 1.0.1 -->
	<script src="resources/plugins/iCheck/icheck.min.js"></script>

	<!-- owl-carousel -->
	<script src="resources/owl-carousel/owl.carousel.js"></script>
	<script src="resources/owl-carousel/assets/js/bootstrap-collapse.js"></script>
	<script src="resources/owl-carousel/assets/js/bootstrap-transition.js"></script>
	<script src="resources/owl-carousel/assets/js/bootstrap-tab.js"></script>


	<script>
		$(function() {
			$("#example1").DataTable();
			$('#example2').DataTable({
				"paging" : true,
				"lengthChange" : false,
				"searching" : false,
				"ordering" : true,
				"info" : true,
				"autoWidth" : false
			});
			//Initialize Select2 Elements
			$(".select2").select2();
			//iCheck for checkbox and radio inputs
			$('input[type="checkbox"].minimal, input[type="radio"].minimal')
					.iCheck({
						checkboxClass : 'icheckbox_minimal-blue',
						radioClass : 'iradio_minimal-blue'
					});

			//Operations when click on start-annotation button
			$("#start-annotation")
					.click(
							function() {

								//get annotation language list
								annotation_lang = '';
								$("#annotation-lang option").each(function() {
									if (this.selected)
										annotation_lang += ' ' + this.value;
								});

								//get annotation part option
								annotation_part = $(
										'input[type="radio"][name="annotation-part"]:checked')
										.val();

								alert('selected language:' + annotation_lang
										+ '\nannotation part is:'
										+ annotation_part);

								//get first msg from server

								//Operations when click on skip button
								$("#btn-skip").click(function() {

									//get new mag from server

									//remove old msg and append new msg

								});

								//Operations when click on next button
								$("#btn-next").click(
										function() {

											//send annotated data to server
											$.post(send_msg_url, annotated_msg,
													callback);

											//get new mag from server
											$.get(get_msg_url, callback);

											//remove old msg and append new msg

										});

							});

			//owl-carousel
			$("#owl-demo").owlCarousel({
				navigation : true,
				paginationSpeed : 1000,
				goToFirstSpeed : 2000,
				singleItem : true,
				autoHeight : true,
				transitionStyle : "fade"
			});

		});
	</script>


	<!-- Optionally, you can add Slimscroll and FastClick plugins.
         Both of these plugins are recommended to enhance the
         user experience. Slimscroll is required when using the
         fixed layout. -->
</body>
</html>
