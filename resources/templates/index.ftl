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
							<li class="menu-item current-menu-item"><a href="/">Home <small>we welcome you</small></a></li>
							<li class="menu-item"><a href="/priests">Priests <small>Our old priests</small></a></li>
							<li class="menu-item"><a href="/announcements">Announcements <small>Get latest infomations</small></a></li>
							<li class="menu-item"><a href="/activities">Activities<small>mass and meetings</small></a></li>
							<li class="menu-item"><a href="/members">Members <small>sharing God's Love</small></a></li>
							<#if user??>
							<li class="menu-item"><a href="/users">User<small>see admin users</small></a></li>
							<li class="menu-item"><a href="/logout">Logout<small>Click to Logout</small></a></li>
                            </#if>
						</ul>
					</div>

					<div class="mobile-navigation"></div>
				</div>
			</header> <!-- .site-header -->

			<div class="hero">
				<div class="slides">
					<li data-bg-image="static/images/priests2.jpg" class="imageOpacity">
						<div class="container">
							<div class="slide-content">
								<small class="slide-subtitle"></small>
								<h2 class="slide-title"></h2>
							</div>
						</div>
					</li>
					<li data-bg-image="static/images/st_dominics/carossel/choir.jpg">
						<div class="container">
							<div class="slide-content">
								<small class="slide-subtitle"></small>
								<h2 class="slide-title"></h2>
							</div>
						</div>
					</li>
					<li data-bg-image="static/images/st_dominics/carossel/bish.jpg">
						<div class="container">
							<div class="slide-content">
								<small class="slide-subtitle"></small>
								<h2 class="slide-title"></h2>
							</div>
						</div>
					</li>
					<li data-bg-image="static/images/st_dominics/carossel/fathers2.jpg">
						<div class="container">
							<div class="slide-content">
								<small class="slide-subtitle"></small>
								<h2 class="slide-title"></h2>
							</div>
						</div>
					</li>
					<li data-bg-image="static/images/st_dominics/carossel/fathers3.jpg">
						<div class="container">
							<div class="slide-content">
								<small class="slide-subtitle"></small>
								<h2 class="slide-title"></h2>
							</div>
						</div>
					</li>
					<li data-bg-image="static/images/st_dominics/carossel/fathers4.jpg">
						<div class="container">
							<div class="slide-content">
								<small class="slide-subtitle"></small>
								<h2 class="slide-title"></h2>
							</div>
						</div>
					</li>
					<li data-bg-image="static/images/st_dominics/carossel/fathers5.jpg">
						<div class="container">
							<div class="slide-content">
								<small class="slide-subtitle"></small>
								<h2 class="slide-title"></h2>
							</div>
						</div>
					</li>
					<li data-bg-image="static/images/st_dominics/carossel/fathers6.jpg">
						<div class="container">
							<div class="slide-content">
								<small class="slide-subtitle"></small>
								<h2 class="slide-title"></h2>
							</div>
						</div>
					</li>
					<li data-bg-image="static/images/st_dominics/carossel/fathers7.jpg">
						<div class="container">
							<div class="slide-content">
								<small class="slide-subtitle"></small>
								<h2 class="slide-title"></h2>
							</div>
						</div>
					</li>
				</div>
			</div>

			<main class="main-content">
				<div class="fullwidth-block">
					<div class="container">
						<h2 class="section-title">MEET OUR LOVING PRIESTS</h2>

						<div class="row">
							<div class="col-md-3 col-sm-6">
								<div class="news">
									<image class="news-image" src="static/images/fr.sixtus.jpeg"></image>
									<h3 class="news-title"><a href="#">Rev. Fr. Sixtus Ladi Onuh</a></h3>
									<small class="date">Parish Priest</small>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="news">
									<image class="news-image" src="static/images/fr.aloy.jpg"></image>
									<h3 class="news-title"><a href="#">Rev. Fr. Alloysious Mario Nwoko</a></h3>
									<small class="date">Associate Priest</small>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="news">
									<image class="news-image" src="static/images/st_dominics/carossel/steven2.jpg"></image>
									<h3 class="news-title"><a href="#">Rev. Fr. Amari Steven</a></h3>
									<small class="date">Associate Priest</small>
								</div>
							</div>
						</div> <!-- .row -->
					</div> <!-- .container -->
				</div> <!-- section -->

				<div class="fullwidth-block">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<h2 class="section-title">Upcoming Activities</h2>
								<ul class="event-list">
									<li>
										<a href="#">
											<h3 class="event-title">English Mass</h3>
											<span class="event-meta">
												<span><i class="fa fa-calendar"></i>Sundays</span>
												<span><i class=""></i>6:00 A.M Prompt</span>
											</span>
										</a>
									</li>
									<li>
										<a href="#">
											<h3 class="event-title">Hausa Mass</h3>
											<span class="event-meta">
												<span><i class="fa fa-calendar"></i>Sundays</span>
												<span><i class=""></i> 9:00 A.M Prompt</span>

											</span>
										</a>
									</li>
									<li>
										<a href="#">
											<h3 class="event-title">Morning Mass</h3>
											<span class="event-meta">
												<span><i class="fa fa-calendar"></i>Everyday</span>
												<span><i class=""></i> 6:00 A.M Prompt</span>

											</span>
										</a>
									</li>
									<li>
										<a href="#">
											<h3 class="event-title">Evening Mass</h3>
											<span class="event-meta">
												<span><i class="fa fa-calendar"></i>Mon, Wed & Fri</span>
												<span><i class=""> 6:00 P.M Prompt</i></span>

											</span>
										</a>
									</li>
									<li>
										<a href="#">
											<h3 class="event-title">Office Hours</h3>
											<span class="event-meta">
												<span><i class="fa fa-calendar"></i>Everyday</span>
												<span><i class=""></i>10:00 A.M Prompt</span>

											</span>
										</a>
									</li>
									<li>
										<a href="#">
											<h3 class="event-title">Confession</h3>
											<span class="event-meta">
												<span><i class="fa fa-calendar"></i>Saturdays</span>
												<span><i class=""></i>6:00 P.M Prompt</span>

											</span>
										</a>
									</li>
								</ul>

								<div class="text-center">
									<a href="/activities" class="button">See all Activities</a>
								</div>
							</div>
							<div class="col-md-6">
								<h2 class="section-title">Latest Announcements</h2>
								<ul class="seremon-list">
								<#if announcement?? && (announcement?size > 0)>
								  <#list announcement as announcement>
									<li>
										<img src="static/images/small-thumb-1.jpg" alt="">
										<div class="seremon-detail">
											<h3 class="seremon-title"><a href="#">${announcement.title}</a></h3>
											<div class="seremon-meta">
												<div class="pastor"><i class="fa fa-user"></i> ${announcement.name}</div>
												<div class="date"><i class="fa fa-calendar"></i> ${announcement.announcement_date}</div>
											</div>
										</div>
									</li>
								  </#list>
								</#if>
								</ul>

								<div class="text-center">
									<a href="/announcements" class="button">See all Announcements</a>
								</div>
							</div>
						</div> <!-- .row -->
					</div> <!-- .container -->
				</div> <!-- section -->
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