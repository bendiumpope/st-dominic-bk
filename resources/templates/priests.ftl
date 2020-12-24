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
		<link rel="stylesheet" type="text/css" href="static/css/gallery.css">

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
							<li class="menu-item current-menu-item"><a href="/priests">Priests <small>Our old priests</small></a></li>
							<li class="menu-item"><a href="/announcements">Announcements <small>Get latest infomations</small></a></li>
							<li class="menu-item"><a href="/activities">Activities<small>mass and meetings</small></a></li>
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
					<h2 class="page-title">Priests</h2>
				</div>
			</div>

			<main class="main-content">
				<div class="fullwidth-block">
					<div class="container">
						<div class="row">
							<div class="content col-md-8">
								<h2 class="section-title"></h2>
								<div class="row">
									<div class="family">
										<img src="static/images/fr.sixtus.jpeg" alt="" class="family-image">
										<h3 class="family-name">Rev. Fr. Sixtus Ladi Onuh</h3>
									</div>
									<div class="family">
										<img src="static/images/fr.aloy.jpg" alt="" class="family-image">
										<h3 class="family-name">Rev. Fr. Alloysious Mario Nwoko</h3>
									</div>
									<div class="family">
										<img src="static/images/st_dominics/carossel/steven2.jpg" alt="" class="family-image">
										<h3 class="family-name">Rev. Fr. Amari Steven</h3>
									</div>
								</div>
								<div class="row">
									<div class="family">
										<img src="static/images/st_dominics/ourpriests/fr.atado.jpg" alt="" class="family-image">
										<h3 class="family-name">Very Rev. Fr. Dr. Joseph Atado</h3>
									</div>
									<div class="family">
										<img src="static/images/st_dominics/ourpriests/fr.keke.jpg" alt="" class="family-image">
										<h3 class="family-name">Very Rev. Fr. Joseph Keke</h3>
									</div>
									<div class="family">
										<img src="static/images/st_dominics/ourpriests/fr.cyril.jpg" alt="" class="family-image">
										<h3 class="family-name">Very Rev. Fr. Cyril Ibeh</h3>
									</div>
								</div>
								<div class="row">
									<div class="family">
										<img src="static/images/st_dominics/ourpriests/fr.nuhu.jpg" alt="" class="family-image">
										<h3 class="family-name">Very Rev. Fr. Nuhu Iliya</h3>
									</div>
									<div class="family">
										<img src="static/images/st_dominics/ourpriests/fr.chukwubueze.jpg" alt="" class="family-image">
										<h3 class="family-name">Rev Fr. Chukwubueze</h3>
									</div>
									<div class="family">
										<img src="static/images/st_dominics/ourpriests/fr.cyracus.jpg" alt="" class="family-image">
										<h3 class="family-name">Rev Fr. Cyracus Onwuharaonye</h3>
									</div>
								</div>
								<div class="row">
									<div class="family">
										<img src="static/images/st_dominics/ourpriests/fr.musa.jpg" alt="" class="family-image">
										<h3 class="family-name">Rev. Fr. Musa Maiyaki</h3>
									</div>
									<div class="family">
										<img src="static/images/st_dominics/ourpriests/fr.julius.jpg" alt="" class="family-image">
										<h3 class="family-name">Rev Fr. Julius</h3>
									</div>
									<div class="family">
										<img src="static/images/st_dominics/ourpriests/fr.army.jpg" alt="" class="family-image">
										<h3 class="family-name">Rev Fr. </h3>
									</div>
								</div>
								<div class="row">
									<div class="family">
										<img src="static/images/st_dominics/ourpriests/fr.festus.jpg" alt="" class="family-image">
										<h3 class="family-name">Rev. Fr. Festus Ajebo</h3>
									</div>
								</div>

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