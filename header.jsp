<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<header id="header">
			<div class="col-md-2 col-xs-2" id="logo">
				<a href="#"> <img src="images/logo.png">
				</a>
			</div>
			<!-- logo -->
			<div class="col-md-8 col-xs-8">
				<div class="header-menu">
					<ul>

						<li id="menu-item-20"
							class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-12 current_page_item menu-item-20 active "><a
							href="${pageContext.request.contextPath}/QuestionController?flag=loadansweredquestion">Home</a></li>

						<ul class="sub-menu">
						</ul>

					</ul>
				</div>
				<!-- menu -->
				<div class="header-search-wrapper">
					<section class="buttonset">
					<button id="showLeftPush">
						<i class="fa fa-question"></i>
					</button>
					<button id="showRightPush">
						<i class="fa fa-bar-chart-o"></i>
					</button>
					</section>
					<form id="header_search" method="GET"
						action="http://www.enginethemes.com/demo/qaengine"
						class="disable-mobile">
						<input type="text" name="keyword" value=""
							placeholder="Enter Keywords" autocomplete="off" /> <i
							class="fa fa-search"></i>
						<div id="search_preview" class="search-preview empty"></div>
					</form>
				</div>
				<!-- search -->
			</div>
			<div class="col-md-2 col-xs-2 btn-group header-avatar ">
				<span class="expand dropdown-toggle" type="span"
					data-toggle="dropdown"> <a href="javascript:void(0)"
					class="dropdown-account "> <span class="avatar"><img
							itemprop="image" src="images/128.jpg" class="avatar" alt="" /></span>
							 <span>Engine Admin Demo</span> 
				</a>
				</span>
<!-- 				<ul class="dropdown-menu dropdown-profile"> -->
<!-- 					<li><a href="#"> <i class="fa fa-user"></i> User Profile -->
<!-- 					</a></li> -->
<!-- 					<li><a href="javascript:void(0)" -->
<!-- 						class="open-edit-profile edit_profile"> <i class="fa fa-cog"></i> -->
<!-- 							User Settings -->
<!-- 					</a></li> -->
					<li><a href="${pageContext.request.contextPath}/AuthenticationFilter?flag=logout"> <i class="fa fa-power-off"></i> Log out
					</a></li>
<!-- 				</ul> -->
			</div>
			<!-- avatar --> </header>
		</div>
	</div>
	<!-- END HEADER -->

</body>
</html>