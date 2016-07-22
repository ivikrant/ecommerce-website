<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.Controller.SignupUserServlet"%>
<%@page import="com.Bean.SignupBean"%>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="utf-8">
	<title>Admin Control Panel</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Smart City Gurgaon">
	<meta name="author" content="Vikrant Choudhary ">

	<!-- The styles -->
	<link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/charisma-app.css" rel="stylesheet">
	<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='css/fullcalendar.css' rel='stylesheet'>
	<link href='css/fullcalendar.print.css' rel='stylesheet'  media='print'>
	<link href='css/chosen.css' rel='stylesheet'>
	<link href='css/uniform.default.css' rel='stylesheet'>
	<link href='css/colorbox.css' rel='stylesheet'>
	<link href='css/jquery.cleditor.css' rel='stylesheet'>
	<link href='css/jquery.noty.css' rel='stylesheet'>
	<link href='css/noty_theme_default.css' rel='stylesheet'>
	<link href='css/elfinder.min.css' rel='stylesheet'>
	<link href='css/elfinder.theme.css' rel='stylesheet'>
	<link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
	<link href='css/opa-icons.css' rel='stylesheet'>
	<link href='css/uploadify.css' rel='stylesheet'>
	<link rel="shortcut icon" href="img/favicon.ico">
		
</head>

