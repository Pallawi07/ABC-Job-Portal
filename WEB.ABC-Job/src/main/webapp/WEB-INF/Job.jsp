<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="/resources/CSS/navigation_jobs.css">
<link rel="stylesheet" href="/resources/CSS/jobs.css">

<title>Register a Job</title>
</head>

<body>

	<div class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid">
			<nav>
				<ul id="menu" class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-items"><a href="main_page.html"><img
							src="/resources/Images/logo_u2.png" alt="Logo" id="logo_image"></a></li>
					<span class="main_menu" id="logo_name"><b>ABC Jobs Pte
							Ltd</b></span>
					<div class="cont_1">
						<li class="main_menu"><a href="discover.html">Discover</a></li>
						<li class="main_menu"><a href="jobs.html">Jobs</a></li>
						<li class="main_menu"><a href="people.html">People</a></li>
						<li class="main_menu"><a href="contact.html">Contact Us</a></li>
						<li class="main_menu"><a href="about.html">About Us</a></li>
					</div>
				</ul>
			</nav>
		</div>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="col-md-3" id="cont_1">
			<form action="/createjobs" method="get">
				<button class="btn btn-primary" value="submit" id="btn_1">Create
					New Job</button>
			</form>
		</div>

		<div class="col-md-3" id="cont_1">
			<form action="/viewjobs" method="get">
				<button class="btn btn-primary" value="submit" id="btn_1">View all Job</button>
			</form>
		</div>
	</div>

	<div class="container"
		style="background-color: #efefef; margin-top: 5em; border-radius: 10px;">
		<footer class="py-3 my-4">
			<ul class="nav justify-content-center border-bottom pb-3 mb-3">
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">Home</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">About Us</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">Jobs</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">Contact Us</a></li>
			</ul>
			<p class="text-center text-muted">&copy; 2023 ABC Community
				Portal Company, Inc</p>
		</footer>
	</div>

</body>
</html>