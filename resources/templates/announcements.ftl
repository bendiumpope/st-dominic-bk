<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">

		<title>Saint Dominics</title>

		<!-- Loading third party fonts -->
		<link href="static/fonts/novecento-font/novecento-font.css" rel="stylesheet" type="text/css">
		<link href="static/fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="static/css/style.css">

		<!--[if lt IE 9]>
		<script src="static/js/ie-support/html5.js"></script>
		<script src="static/js/ie-support/respond.js"></script>
		<![endif]-->

	</head>


	<body>
		<div class="site-content">
			<header class="site-header">
				<div class="container">
					<a href="/" class="branding">
						<h1 class="site-title">SAINT DOMINICS CATHOLIC CHURCH</h1>
					</a>

					<div class="main-navigation">
						<button class="menu-toggle"><i class="fa fa-bars"></i> Menu</button>
						<ul class="menu">
							<li class="menu-item"><a href="/">Home <small>we welcome you</small></a></li>
							<li class="menu-item"><a href="/priests">Priests <small>Our old priests</small></a></li>
							<li class="menu-item current-menu-item"><a href="/announcements">Announcements <small>Get latest informations</small></a></li>
							<li class="menu-item"><a href="activities">Activities<small>mass and meetings</small></a></li>
							<li class="menu-item"><a href="/members">Members <small>sharing God's Love</small></a></li>
							<#if user??>
							<li class="menu-item"><a href="/users">User<small>see admin users</small></a></li>
							<li class="menu-item"><a href="/logout">Signout<small>click to signout</small></a></li>
							</#if>
						</ul>
					</div>

					<div class="mobile-navigation"></div>
				</div>
			</header> <!-- .site-header -->

			<div class="page-head" data-bg-image="static/images/page-head-1.jpg">
				<div class="container">
					<h2 class="page-title"><a href="/addannouncement">ANNOUNCEMENTS</a></h2>
				</div>
			</div>

			<main class="main-content">
				<div class="fullwidth-block">
					<div class="container">
						<div class="row">
							<div class="content col-md-8">
								<h2 class="section-title">Upcoming Programs</h2>
								<ul class="seremon-list large">
								<#if announcement?? && (announcement?size > 0)>
                                    <#list announcement as announcement>
									<li>
										<img src="static/images/thumb-1-120.png" alt="">
										<div class="seremon-detail">
											<h3 class="seremon-title"><a href="#">${announcement.title}</a></h3>
											<div class="seremon-meta">
												<div class="pastor"><i class="fa fa-user"></i> ${announcement.name}</div>
												<div class="date"><i class="fa fa-calendar"></i> ${announcement.announcement_date}</div>
											</div>
											<p>${announcement.message}</p>
											<#if user??>
											    <p class="pastor"><a href="#">Delete</a></p>
											</#if>
										</div>
									</li>
									</#list>
								</#if>
									<li>
										<img src="static/images/thumb-2-120.jpg" alt="">
										<div class="seremon-detail">
											<p>No Announcements currently</p>
										</div>
									</li>
								</ul>
							</div>
							<div class="sidebar col-md-3 col-md-offset-1">
								<div class="widget">
									<h3 class="widget-title">Gallery updates</h3>

									<div class="galery-thumb">
										<a href="#"><img src="static/images/gallery-thumb-1.jpg" alt=""></a>
										<a href="#"><img src="static/images/gallery-thumb-2.jpg" alt=""></a>
										<a href="#"><img src="static/images/gallery-thumb-3.jpg" alt=""></a>
										<a href="#"><img src="static/images/gallery-thumb-4.jpg" alt=""></a>
										<a href="#"><img src="static/images/gallery-thumb-5.jpg" alt=""></a>
										<a href="#"><img src="static/images/gallery-thumb-6.jpg" alt=""></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main> <!-- .main-content -->
			<footer class="site-footer">
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<div class="widget">
								<h3 class="widget-title">Our address</h3>
								<p>Saint Dominics Catholic Church Birnin Kebbi is located at Rafin Atiku Area
								Shiyar Sarakuna Birnin Kebbi, Kebbi State.</p>
								<ul class="address">
									<li><i class="fa fa-map-marker"></i> St Dominics Catholic Church Birnin Kebbi</li>
									<li><i class="fa fa-phone"></i> +234-8068681904</li>
									<li><i class="fa fa-envelope"></i> dikachi.benedict@gmail.com</li>
								</ul>
							</div>
						</div>
						<div class="col-md-4">
							<div class="widget">

							</div>
						</div>
						<div class="col-md-4">
							<div class="widget">
								<h3 class="widget-title">Contact form</h3>
								<form action="#" class="contact-form">
									<div class="row">
										<div class="col-md-6"><input type="text" placeholder="Your name..."></div>
										<div class="col-md-6"><input type="text" placeholder="Email..."></div>
									</div>

									<textarea name="" placeholder="Your message..."></textarea>
									<div class="text-right"><input type="submit" value="Send message"></div>

								</form>
							</div>
						</div>
					</div>

				</div>
			</footer>

		</div>


		<script src="static/js/jquery-1.11.1.min.js"></script>
		<script src="static/js/plugins.js"></script>
		<script src="static/js/app.js"></script>

	</body>

</html>