<%
	if(session.getAttribute("admin_name")!=null){
		if(session.getAttribute("new_page")!=null){
			response.sendRedirect("newAdminIndex.jsp");
		}
%>

<body>
		<!-- topbar starts -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="AdminLoginServlet"> <img alt="Charisma Logo" src="images/home/smartcitylogo.png" /> </a>
				
				<!-- theme selector starts -->
				<div class="btn-group pull-right theme-container" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-tint"></i><span class="hidden-phone"> Change Theme / Skin</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" id="themes">
						<li><a data-value="classic" href="#"><i class="icon-blank"></i> Classic</a></li>
						<li><a data-value="cerulean" href="#"><i class="icon-blank"></i> Cerulean</a></li>
						<li><a data-value="cyborg" href="#"><i class="icon-blank"></i> Cyborg</a></li>
						<li><a data-value="redy" href="#"><i class="icon-blank"></i> Redy</a></li>
						<li><a data-value="journal" href="#"><i class="icon-blank"></i> Journal</a></li>
						<li><a data-value="simplex" href="#"><i class="icon-blank"></i> Simplex</a></li>
						<li><a data-value="slate" href="#"><i class="icon-blank"></i> Slate</a></li>
						<li><a data-value="spacelab" href="#"><i class="icon-blank"></i> Spacelab</a></li>
						<li><a data-value="united" href="#"><i class="icon-blank"></i> United</a></li>
					</ul>
				</div>
				<!-- theme selector ends -->
				
				<!-- user dropdown starts -->
				<div class="btn-group pull-right" >
				<%
					if(session.getAttribute("admin_name")!=null){
				%>
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-user"></i><span class="hidden-phone"> ${admin_name}</span>
						<span class="caret"></span>
					</a>
				<%
					} else {
				%>
					<li><a href="AdminLoginServlet" class="ajax-link"><i class="icon-lock"><span class="hidden-tablet"></span></i></a></li>
				<%
					}
				%>			
					<ul class="dropdown-menu">
						<li><a href="AdminSignupServlet?id=<%=session.getAttribute("reg_id") %>&&process=view">Profile</a></li>
						<li class="divider"></li>
						<li><a href="AdminLoginServlet">Logout</a></li>
					</ul>
				</div>
				<!-- user dropdown ends -->		
				
				<div class="top-nav nav-collapse">
					<ul class="nav">
						
						<li>
							<form class="navbar-search pull-left" action="SearchServlet" >
								<input placeholder="Search Admin" class="search-query span2" name="query" type="text">
								<input type="submit" value="search">
							</form>
						</li>
						
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<!-- topbar ends -->
		<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- left menu starts -->
			<div class="span2 main-menu-span">
				<div class="well nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li class="nav-header hidden-tablet">Control Panel</li>
						<li><a class="ajax-link" href="AdminIndex.jsp"><i class="icon-home"></i><span class="hidden-tablet"> Dashboard</span></a></li>
						<li><a href="MessageServlet"><i class="icon-lock"></i><span class="hidden-tablet"> Inbox</span></a></li>
						<li><a href="ReviewServlet"><i class="icon-globe"></i> <span class="hidden-tablet"> Reviews</span></a></li>
						<li class="nav-header hidden-tablet">Categories</li>
						
						<li><a href="EnterCategories.jsp"><i class="icon-edit"></i><span class="hidden-tablet"> Add Categories</span></a></li>
						<li><a href="SubCategoryServlet"><i class="icon-edit"></i><span class="hidden-tablet"> Add SubCategories</span></a></li>
						<li><a href="AdminShow.jsp?mypage=EnterItem&&head=Add Products"><i class="icon-edit"></i><span class="hidden-tablet"> Add Items</span></a></li>
						<li><a href="CategoryServlet"><i class="icon-list-alt"></i><span class="hidden-tablet"> Show Categories</span></a></li>
						<li><a href="SubCategoryServlet"><i class="icon-list-alt"></i><span class="hidden-tablet"> Show SubCategories</span></a></li>
						<li><a href="IndexPicsServlet"><i class="icon-picture"></i><span class="hidden-tablet"> Big Image</span></a></li>
						
						<li class="nav-header hidden-tablet">Users</li>
						<li><a href="AdminSignup.jsp"><i class="icon-font"></i><span class="hidden-tablet"> Add Admin</span></a></li>
						<li><a href="SignupUserServlet"><i class="icon-eye-open"></i><span class="hidden-tablet"> Show Users</span></a></li>
						<li><a href="AdminSignupServlet"><i class="icon-eye-open"></i><span class="hidden-tablet"> Show Admins</span></a></li>
					</ul>
					<label id="for-is-ajax" class="hidden-tablet" for="is-ajax"><input id="is-ajax" type="checkbox"> Ajax on menu</label>
				</div><!--/.well -->
			</div><!--/span-->
			<!-- left menu ends -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<div id="content" class="span10">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">Home</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">Dashboard</a>
					</li>
				</ul>
			</div>
			<div class="sortable row-fluid">
				<a data-rel="tooltip" title="<%=session.getAttribute("totalAdmins") %> new members." class="well span3 top-block" href="#">
					<span class="icon32 icon-red icon-user"></span>
					<div>Total Admins</div>
					<div><%=session.getAttribute("totalAdmins") %></div>
					<span class="notification"><%=session.getAttribute("totalAdmins") %></span>
				</a>
				<a data-rel="tooltip" title="<%=session.getAttribute("totalUsers") %> new members." class="well span3 top-block" href="#">
					<span class="icon32 icon-red icon-user"></span>
					<div>Total Users</div>
					<div><%=session.getAttribute("totalUsers") %></div>
					<span class="notification"><%=session.getAttribute("totalUsers") %></span>
				</a>
			</div>
			
			<div class="row-fluid">
				<div class="box span12">
					<div class="box-header well">
						<h2><i class="icon-info-sign"></i> Introduction</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<p align="justify"><b>T</b>he Gurgaon is a financial and industrial city situated in the National Capital Region near the Indian capital New Delhi in the state of Haryana. Located 19.9 miles south-west of New Delhi, Gurgaon has a population of 1,514,432.</p>
						
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<%
				if(request.getParameter("mypage")!=null){
					String mypage = request.getParameter("mypage");
					mypage+=".jsp";
			%>
			<jsp:include page="<%=mypage%>"></jsp:include>
			<%
				}
			%>
		  
       
					<!-- content ends -->
			</div><!--/#content.span10-->
				</div><!--/fluid-row-->
				
		<hr>

		<div class="modal hide fade" id="myModal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>Settings</h3>
			</div>
			<div class="modal-body">
				<p>Here settings can be configured...</p>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">Close</a>
				<a href="#" class="btn btn-primary">Save changes</a>
			</div>
		</div>

		<footer>
			<p class="pull-left">&copy; <a href="AdminLoginServlet" target="_blank">Smart City | Gurgaon</a> 2015</p>
			<p class="pull-right">Designed by: <a href="https://www.facebook.com/vikrant.choudhary.75839">Vikrant Choudhary</a></p>
		</footer>
		
	</div><!--/.fluid-container-->

	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<!-- jQuery -->
	<script src="js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
	<script src="js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="js/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='js/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='js/jquery.dataTables.min.js'></script>

	<!-- chart libraries start -->
	<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.min.js"></script>
	<script src="js/jquery.flot.pie.min.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="js/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="js/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="js/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="js/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="js/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="js/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="js/charisma.js"></script>
	
		
</body>
<% } else {
		response.sendRedirect("AdminLogin.jsp");
}
	%>
</html>
