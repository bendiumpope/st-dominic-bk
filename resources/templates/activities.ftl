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
							<li class="menu-item"><a href="/announcements">Announcements <small>Get latest infomations</small></a></li>
							<li class="menu-item current-menu-item"><a href="/activities">Activities<small>mass and meetings</small></a></li>
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
					<h2 class="page-title">Church Activities</h2>
				</div>
			</div>

			<main class="main-content">
				<div class="fullwidth-block">
					<div class="container">
						<div class="row">
							<div class="content col-md-8">
								<ul class="event-list large">
									<li>
										<h3 class="event-title"><a href="#">sunday mass</a></h3>
										<span class="event-meta">
											<span><i class="fa fa-calendar"></i>06 dec 2020</span>
											<span><i class="fa fa-map-marker"></i>Birnin Kebbi</span>
										</span>
										<p>Two (2) Masses holds at St. Dominic's Catholic Church every Sunday</p>
										<p>English Mass: 6:00 A.M Prompt</p>
										<p>Hausa Mass: 9:00 A.M Prompt</p>
									</li>
									<li>
										<h3 class="event-title"><a href="#">Week day mass</a></h3>
										<span class="event-meta">
											<span><i class="fa fa-calendar"></i>06 dec 2020</span>
											<span><i class="fa fa-map-marker"></i> birnin Kebbi</span>
										</span>
										<p>Morning Masses holds at St. Dominic's Catholic Church every day.</p>
										<p>Everyday: 6:00 A.M Prompt</p>
										<p>Evening Masses holds at St. Dominic's Catholic Church on Mondays, Wednesdays and Fridays.</p>
										<p>Time : 6:00 P.M Prompt</p>
									</li>
									<li>
										<h3 class="event-title"><a href="#">Office Hours</a></h3>
										<span class="event-meta">
											<span><i class="fa fa-calendar"></i>06 dec 2020</span>
											<span><i class="fa fa-map-marker"></i> birnin Kebbi</span>
										</span>
										<p>Our Priests are always available to see you in the love of Christ.
										Feel free to come arround to the office for official and spiritual
										purposes at office hours everyday.</p>
										<p>Morning : 10:00 A.M - 12:00 P.M Prompt</p>
										<p>Evening : 4:00 P.M - 5:30 P.M Prompt</p>
									</li>
									<li>
										<h3 class="event-title"><a href="#">Confession</a></h3>
										<span class="event-meta">
											<span><i class="fa fa-calendar"></i>06 dec 2020</span>
											<span><i class="fa fa-map-marker"></i>birnin Kebbi</span>
										</span>
										<p>Our Priests are always available to hear your confessions everyday especially after
										week day masses and officially on saturdays</p>
										<p>Saturdays : 6:00 P.M Prompt</p>
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