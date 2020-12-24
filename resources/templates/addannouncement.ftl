<!DOCTYPE html>
<html lang="en">
<head>
	<title>Create Form</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="static/form/image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/form/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/form/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/form/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/form/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/form/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/form/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/form/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/form/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/form/css/util.css">
	<link rel="stylesheet" type="text/css" href="static/form/css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<div class="container-contact100">
		<div class="wrap-contact100">
			<form method="post" action="/addannouncement" class="contact100-form validate-form">
                    <input type="hidden" name="date" value="${date?c}" />
                    <input type="hidden" name="code" value="${code}" />
                    <input type="hidden" name="action" value="add">
				<span class="contact100-form-title">
					Add Announcement
				</span>

				<div class="wrap-input100 validate-input" data-validate="Announcer Name is required">
					<input class="input100" id="name" type="text" name="name" placeholder="Announcer Name:">
					<label class="label-input100" for="name">
						<span class="lnr lnr-user"></span>
					</label>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Announcement Date is required">
					<input class="input100" id="announcementDate" type="text" name="announcementDate" placeholder="Date Format: 21st Oct 2020">
					<label class="label-input100" for="announcementDate">
						<span class="lnr lnr-phone-handset"></span>
					</label>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Title is required">
					<input class="input100" id="title" type="text" name="title" placeholder="Title: ">
					<label class="label-input100" for="title">
						<span class="lnr lnr-phone-handset"></span>
					</label>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<textarea class="input100" name="announce" id="announce" placeholder="Your message..."></textarea>
				</div>

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							Announce
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="static/form/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="static/form/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="static/form/vendor/bootstrap/js/popper.js"></script>
	<script src="static/form/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="static/form/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="static/form/vendor/daterangepicker/moment.min.js"></script>
	<script src="static/form/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="static/form/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="static/form/js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

</body>
</html>