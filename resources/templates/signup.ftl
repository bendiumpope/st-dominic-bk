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
			<form method="post" action="/create" class="contact100-form validate-form">
				<span class="contact100-form-title">
					CREATE USER
				</span>
                    <#if error??>
                        <h5 class="errorColor">${error}<br><br></h5>
                    </#if>

				<div class="wrap-input100 validate-input" data-validate="Username is required">
					<input class="input100" id="name" type="text" name="name" placeholder="Name">
					<label class="label-input100" for="name">
						<span class="lnr lnr-user"></span>
					</label>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Phone is required">
					<input class="input100" id="phone" type="text" name="phone" placeholder="Phone">
					<label class="label-input100" for="phone">
						<span class="lnr lnr-phone-handset"></span>
					</label>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Password is required">
					<input class="input100" id="password" type="password" name="password" placeholder="Password">
					<label class="label-input100" for="password">
						<span class="lnr lnr-phone-handset"></span>
					</label>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Confirm Password is required">
					<input class="input100" id="confirmPassword" type="password" name="confirmPassword" placeholder="confirmPassword">
					<label class="label-input100" for="confirmPassword">
						<span class="lnr lnr-phone-handset"></span>
					</label>
				</div>
				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							Create
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
