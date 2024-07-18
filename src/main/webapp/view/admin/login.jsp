<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<title>Admin Console</title>
<!-- Bootstrap core CSS -->
<link href="admin/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/css/font-awesome.min.css" rel="stylesheet">
<link href="admin/css/style.css" rel="stylesheet">
<link href="admin/css/nav.css" rel="stylesheet">
<link href="admin/css/global.css" rel="stylesheet">
<link href="admin/css/authentication.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap"
	rel="stylesheet">


</head>
<body>

	<section id="autlog">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="autlog_1">
						<a class="colo_4" href="${pageContext.request.contextPath }/home"
							style="font-size: 20px"> <img alt=""
							src="admin/img/back-arrow.png">BACK TO HOME
						</a>
						<h2 class="text-center mb-4">
							<a class="colo_4"
								href="${pageContext.request.contextPath }/login">Login Panel</a>
						</h2>
						<div class="autlog_1i bg-white"
							style="width: 40%; padding: 40px; margin-left: auto; margin-right: auto; border-radius: 5px;">
							<h5 class="mb-3">
								Log in <span class="float-end text_13 normal mt-1">or <a
									class="colo_4"
									href="${pageContext.request.contextPath }/register">Create
										an account</a></span>
							</h5>
							<input class="form-control" type="email"
								placeholder="Email address"> <input
								class="form-control mt-3" type="email" placeholder="Password">
							<div class="d-flex justify-content-between mt-4">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										checked="checked" id="remember"> <label
										class="form-check-label" for="remember"> <span
										class="bold colo_8 font_14">Remember Me</span>
									</label>
								</div>
								<a href="#" class="colo_4 text_13">Forgot Password?</a>
							</div>
							<button class="btn btn-primary d-block w-100 mt-3 bold"
								type="submit" name="submit">Log in</button>
							<h6 class="text-center mt-3 normal colo_1 text_13 behalf">or
								log in with</h6>
							<div class="autlog_1i1 row mt-3">
								<div class="col-md-6">
									<div class="autlog_1i1l text-center">
										<h6 class="d-block mb-0">
											<a class="google_btn d-block" href="#"><i
												style="vertical-align: middle; font-size: 20px; margin-right: 3px;"
												class="fa fa-google-plus"></i> google</a>
										</h6>
									</div>
								</div>
								<div class="col-md-6">
									<div class="autlog_1i1l text-center">
										<h6 class="d-block mb-0">
											<a class="fb_btn d-block" href="#"><i
												style="vertical-align: middle; font-size: 20px; margin-right: 3px;"
												class="fa fa-facebook-square"></i> facebook</a>
										</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<script src="js/bootstrap.bundle.min.js"></script>

	</script>
	<script src="js/global.js"></script>


</body>
</html>